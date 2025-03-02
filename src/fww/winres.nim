import std/algorithm
import fwwunicode

const
  RT_ICON* = 3
  RT_MANIFEST* = 24
  RT_GROUP_ICON* = 14

  LANG_NEUTRAL* = 0
  SUBLANG_NEUTRAL* = 0

  LANG_ENGLISH* = 0x09
  SUBLANG_ENGLISH_US* = 0x01

func makeLangId*(primaryLang, subLang: uint16): uint16 {.inline, raises: [].} =
  result = primaryLang or (subLang shl 10)

type
  ResEntryKind* = enum
    entryData
    entryDirectory
  ResNameEntry* = object
    name*: string
    kind*: ResEntryKind
    data*: string
    directory*: ResDirectory
  ResIdEntry* = object
    id*: uint32
    kind*: ResEntryKind
    data*: string
    directory*: ResDirectory
  ResDirectory* = ref object
    nameEntries*: seq[ResNameEntry]
    idEntries*: seq[ResIdEntry]

func sortEntries*(self: ResDirectory) {.raises: [].} =
  func cmpNameEntry(a, b: ResNameEntry): int {.nimcall, raises: [].} =
    cmp(a.name, b.name)
  func cmpIdEntry(a, b: ResIdEntry): int {.nimcall, raises: [].} =
    cmp(a.id, b.id)
  sort(self.nameEntries, cmpNameEntry)
  sort(self.idEntries, cmpIdEntry)

func getOrCreateSubdirectory*(self: ResDirectory; name: string): ResDirectory {.raises: [ValueError].} =
  # First look for existing entry
  for ent in self.nameEntries:
    if ent.name == name:
      if ent.kind == entryData:
        raise (ref ValueError)(msg: "NameEntry already defined as entryData: " & name)
      return ent.directory

  # Otherwise, create new entry
  new(result)
  self.nameEntries.add ResNameEntry(name: name, kind: entryDirectory, directory: result)

func getOrCreateSubdirectory*(self: ResDirectory; id: uint32): ResDirectory {.raises: [ValueError].} =
  # First look for existing entry
  for ent in self.idEntries:
    if ent.id == id:
      if ent.kind == entryData:
        raise (ref ValueError)(msg: "IdEntry already defined as entryData: " & $id)
      return ent.directory

  # Otherwise, create new entry
  new(result)
  self.idEntries.add ResIdEntry(id: id, kind: entryDirectory, directory: result)

func putData*(self: ResDirectory; name: string; data: sink string) {.raises: [ValueError].} =
  for ent in mitems(self.nameEntries):
    if ent.name == name:
      if ent.kind == entryDirectory:
        raise (ref ValueError)(msg: "NameEntry already defined as entryDirectory: " & name)
      ent.data = data
      return

  # Create new entry
  self.nameEntries.add ResNameEntry(name: name, kind: entryData, data: data)

func putData*(self: ResDirectory; id: uint32; data: sink string) {.raises: [ValueError].} =
  for ent in mitems(self.idEntries):
    if ent.id == id:
      if ent.kind == entryDirectory:
        raise (ref ValueError)(msg: "IdEntry already defined as entryDirectory: " & $id)
      ent.data = data
      return

  # Create new entry
  self.idEntries.add ResIdEntry(id: id, kind: entryData, data: data)

func putResource*(self: ResDirectory; kind, ident, lang: uint32; data: sink string) {.raises: [ValueError].} =
  self.getOrCreateSubdirectory(kind).getOrCreateSubdirectory(ident).putData(lang, data)

func putResource*(self: ResDirectory; kind: uint32; ident: string; lang: uint32; data: sink string) {.raises: [ValueError].} =
  self.getOrCreateSubdirectory(kind).getOrCreateSubdirectory(ident).putData(lang, data)

func putResource*(self: ResDirectory; kind, ident: string; lang: uint32; data: sink string) {.raises: [ValueError].} =
  self.getOrCreateSubdirectory(kind).getOrCreateSubdirectory(ident).putData(lang, data)

func packU16LE(dst: var string; idx: int; value: uint16) {.raises: [].} =
  var idx = idx
  dst[idx] = cast[char](value); inc idx
  dst[idx] = cast[char](value shr 8)

func packU32LE(dst: var string; idx: int; value: uint32) {.raises: [].} =
  var idx = idx
  dst[idx] = cast[char](value); inc idx
  dst[idx] = cast[char](value shr 8); inc idx
  dst[idx] = cast[char](value shr 16); inc idx
  dst[idx] = cast[char](value shr 24)

func unpackU32BE(src: openArray[char]; idx: int): uint32 {.raises: [].} =
  var idx = idx
  let c0 = src[idx]; inc idx
  let c1 = src[idx]; inc idx
  let c2 = src[idx]; inc idx
  let c3 = src[idx]; inc idx
  result = (c0.uint32 shl 24) or (c1.uint32 shl 16) or (c2.uint32 shl 8) or (c3.uint32)

func addU16LE(dst: var string; value: uint16) {.raises: [].} =
  dst.add cast[char](value)
  dst.add cast[char](value shr 8)

func addU32LE(dst: var string; value: uint32) {.raises: [].} =
  dst.add cast[char](value)
  dst.add cast[char](value shr 8)
  dst.add cast[char](value shr 16)
  dst.add cast[char](value shr 24)

const
  CoffStartOfRsrcDataLoc = 60
type
  CoffData = object
    node: ResDirectory
    entIsId: bool
    entIdx: int
    loc: int # location to backpatch OffsetToData

func toCoffRecur(node: ResDirectory; o: var string; oData: var seq[CoffData]) =
  assert((len(o) and 3) == 0)
  node.sortEntries()

  o.addU32LE(0) # characteristics
  o.addU32LE(0) # timeDateStamp
  o.addU16LE(0) # majorVersion
  o.addU16LE(0) # minorVersion
  o.addU16LE(node.nameEntries.len.uint16) # numberOfNamedEntries
  o.addU16LE(node.idEntries.len.uint16) # numberOfIdEntries

  # Since directory entries must be written contiguously,
  # we handle the entries in two passes.
  # In the first pass, we write the entries.
  # In the second pass, we write their subdirectories/data recursively and backpatch their locations into the entries.

  # First pass
  let nameEntriesStartLoc = o.len
  for ent in node.nameEntries:
    o.addU32LE(0) # the name pointer itself will be backpatched in pass 1.5
    o.addU32LE(0) # to backpatch later
  let idEntriesStartLoc = o.len
  for ent in node.idEntries:
    o.addU32LE(ent.id)
    o.addU32LE(0) # to backpatch later

  # Pass 1.5: write out the strings of the names for nameEntries
  var entryIdx = 0
  for ent in node.nameEntries:
    let entryLoc = nameEntriesStartLoc + entryIdx * 8
    # loc of name relative to start of `.rsrc` data
    var nameLoc: uint32 = o.len.uint32 - CoffStartOfRsrcDataLoc.uint32
    assert((nameLoc and 3) == 0, "must be 4-byte aligned")
    nameLoc = nameLoc or (1'u32 shl 31) # MSB set to signify name entry
    packU32LE(o, entryLoc, nameLoc) # backpatch nameLoc
    # Write out the name
    var name_wtf16 = wtf8ToWtf16Seq(ent.name)
    o.addU16LE(name_wtf16.len.uint16)
    for c in name_wtf16:
      o.addU16LE(c)
    while (o.len and 3) != 0: # pad to 4-byte
      o.add '\0'
    inc entryIdx

  # Second pass
  entryIdx = 0
  for ent in node.nameEntries:
    let entryLoc = nameEntriesStartLoc + entryIdx * 8
    # loc of data relative to start of `.rsrc` data
    var dataLoc: uint32 = o.len.uint32 - CoffStartOfRsrcDataLoc.uint32
    if ent.kind == entryDirectory:
      dataLoc = dataLoc or (1'u32 shl 31) # MSB set to signify entryDirectory
    packU32LE(o, entryLoc + 4, dataLoc) # backpatch dataLoc
    case ent.kind
    of entryDirectory:
      toCoffRecur(ent.directory, o, oData)
    of entryData:
      let offsetToDataLoc = o.len
      o.addU32LE(0) # OffsetToData (to backpatch later)
      o.addU32LE(ent.data.len.uint32) # Size
      o.addU32LE(0) # CodePage (use Windows ANSI code page)
      o.addU32LE(0) # reserved
      oData.add CoffData(node: node, entIsId: false, entIdx: entryIdx, loc: offsetToDataLoc)
    inc entryIdx

  entryIdx = 0
  for ent in node.idEntries:
    let entryLoc = idEntriesStartLoc + entryIdx * 8
    # loc of data relative to start of `.rsrc` data
    var dataLoc: uint32 = o.len.uint32 - CoffStartOfRsrcDataLoc.uint32
    if ent.kind == entryDirectory:
      dataLoc = dataLoc or (1'u32 shl 31) # MSB set to signify entryDirectory
    packU32LE(o, entryLoc + 4, dataLoc) # backpatch dataLoc
    case ent.kind
    of entryDirectory:
      toCoffRecur(ent.directory, o, oData)
    of entryData:
      let offsetToDataLoc = o.len
      o.addU32LE(0) # OffsetToData (to backpatch later)
      o.addU32LE(ent.data.len.uint32) # Size
      o.addU32LE(0) # CodePage (use Windows ANSI code page)
      o.addU32LE(0) # reserved
      oData.add CoffData(node: node, entIsId: true, entIdx: entryIdx, loc: offsetToDataLoc)
    inc entryIdx

func toCoff*(root: ResDirectory; machine: uint16): string =
  # COFF header
  result.addU16LE(machine)
  result.addU16LE(1) # numberOfSections
  result.addU32LE(0) # timeDateStamp
  const PointerToSymbolTableLoc = 8
  result.addU32LE(0) # pointerToSymbolTable (to backpatch later)
  result.addU32LE(1) # numberOfSymbols (always one, `.rsrc`)
  result.addU16LE(0) # sizeOfOptionalHeader
  result.addU16LE(4) # characteristics (IMAGE_FILE_LINE_NUMS_STRIPPED)
  assert(len(result) == 20, "COFF header is always 20 bytes")

  # .rsrc section header
  result.add(".rsrc\0\0\0") # name
  result.addU32LE(0) # VirtualSize (zero for object files)
  result.addU32LE(0) # VirtualAddress (for simplicity, zero for object files)
  const SizeOfRawDataLoc = 36
  result.addU32LE(0) # SizeOfRawData (to backpatch later)
  result.addU32LE(60) # PointerToRawData (always 60 because our header sizes are fixed)
  const PointerToRelocationsLoc = 44
  result.addU32LE(0) # PointerToRelocations (to backpatch later)
  result.addU32LE(0) # PointerToLinenumbers (0, we don't have line numbers)
  const NumberOfRelocationsLoc = 52
  result.addU16LE(0) # NumberOfRelocations (to backpatch later)
  result.addU16LE(0) # NumberOfLinenumbers
  result.addU32LE(0x40 or 0x300000) # Characteristics (IMAGE_SCN_CNT_INITIALIZED_DATA | IMAGE_SCN_ALIGN_4BYTES)
  assert(len(result) == 20 + 40, "section header is always 40 bytes")
  assert(len(result) == CoffStartOfRsrcDataLoc)

  # Recurse through tree
  var data: seq[CoffData]
  toCoffRecur(root, result, data)

  # Write data and backpatch
  for dat in data:
    # ensure data begins on 4-byte alignment
    while (len(result) and 3) != 0:
      result.add '\0'
    # backpatch location of data relative to `.rsrc` data start
    let dataLoc = result.len.uint32 - CoffStartOfRsrcDataLoc.uint32
    packU32LE(result, dat.loc, dataLoc)
    # write the data into output stream
    if dat.entIsId: # id entry
      result.add dat.node.idEntries[dat.entIdx].data
    else: # name entry
      result.add dat.node.nameEntries[dat.entIdx].data

  # backpatch SizeOfRawData
  packU32LE(result, SizeOfRawDataLoc, uint32 result.len - CoffStartOfRsrcDataLoc)

  # Write relocation table
  #while (len(result) and 3) != 0: # pad to 4-byte
  #  result.add '\0'
  # backpatch relocation table location to PointerToRelocations
  packU32LE(result, PointerToRelocationsLoc, result.len.uint32)
  # backpatch number of relocations to NumberOfRelocations
  packU16LE(result, NumberOfRelocationsLoc, data.len.uint16)
  # Write relocation table entries
  for i, dat in data:
    result.addU32LE(uint32 dat.loc - CoffStartOfRsrcDataLoc) # r_vaddr: offset within section's raw data where the address starts
    result.addU32LE(0) # symbol index; use index zero to get rsrc base. since we are using IMAGE_REL_AMD64_ADDR32NB relocation
    result.addU16LE(3) # Type of relocation

  # Write symbol table
  # backpatch symbol location
  packU32LE(result, PointerToSymbolTableLoc, result.len.uint32)
  # Write our only symbol table entry
  result.add ".rsrc\0\0\0"
  result.addU32LE(0) # for IMAGE_SYM_CLASS_STATIC: zero means the symbol represents a section name
  result.addU16LE(1) # section one
  result.addU16LE(0) # type: not a function
  result.add cast[char](3'u8) # IMAGE_SYM_CLASS_STATIC
  result.add cast[char](0'u8) # number of aux symbols: zero

type
  MenuItem* = object
    text*: string
    submenu*: bool ## This item opens up a new submenu
    last*: bool ## Last menu item in the menu bar, drop-down menu, submenu, or shortcut menu
    id*: uint32 ## Menu item identifier

func addU16U16(dst: var seq[uint32]; a, b: uint16) {.inline, raises: [].} =
  dst.add(a.uint32 or (b.uint32 shl 16))

func packMenuTemplate*(items: openArray[MenuItem]): seq[uint32] {.raises: [].} =
  # Return a seq[uint32] because it needs to be 4-byte aligned

  # MENUEX_TEMPLATE_HEADER
  result.addU16U16(1, 4) # wVersion, wOffset
  result.add(0'u32) # dwHelpId

  # MENUEX_TEMPLATE_ITEMs...
  for x in items:
    var
      dwType = 0'u32
      dwState = 0'u32
      wFlags = 0'u16
      text_u16 = wtf8ToWtf16SeqNulTerminated(x.text)
    if x.submenu: wFlags = wFlags or 1'u16
    if x.last: wFlags = wFlags or 0x80'u16

    result.add dwType
    result.add dwState
    result.add x.id
    result.addU16U16(wFlags, text_u16[0])
    var dstIdx = 1
    while len(text_u16) - dstIdx >= 2:
      result.addU16U16(text_u16[dstIdx], text_u16[dstIdx + 1])
      inc(dstIdx, 2)
    # For submenus, a DWORD dwHelpId follows the menu text.
    var dwHelpId = 0'u32
    if dstIdx < len(text_u16):
      if x.submenu:
        result.addU16U16(text_u16[dstIdx], cast[uint16](dwHelpId))
        result.addU16U16(cast[uint16](dwHelpId shr 16), 0)
      else:
        result.addU16U16(text_u16[dstIdx], 0)
    else:
      if x.submenu:
        result.add dwHelpId

const
  PngMagicString = "\x89PNG\r\n\x1a\n"

type
  IconImageSpec* = object
    width*: int32
    height*: int32
    size*: int
    id*: uint32

func putPngIcon*(self: ResDirectory; ident: uint32; data: string): IconImageSpec {.raises: [ValueError].} =
  # Note: we are deliberately not really strict with what we accept as a png,
  # as we assume that users are using sane PNG encoders.
  # We just want to catch common errors (e.g. a non-RGBA PNG)
  # As long as it contains the PNG magic, we assume it is a valid PNG.
  if len(data) < (len(PngMagicString) + 25) or data[0..7] != PngMagicString:
    raise (ref ValueError)(msg: "not a valid PNG")
  let
    width = unpackU32BE(data, 16).int32
    height = unpackU32BE(data, 20).int32
    bitDepth = data[24].uint8
    colorType = data[25].uint8
    interlaceMethod = data[28].uint8
  if colorType != 6 or bitDepth != 8:
    raise (ref ValueError)(msg: "PNG is not RGBA8")
  if interlaceMethod != 0:
    raise (ref ValueError)(msg: "PNG has interlacing")
  result.width = width
  result.height = height
  result.size = data.len
  result.id = ident
  self.putResource(RT_ICON, ident, 0, data)

func packIconGroup*(images: openArray[IconImageSpec]): string {.raises: [ValueError].} =
  result.addU16LE(0) # idReserved
  result.addU16LE(1) # idType (1 = icon image)
  result.addU16LE(images.len.uint16) # idCount
  for ent in images:
    if not(ent.width >= 1 and ent.width <= 256):
      raise (ref ValueError)(msg: "width not in 1 .. 256: " & $ent.width)
    if not(ent.height >= 1 and ent.height <= 256):
      raise (ref ValueError)(msg: "height not in 1 .. 256: " & $ent.height)
    var
      width = ent.width
      height = ent.height
    if width == 256: width = 0
    if height == 256: height = 0
    result.add cast[char](width.uint8)
    result.add cast[char](height.uint8)
    result.add cast[char](0'u8) # bColorCount; bColorCount = 1 << (wBitCount * wPlanes); 0 if (wBitCount * wPlanes) >= 8
    result.add cast[char](0'u8) # bReserved
    result.addU16LE(1) # wPlanes
    result.addU16LE(32) # wBitCount
    result.addU32LE(ent.size.uint32) # dwBytesInRes
    result.addU16LE(ent.id.uint16) # nId

func putIconGroup*(self: ResDirectory; ident: uint32; images: openArray[IconImageSpec]) {.raises: [ValueError].} =
  self.putResource(RT_GROUP_ICON, ident, 0, packIconGroup(images))
