import win32result
export win32result

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: dllproc_KERNEL32, stdcall, gcsafe, raises: [].}

type
  WtBOOL = int32
  WtLARGE_INTEGER_nested0 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: int32
  WtLARGE_INTEGER_nested1 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: int32
  WtLARGE_INTEGER {.pure, bycopy, union.} = object
    Anonymous*: WtLARGE_INTEGER_nested0
    u*: WtLARGE_INTEGER_nested1
    QuadPart*: int64

proc wpGetLastError(): uint32 {.importc: "GetLastError", dllproc_KERNEL32.}
proc wpQueryPerformanceFrequency(lpFrequency: var WtLARGE_INTEGER): WtBOOL {.importc: "QueryPerformanceFrequency", dllproc_KERNEL32.}
proc wpQueryPerformanceCounter(lpPerformanceCount: var WtLARGE_INTEGER): WtBOOL {.importc: "QueryPerformanceCounter", dllproc_KERNEL32.}

proc queryPerformanceFrequency*(value: var uint64): WinResult {.raises: [].} =
  var tmp {.noinit.}: WtLARGE_INTEGER
  tmp.QuadPart = 0
  if wpQueryPerformanceFrequency(tmp) == 0:
    return winResultFromWin32(wpGetLastError())
  value = cast[uint64](tmp.QuadPart)

proc queryPerformanceCounter*(value: var uint64): WinResult {.raises: [].} =
  var tmp {.noinit.}: WtLARGE_INTEGER
  tmp.QuadPart = 0
  if wpQueryPerformanceCounter(tmp) == 0:
    return winResultFromWin32(wpGetLastError())
  value = cast[uint64](tmp.QuadPart)
