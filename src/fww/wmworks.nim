import std/macros
import fwwunicode
import win32threads
import win32wm
import win32libloaders

export win32wm

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

template ptrArray[T](x: ptr T): ptr UncheckedArray[T] =
  cast[ptr UncheckedArray[T]](x)

type
  WmSpec* = object
    className*: string
    classStyle*: WmClassStyles
    classIcon*, classIconSmall*: WmIcon # int
    classCursor*: WmCursor # int
    classBackground*: int
    windowStyle*: set[WmWindowStyle]
    windowTitle*: string
    x*, y*, w*, h*: int32 ## default size of the window

type
  WtHBRUSH = int

const wcCOLOR_3DFACE = 15

proc wmSpec*(className: sink string; windowTitle: sink string; classStyle = (wmcsHRedraw or wmcsVRedraw); classBackground = WtHBRUSH(wcCOLOR_3DFACE + 1); windowStyle = WmOverlappedWindowStyle; x = low(int32); y = low(int32); w = 320'i32; h = 320'i32): WmSpec {.inline, raises: [].} =
  result.className = move className
  result.windowTitle = move windowTitle
  result.classStyle = classStyle
  result.classCursor = loadBuiltinCursor(wmidcArrow)
  result.classBackground = classBackground
  result.windowStyle = windowStyle
  result.x = x
  result.y = y
  result.w = w
  result.h = h

proc toWmWndClassEx(spec: WmSpec; classNameMem: var seq[uint16]): WmWndClassEx {.inline, raises: [].} =
  classNameMem = wtf8ToWtf16SeqNulTerminated(spec.className)
  result.cbSize = sizeof(WmWndClassEx).uint32
  result.style = spec.classStyle
  result.lpfnWndProc = nil
  result.cbClsExtra = 0
  result.cbWndExtra = sizeof(pointer).int32 # alloc one extra pointer for storing our userdata
  discard getModuleHandle(nil, result.hInstance)
  result.hCursor = spec.classCursor
  result.hIcon = spec.classIcon
  result.hbrBackground = spec.classBackground
  result.lpszClassName = classNameMem[0].addr.ptrArray

type
  WmWindow*[T] = distinct WmHwnd

template hwnd*(x: WmWindow): WmHwnd =
  WmHwnd(x)

type
  WmMsgHandling* = enum
    wmHandleDefault ## run default action using DefWindowProc
    wmHandleFail ## indicate event handling error; (NOTE: only works for WM_CREATE, otherwise we just abort the process)
    wmHandleCustom0 ## return WtLRESULT(0)
    wmHandleCustom1 ## return WtLRESULT(1)

# WMWORKS PROTOCOL: wmSpec, wmHandleMessage

type
  SomeType = object
    dummy: int

proc defaultWinSpecImpl(spec: var WmSpec; className, windowTitle: string) {.inline, raises: [].} =
  spec = wmSpec(className = "", windowTitle = "")
  spec.className = className
  spec.windowTitle = windowTitle

macro wmSpec*(t: typedesc; spec: var WmSpec) =
  # implementation: fill up WmSpec with your info
  let typ = getTypeImpl(t)[1]
  result = newCall(bindSym "defaultWinSpecImpl", spec, typ.signatureHash.newStrLitNode, typ.strVal.newStrLitNode)

proc wmHandleMessage(self: var SomeType; hwnd: WmHwnd; msg: WmMsg): WmMsgHandling {.nimcall, gcsafe, raises: [].} =
  discard

template makeWndProcAux(T: typedesc; Tname): untyped =
  mixin wmHandleMessage, `=destroy`
  proc `wndproc Tname`(hwnd: WmHwnd; msg: uint32; wParam: uint; lParam: int): int {.stdcall, gcsafe, raises: [].} =
    var selfPtr = (ptr T)(nil)
    discard getUserPointer(hwnd, 0, selfPtr)
    if selfPtr.isNil:
      selfPtr = create(T)
      discard setUserPointer(hwnd, 0, selfPtr)

    let myMsg = WmMsg(msg: msg, wParam: wParam, lParam: lParam)
    let res = wmHandleMessage(selfPtr[], hwnd, myMsg)

    if msg == 0x82 and (not selfPtr.isNil):
      `=destroy`(selfPtr[])
      dealloc(selfPtr)
      discard setUserPointer(hwnd, 0, nil)

    case res
    of wmHandleDefault:
      result = hwnd.defWindowProc(msg, wParam, lParam)
    of wmHandleFail:
      if msg == 1:
        result = -1
      else:
        quit("oh no")
    of wmHandleCustom0, wmHandleCustom1:
      result = res.ord - wmHandleCustom0.ord
  `wndproc Tname`

macro makeWndProc(T: typedesc): untyped =
  result = newCall(bindSym "makeWndProcAux", T, ident getTypeImpl(T)[1].strVal)

proc wmRegisterClass*[T](typ: typedesc[T]): WinResult {.nimcall, raises: [].} =
  mixin wmSpec
  var gClassRegistrationOnce {.global.}: Win32InitOnce
  var pending = false
  retUnwrap beginOnce(gClassRegistrationOnce, pending)
  if pending:
    var spec: WmSpec
    wmSpec(typ, spec)
    var
      classNameMem: seq[uint16]
      wc = toWmWndClassEx(spec, classNameMem)
    wc.lpfnWndProc = makeWndProc(T)
    result = wmRegisterClass(wc)
    retUnwrap completeOnce(gClassRegistrationOnce, failed = result.failed)

proc createWindow*[T](self: var WmWindow[T]; parent = WmHwnd(0); userdata = pointer(nil)): WinResult {.nimcall, raises: [].} =
  mixin wmRegisterClass, wmSpec
  retUnwrap wmRegisterClass(T)
  var wspec: WmSpec
  wmSpec(T, wspec)
  var
    classNameMem = wtf8ToWtf16SeqNulTerminated(wspec.className)
    windowTitleMem = wtf8ToWtf16SeqNulTerminated(wspec.windowTitle)
    hInstance: WinInstance
  discard getModuleHandle(nil, hInstance)
  result = WmHwnd(self).createWindow(wspec.windowStyle.toRawWindowExStyle, classNameMem[0].addr.ptrArray, windowTitleMem[0].addr.ptrArray, wspec.windowStyle.toRawWindowStyle, wspec.x, wspec.y, wspec.w, wspec.h, parent, 0, hInstance, userdata)
