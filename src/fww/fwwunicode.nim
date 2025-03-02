{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

func readWtf8(s: openArray[char]; i: var int): uint32 {.inline, raises: [].} =
  template readOneContinuationByte() {.dirty.} =
    result = (result shl 6) or (s[i].uint32 and 0x3f); inc i
  let c0 = s[i].uint32
  if c0 <= 127:
    result = c0; inc i
  elif (c0 shr 5) == 0b110:
    result = c0 and 31; inc i
    readOneContinuationByte()
  elif (c0 shr 4) == 0b1110:
    result = c0 and 15; inc i
    readOneContinuationByte()
    readOneContinuationByte()
  elif (c0 shr 3) == 0b11110:
    result = c0 and 7; inc i
    readOneContinuationByte()
    readOneContinuationByte()
    readOneContinuationByte()
  else: # bad encoding
    inc i

func writeWtf16(dst: var openArray[uint16]; dstIdx: int; codepoint: uint32): 1'i8..2'i8 {.inline, noinit, raises: [].} =
  ## Writes the WTF-16 encoding of a codepoint to ``dst[dstIdx]``.
  ## Returns the number of elements (uint16's) written.
  let c = uint32(codepoint)
  if c < 0x10000'u32:
    dst[dstIdx] = uint16(c)
    result = 1
  else:
    let c2 = c - 0x10000'u32
    dst[dstIdx] = uint16(((c2 and 0xffc00'u32) shr 10) or 0xd800'u32)
    dst[dstIdx+1] = uint16((c and 0x3ff'u32) or 0xdc00'u32)
    result = 2

func calcWtf16LenFromWtf8ForConv(s: openArray[char]): int {.inline, raises: [].} =
  ## Assuming that `s` contains valid WTF-8,
  ## calculate the len (in uint16s) of the string encoded as WTF-16.
  # Each 4-byte UTF-8 sequence must be encoded as a surrogate pair.
  # All other UTF-8 sequences can be encoded as a single code unit.
  const MaxAllowed = (high(int) div 2) - 1 # -1 for possible NUL termination
  for c in s:
    if result > (MaxAllowed - 2):
      return -1 # fail
    if (uint8(c) and 0xf8'u8) == 0xf0'u8: # 4-byte sequence lead byte
      inc(result, 2)
    elif (uint8(c) and 0xc0'u8) != 0x80'u8: # not a continuation byte
      inc(result)

func wtf8ToWtf16Seq*(s: openArray[char]): seq[uint16] {.raises: [].} =
  var compLen = calcWtf16LenFromWtf8ForConv(s)
  if compLen < 0:
    raise (ref AssertionDefect)(msg: "string too long")
  when nimvm:
    result = newSeq[uint16](compLen)
  else:
    when (NimMajor, NimMinor) >= (2, 2):
      result = newSeqUninit[uint16](compLen)
    else:
      result = newSeqUninitialized[uint16](compLen)
  var
    srcIdx = 0
    dstIdx = 0
  while srcIdx < len(s):
    let codepoint = readWtf8(s, srcIdx)
    let count = writeWtf16(result, dstIdx, codepoint)
    inc(dstIdx, count)
  assert(dstIdx == compLen)

func wtf8ToWtf16SeqNulTerminated*(s: openArray[char]): seq[uint16] {.raises: [].} =
  var compLen = calcWtf16LenFromWtf8ForConv(s)
  if compLen < 0:
    raise (ref AssertionDefect)(msg: "string too long")
  inc(compLen) # for NUL termination
  when nimvm:
    result = newSeq[uint16](compLen)
  else:
    when (NimMajor, NimMinor) >= (2, 2):
      result = newSeqUninit[uint16](compLen)
    else:
      result = newSeqUninitialized[uint16](compLen)
  var
    srcIdx = 0
    dstIdx = 0
  while srcIdx < len(s):
    let codepoint = readWtf8(s, srcIdx)
    let count = writeWtf16(result, dstIdx, codepoint)
    inc(dstIdx, count)
  result[dstIdx] = 0; inc dstIdx # add NUL terminator
  assert(dstIdx == compLen)

func wtf8RuneLen*(c: uint32): 1'i8..4'i8 {.inline, noinit, raises: [].} =
  ## Number of bytes required to encode the codepoint.
  if c <= 127'u32: result = 1
  elif c <= 0x7ff'u32: result = 2
  elif c <= 0xffff'u32: result = 3
  else: result = 4

func writeWtf8*(dst: var openArray[char]; dstIdx: int; c: uint32): 1'i8..4'i8 {.inline, noinit, raises: [].} =
  ## Write the WTF-8 encoding of a codepoint.
  if c <= 127'u32:
    result = 1
    dst[dstIdx] = char uint8(c)
  elif c <= 0x7ff'u32:
    result = 2
    dst[dstIdx] = char uint8((c shr 6) or 0xc0'u32)
    dst[dstIdx+1] = char uint8((c and 0x3f'u32) or 0x80'u32)
  elif c <= 0xffff'u32:
    result = 3
    dst[dstIdx] = char uint8((c shr 12) or 0xe0'u32)
    dst[dstIdx+1] = char uint8(((c shr 6) and 0x3f'u32) or 0x80'u32)
    dst[dstIdx+2] = char uint8((c and 0x3f'u32) or 0x80'u32)
  else:
    result = 4
    dst[dstIdx] = char uint8((c shr 18) or 0xf0'u32)
    dst[dstIdx+1] = char uint8(((c shr 12) and 0x3f'u32) or 0x80'u32)
    dst[dstIdx+2] = char uint8(((c shr 6) and 0x3f'u32) or 0x80'u32)
    dst[dstIdx+3] = char uint8((c and 0x3f'u32) or 0x80'u32)

func isWtf16HighSurrogate(c: uint16): bool {.inline, raises: [].} =
  c >= 0xD800'u16 and c <= 0xDBFF'u16

func isWtf16LowSurrogate(c: uint16): bool {.inline, raises: [].} =
  c >= 0xDC00'u16 and c <= 0xDFFF'u16

func readWtf16(s: openArray[uint16]; i: var int): uint32 {.inline, raises: [].} =
  if (len(s) - i) >= 2 and isWtf16HighSurrogate(s[i]) and isWtf16LowSurrogate(s[i+1]):
    # join surrogates
    result = 0x10000'u32 + ((uint32(s[i]) - 0xd800'u32) shl 10) + (uint32(s[i+1]) - 0xdc00'u32)
    inc(i, 2)
  else:
    # lone codepoint
    result = uint32(s[i])
    inc(i)

func wtf16ToWtf8String*(src: openArray[uint16]): string {.raises: [].} =
  ## Convert a WTF-16 string to a WTF-8 string.
  ##
  ## Precondition: ``src`` is a valid WTF-16 string.
  var
    srcIdx = 0
    dstSize = 0
  # Pre-compute size we need
  while srcIdx < len(src):
    let codepoint = readWtf16(src, srcIdx)
    inc(dstSize, wtf8RuneLen(codepoint))
  result = newString(dstSize)
  # Now do the encoding
  var dstIdx = 0
  srcIdx = 0
  while srcIdx < len(src):
    let codepoint = readWtf16(src, srcIdx)
    let count = writeWtf8(result, dstIdx, codepoint)
    inc(dstIdx, count)

func seqArr(s: seq[uint16]): ptr UncheckedArray[uint16] {.inline, raises: [].} =
  result = cast[ptr UncheckedArray[uint16]](s[0].unsafeAddr)

template constLPWSTR*(s): ptr UncheckedArray[uint16] =
  ## Helper for generating a NUL-terminated `ptr UncheckedArray[uint16]` (aka. a WTF-16 string) from a constant string.
  bind wtf8ToWtf16SeqNulTerminated, seqArr
  seqArr(static(wtf8ToWtf16SeqNulTerminated s))
