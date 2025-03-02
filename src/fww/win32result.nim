{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

type
  WinResult* = distinct int32
    ## HRESULT

const
  WinResult_E_INVALIDARG* = WinResult cast[int32](0x80070057'u32)

func `==`*(x, y: WinResult): bool {.borrow.}

func openArrayToString(s: openArray[char]): string {.inline, raises: [].} =
  let l = len(s)
  result = newString(l)
  if l > 0:
    when nimvm:
      for i in 0 ..< l:
        result[i] = s[i]
    else:
      copyMem(result[0].addr, s[0].unsafeAddr, l)

func makeWinResultError2(hr: WinResult; prefix: openArray[char]): ref OSError {.raises: [].} =
  result = (ref OSError)(msg: openArrayToString(prefix) & ": " & $int32(hr))

func makeWinResultError1(hr: WinResult): ref OSError {.raises: [].} =
  result = (ref OSError)(msg: "HRESULT error: " & $int32(hr))

template unwrap*(self: WinResult; msg: untyped) =
  {.line: instantiationInfo().}:
    var res = self
    if cast[int32](res) < 0:
      raise makeWinResultError2(res, msg)

template unwrap*(self: WinResult) =
  {.line: instantiationInfo().}:
    var res = self
    if cast[int32](res) < 0:
      raise makeWinResultError1(res)

template unwrapBool*(self: WinResult; msg: untyped): bool =
  {.line: instantiationInfo().}:
    var res = self
    if cast[int32](res) < 0:
      raise makeWinResultError2(res, msg)
    not bool(cast[int32](res))

template unwrapBool*(self: WinResult): bool =
  {.line: instantiationInfo().}:
    var res = self
    if cast[int32](res) < 0:
      raise makeWinResultError1(res)
    not bool(cast[int32](res))

template retUnwrap*(self: WinResult) =
  let res = self
  if cast[int32](res) < 0:
    return res

func failed*(self: WinResult): bool {.inline, raises: [].} =
  self.int32 < 0

func succeeded*(self: WinResult): bool {.inline, raises: [].} =
  self.int32 >= 0

func winResultFromWin32*(err: uint32): WinResult {.inline, raises: [].} =
  const
    FACILITY_WIN32 = 7'u32
    SEVERITY_ERROR = 1'u32
  result = WinResult cast[int32]((err and 0xffff'u32) or (FACILITY_WIN32 shl 16) or (SEVERITY_ERROR shl 31))
