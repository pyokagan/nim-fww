import fwwunicode

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: dllproc_SHELL32, stdcall, gcsafe, raises: [].}

type
  WtHDROP = int
  WtHWND = int
  WtBOOL = int32
  WtPOINT {.pure, bycopy.} = object
    x*: int32
    y*: int32

proc wpDragAcceptFiles(hWnd: WtHWND; fAccept: WtBOOL): void {.importc: "DragAcceptFiles", dllproc_SHELL32.}
proc wpDragFinish(hDrop: WtHDROP): void {.importc: "DragFinish", dllproc_SHELL32.}
proc wpDragQueryFileW(hDrop: WtHDROP; iFile: uint32; lpszFile: ptr UncheckedArray[uint16]; cch: uint32): uint32 {.importc: "DragQueryFileW", dllproc_SHELL32.}
proc wpDragQueryPoint(hDrop: WtHDROP; ppt: var WtPOINT): WtBOOL {.importc: "DragQueryPoint", dllproc_SHELL32.}

type
  WdropHandle* = distinct WtHDROP

proc wdropAcceptFiles*(hwnd: WtHWND; accept: bool) {.raises: [].} =
  wpDragAcceptFiles(hwnd, WtBOOL accept)

proc finish*(self: WdropHandle) {.raises: [].} =
  wpDragFinish(WtHDROP self)

type
  WdropPathList* = object
    ## A list of NUL-terminated paths.
    buf*: seq[uint16]
    offs*: seq[int]

func len*(self: WdropPathList): int {.inline, raises: [].} =
  result = max(self.offs.len - 1, 0)

template pathAsOpenArray*(self: WdropPathList; i: int): openArray[uint16] =
  toOpenArray(self.buf, self.offs[i], self.offs[i+1] - 2)

func pathAsString*(self: WdropPathList; i: int): string {.raises: [].} =
  result = wtf16ToWtf8String(pathAsOpenArray(self, i))

proc queryAll*(handle: WdropHandle): WdropPathList {.raises: [].} =
  let countAux = wpDragQueryFileW(WtHDROP handle, high(uint32), nil, 0)
  when sizeof(int) <= sizeof(uint32):
    let count = min(countAux, (high(int) - 1).uint32)
  else:
    let count = countAux
  const MaxCap = high(int) div 2
  result.offs.add(0)
  for i in 0 ..< count:
    let baseIdx = result.buf.len
    let remainingCap = uint32((MaxCap - 1) - baseIdx)
    let reqSize = wpDragQueryFileW(WtHDROP handle, i, nil, 0)
    if reqSize > remainingCap:
      break
    let nulIdx = baseIdx + cast[int](reqSize)
    result.buf.setLen(nulIdx + 1)
    discard wpDragQueryFileW(WtHDROP handle, i, cast[ptr UncheckedArray[uint16]](result.buf[baseIdx].addr), reqSize + 1)
    result.buf[nulIdx] = 0 # ensure NUL-terminate
    result.offs.add(nulIdx + 1)
