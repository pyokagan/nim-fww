import win32result
export win32result

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

template ptrArray[T](x: ptr T): ptr UncheckedArray[T] =
  cast[ptr UncheckedArray[T]](x)

{.pragma: dllproc_SHELL32, stdcall, gcsafe, raises: [].}

include win32shellfs_cimports

type
  ShOpFlag* = enum
    shfofNoConfirmMkdir
      ## Do not ask the user for permission to create new directories

const
  ShOpFlagToValue: array[ShOpFlag, uint16] = [
    shfofNoConfirmMkdir: wcFOF_NOCONFIRMMKDIR.uint16,
  ]

func isDoubleNulTerminated(pathList: openArray[uint16]): bool {.used, inline, raises: [].} =
  let l = pathList.len
  l >= 2 and pathList[l - 1] == 0'u16 and pathList[l - 2] == 0'u16

func flagsToValue(s: set[ShOpFlag]): uint16 {.inline, raises: [].} =
  for x in ShOpFlag:
    if s.contains(x):
      result = result or ShOpFlagToValue[x]

proc shCopy*(fromPathList, toPathList: openArray[uint16]; flags: set[ShOpFlag]; aborted: var bool): WinResult {.raises: [].} =
  assert isDoubleNulTerminated(fromPathList)
  assert isDoubleNulTerminated(toPathList)
  var op: WtSHFILEOPSTRUCTW
  op.wFunc = wcFO_COPY
  op.pFrom = fromPathList[0].unsafeAddr.ptrArray
  op.pTo = toPathList[0].unsafeAddr.ptrArray
  op.fFlags = flagsToValue flags
  let res = wpSHFileOperationW(op)
  if res != 0:
    return winResultFromWin32(res.uint32)
  aborted = op.fAnyOperationsAborted.bool
