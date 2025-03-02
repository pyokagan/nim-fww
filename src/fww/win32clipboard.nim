## Win32 clipboard functionality
import win32result, win32wm

export win32result

# NOTE: need overflowChecks in some places
{.stackTrace:off.}

template ptrArray[T](x: ptr T): ptr UncheckedArray[T] =
  cast[ptr UncheckedArray[T]](x)

{.pragma: dllproc_KERNEL32, stdcall, gcsafe, raises: [].}
{.pragma: dllproc_USER32, stdcall, gcsafe, raises: [].}

type
  WtGLOBAL_ALLOC_FLAGS = distinct uint32 # enum
  WtBOOL = int32
  WtPOINT {.pure, bycopy.} = object
    x*: int32
    y*: int32
  WtDROPFILES {.pure, byref.} = object
    pFiles*: uint32
    pt*: WtPOINT
    fNC*: WtBOOL
    fWide*: WtBOOL
  WtCIEXYZ {.pure, byref.} = object
    ciexyzX*: int32
    ciexyzY*: int32
    ciexyzZ*: int32
  WtCIEXYZTRIPLE {.pure, byref.} = object
    ciexyzRed*: WtCIEXYZ
    ciexyzGreen*: WtCIEXYZ
    ciexyzBlue*: WtCIEXYZ
  WtBITMAPV5HEADER {.pure, byref.} = object
    bV5Size*: uint32
    bV5Width*: int32
    bV5Height*: int32
    bV5Planes*: uint16
    bV5BitCount*: uint16
    bV5Compression*: uint32
    bV5SizeImage*: uint32
    bV5XPelsPerMeter*: int32
    bV5YPelsPerMeter*: int32
    bV5ClrUsed*: uint32
    bV5ClrImportant*: uint32
    bV5RedMask*: uint32
    bV5GreenMask*: uint32
    bV5BlueMask*: uint32
    bV5AlphaMask*: uint32
    bV5CSType*: uint32
    bV5Endpoints*: WtCIEXYZTRIPLE
    bV5GammaRed*: uint32
    bV5GammaGreen*: uint32
    bV5GammaBlue*: uint32
    bV5Intent*: uint32
    bV5ProfileData*: uint32
    bV5ProfileSize*: uint32
    bV5Reserved*: uint32
  WtHANDLE = int
  WtPWSTR = ptr UncheckedArray[uint16]
  WtWIN32_ERROR = distinct uint32 # enum

const
  wcGHND {.used.} = cast[WtGLOBAL_ALLOC_FLAGS](66)
  wcGMEM_FIXED {.used.} = cast[WtGLOBAL_ALLOC_FLAGS](0)
  wcGMEM_MOVEABLE {.used.} = cast[WtGLOBAL_ALLOC_FLAGS](2)
  wcGMEM_ZEROINIT {.used.} = cast[WtGLOBAL_ALLOC_FLAGS](64)
  wcGPTR {.used.} = cast[WtGLOBAL_ALLOC_FLAGS](64)
  wcBI_BITFIELDS = cast[int32](3)

func `==`(x, y: WtGLOBAL_ALLOC_FLAGS): bool {.used, borrow.}
func `<`(x, y: WtGLOBAL_ALLOC_FLAGS): bool {.used, borrow.}
func `<=`(x, y: WtGLOBAL_ALLOC_FLAGS): bool {.used, borrow.}
func `or`(x, y: WtGLOBAL_ALLOC_FLAGS): WtGLOBAL_ALLOC_FLAGS {.used, borrow.}
func `and`(x, y: WtGLOBAL_ALLOC_FLAGS): WtGLOBAL_ALLOC_FLAGS {.used, borrow.}
func `$`(x: WtGLOBAL_ALLOC_FLAGS): string {.used, borrow.}

func `==`(x, y: WtWIN32_ERROR): bool {.used, borrow.}
func `<`(x, y: WtWIN32_ERROR): bool {.used, borrow.}
func `<=`(x, y: WtWIN32_ERROR): bool {.used, borrow.}
func `or`(x, y: WtWIN32_ERROR): WtWIN32_ERROR {.used, borrow.}
func `and`(x, y: WtWIN32_ERROR): WtWIN32_ERROR {.used, borrow.}
func `$`(x: WtWIN32_ERROR): string {.used, borrow.}

proc wpGlobalFree(hMem: int): int {.importc: "GlobalFree", dllproc_KERNEL32.}
proc wpGlobalAlloc(uFlags: WtGLOBAL_ALLOC_FLAGS; dwBytes: uint): int {.importc: "GlobalAlloc", dllproc_KERNEL32.}
proc wpGlobalLock(hMem: int): pointer {.importc: "GlobalLock", dllproc_KERNEL32.}
proc wpGlobalUnlock(hMem: int): WtBOOL {.importc: "GlobalUnlock", dllproc_KERNEL32.}
proc wpOpenClipboard(hWndNewOwner: WmHwnd): WtBOOL {.importc: "OpenClipboard", dllproc_USER32.}
proc wpCloseClipboard(): WtBOOL {.importc: "CloseClipboard", dllproc_USER32.}
proc wpEmptyClipboard(): WtBOOL {.importc: "EmptyClipboard", dllproc_USER32.}
proc wpSetClipboardData(uFormat: uint32; hMem: WtHANDLE): WtHANDLE {.importc: "SetClipboardData", dllproc_USER32.}
proc wpRegisterClipboardFormatW(lpszFormat: WtPWSTR): uint32 {.importc: "RegisterClipboardFormatW", dllproc_USER32.}
proc wpGetLastError(): WtWIN32_ERROR {.importc: "GetLastError", dllproc_KERNEL32.}

type
  Win32ClipboardMem* = object
    hMem*: int

proc `=copy`*(dst: var Win32ClipboardMem; src: Win32ClipboardMem) {.error.}

when NimMajor >= 2:
  proc `=destroy`*(self: Win32ClipboardMem) {.raises: [].} =
    if self.hMem != 0:
      discard wpGlobalFree(self.hMem)
else:
  proc `=destroy`*(self: var Win32ClipboardMem) {.raises: [].} =
    if self.hMem != 0:
      discard wpGlobalFree(self.hMem)

{.push stackTrace:off, checks:off.}
func isValidClipboardDropFiles*(rawFiles: openArray[uint16]): bool {.inline, raises: [].} =
  len(rawFiles) >= 2 and rawFiles[^1] == 0 and rawFiles[^2] == 0
{.pop.}

template makeWin32ClipboardMemImpl(aDst, aNBytes, body: untyped) =
  # Alloc mem
  let memHandle = wpGlobalAlloc(wcGMEM_MOVEABLE, uint aNBytes)
  if memHandle == 0:
    return winResultFromWin32(wpGetLastError().uint32)

  # Lock mem
  let memBytes {.inject.} = cast[ptr UncheckedArray[uint8]](wpGlobalLock(memHandle))
  if memBytes.isNil:
    let werr = wpGetLastError()
    discard wpGlobalFree(memHandle)
    return winResultFromWin32(werr.uint32)

  # Fill in mem
  body

  # Unlock mem
  discard wpGlobalUnlock(memHandle)

  if aDst != 0:
    discard wpGlobalFree(aDst)
  aDst = memHandle

proc newWin32ClipboardMem*(self: var Win32ClipboardMem; p: pointer; nbytes: int): WinResult {.raises: [].} =
  makeWin32ClipboardMemImpl(self.hMem, nbytes):
    if nbytes > 0:
      copyMem(memBytes, p, nbytes)

proc newWin32ClipboardDropFiles*(self: var Win32ClipboardMem; rawFiles: openArray[uint16]): WinResult {.raises: [].} =
  if not isValidClipboardDropFiles(rawFiles):
    return WinResult_E_INVALIDARG

  let nbytes = sizeof(WtDROPFILES) + len(rawFiles) * sizeof(uint16)
  makeWin32ClipboardMemImpl(self.hMem, nbytes):
    # Fill in mem
    let
      pDropFile = cast[ptr WtDROPFILES](memBytes[0].addr)
      pRawFiles = cast[ptr UncheckedArray[uint16]](memBytes[sizeof(WtDROPFILES)].addr)
    pDropFile[] = WtDROPFILES(pFiles: sizeof(WtDROPFILES).uint32, fWide: WtBOOL(true))
    copyMem(pRawFiles, rawFiles[0].unsafeAddr, len(rawFiles) * sizeof(uint16))

{.push stackTrace:off, checks:off.}
proc copyPixelsRgbaFlip(dst: ptr UncheckedArray[uint8]; w, h: int32; src: openArray[uint8]) {.inline, raises: [].} =
  let stride = w.int * 4
  var
    dstIdx = 0
    srcIdx = h.int * stride
  for dstY in 0 ..< h:
    dec(srcIdx, stride)
    copyMem(dst[dstIdx].addr, src[srcIdx].unsafeAddr, stride)
    inc(dstIdx, stride)
{.pop.}

proc newWin32ClipboardDibV5Rgba*(self: var Win32ClipboardMem; w, h: int32; pixels: openArray[uint8]): WinResult {.raises: [].} =
  const
    LCS_WINDOWS_COLOR_SPACE = 0x57696E20'u32
  let
    pixelsNBytes = w.int * h.int * 4
    nbytes = sizeof(WtBITMAPV5HEADER) + pixelsNBytes
  var header: WtBITMAPV5HEADER
  header.bV5Size = sizeof(header).uint32
  header.bV5Width = w
  header.bV5Height = h
  header.bV5Planes = 1
  header.bV5BitCount = 32
  header.bV5Compression = wcBI_BITFIELDS.uint32
  header.bV5RedMask = 0x000000ff'u32
  header.bV5GreenMask = 0x0000ff00'u32
  header.bV5BlueMask = 0x00ff0000'u32
  header.bV5AlphaMask = 0xff000000'u32
  header.bV5CSType = LCS_WINDOWS_COLOR_SPACE
  makeWin32ClipboardMemImpl(self.hMem, nbytes):
    copyMem(memBytes[0].addr.ptrArray, header.addr, sizeof(WtBITMAPV5HEADER))
    copyPixelsRgbaFlip(memBytes[sizeof(WtBITMAPV5HEADER)].addr.ptrArray, w, h, pixels)

type
  Win32Clipboard* = object
    open*: bool

proc `=copy`*(dst: var Win32Clipboard; src: Win32Clipboard) {.error.}

when NimMajor >= 2:
  proc `=destroy`*(self: Win32Clipboard) {.raises: [].} =
    if self.open:
      discard wpCloseClipboard()
else:
  proc `=destroy`*(self: var Win32Clipboard) {.raises: [].} =
    if self.open:
      discard wpCloseClipboard()

proc openClipboard*(self: var Win32Clipboard; hwndNewOwner: WmHwnd): WinResult {.raises: [].} =
  let res = wpOpenClipboard(hwndNewOwner)
  if res == 0:
    return winResultFromWin32(wpGetLastError().uint32)
  self.open = true

proc closeClipboard*(self: var Win32Clipboard) {.raises: [].} =
  if self.open:
    discard wpCloseClipboard()
    self.open = false

proc emptyClipboard*(self: var Win32Clipboard): WinResult {.raises: [].} =
  assert(self.open) # TODO: maybe follow Win32 error code
  let res = wpEmptyClipboard()
  if res == 0:
    return winResultFromWin32(wpGetLastError().uint32)

proc setClipboardData*(self: var Win32Clipboard; uFormat: uint32; hMem: WtHANDLE): WinResult {.raises: [].} =
  assert(self.open)
  let hClip = wpSetClipboardData(uFormat, hMem)
  if hClip == 0:
    let werr = wpGetLastError()
    discard wpGlobalFree(hMem)
    return winResultFromWin32(werr.uint32)

proc setClipboardData*(self: var Win32Clipboard; uFormat: uint32; m: sink Win32ClipboardMem): WinResult {.raises: [].} =
  let hMem = move m.hMem
  wasMoved(m)
  setClipboardData(self, uFormat, hMem)

proc addHDrop*(self: var Win32Clipboard; drop: sink Win32ClipboardMem): WinResult {.raises: [].} =
  const CF_HDROP = 15
  let hMem = move drop.hMem
  wasMoved(drop)
  setClipboardData(self, CF_HDROP, hMem)

proc registerClipboardFormat*(fmt: ptr UncheckedArray[uint16]; formatId: var uint32): WinResult {.raises: [].} =
  let xx = wpRegisterClipboardFormatW(fmt)
  if xx == 0:
    return winResultFromWin32(wpGetLastError().uint32)
  formatId = xx
