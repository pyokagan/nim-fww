import win32result, win32geom, win32wmconsts, win32libloaders, win32handles, win32wmconsts

export win32result

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

type
  WmHwnd* = distinct int
  WmCursor* = distinct int
  WmIcon* = distinct int

func isNil*(x: WmHwnd): bool {.inline, raises: [].} =
  x.int == 0

func isNil*(x: WmCursor): bool {.inline, raises: [].} =
  x.int == 0

func isNil*(x: WmIcon): bool {.inline, raises: [].} =
  x.int == 0

{.pragma: dllproc_USER32, stdcall, gcsafe.}
{.pragma: dllproc_KERNEL32, stdcall, gcsafe.}
{.pragma: w32callback, stdcall, gcsafe, raises: [].}

include win32wm_cimports

func contains*(x, y: WmPointerFlags): bool {.inline, raises: [].} =
  (x and y) != WmPointerFlags(0)

# {{{ Cursors

type
  WmBuiltinCursor* = enum
    wmidcArrow
    wmidcIBeam
    wmidcWait
    wmidcCross
    wmidcUpArrow
    wmidcSizeNWSE
    wmidcSizeNESW
    wmidcSizeWE
    wmidcSizeNS
    wmidcSizeAll
    wmidcNo
    wmidcHand
    wmidcAppStarting
    wmidcHelp
    wmidcPin
    wmidcPerson
const
  WmBuiltinCursorId: array[WmBuiltinCursor, uint16] = [
    wmidcArrow: 32512'u16,
    wmidcIBeam: 32513,
    wmidcWait: 32514,
    wmidcCross: 32515,
    wmidcUpArrow: 32516,
    wmidcSizeNWSE: 32642,
    wmidcSizeNESW: 32643,
    wmidcSizeWE: 32644,
    wmidcSizeNS: 32645,
    wmidcSizeAll: 32646,
    wmidcNo: 32648,
    wmidcHand: 32649,
    wmidcAppStarting: 32650,
    wmidcHelp: 32651,
    wmidcPin: 32671,
    wmidcPerson: 32672,
  ]

proc wmLoadBuiltinCursorAux(rawid: uint16): WmCursor {.raises: [].} =
  wpLoadCursorW(WinInstance(0), cast[WtPWSTR](rawid.uint))

template loadBuiltinCursor*(cur: WmBuiltinCursor): WmCursor =
  wmLoadBuiltinCursorAux(WmBuiltinCursorId[cur])

proc wmSetCursor*(cur: WmCursor): WmCursor {.discardable, raises: [].} =
  result = wpSetCursor(cur)

# }}}
# {{{ Icons

proc wmLoadIconFromResource*(hInstance: WinInstance; resourceId: uint16; o: var WmIcon): WinResult {.raises: [].} =
  let res = wpLoadIconW(hInstance, cast[WtPWSTR](resourceId.uint))
  if res.isNil:
    return winResultFromWin32(uint32 wpGetLastError())
  o = res

proc wmLoadIconFromResource*(resourceId: uint16; o: var WmIcon): WinResult {.raises: [].} =
  var currentModule: WinInstance
  retUnwrap getModuleHandle(nil, currentModule)
  result = wmLoadIconFromResource(currentModule, resourceId, o)

# }}}
# {{{ Window classes

const
  wmcsVRedraw* = WmClassStyles(1)
    ## Redraw if window height changes
  wmcsHRedraw* = WmClassStyles(2)
    ## Redraw if window width changes
  wmcsDblClcks* = WmClassStyles(8)
  wmcsOwnDc* = WmClassStyles(32)
  wmcsClassDc* = WmClassStyles(64)
  wmcsParentDc* = WmClassStyles(128)
  wmcsNoClose* = WmClassStyles(512)
  wmcsSaveBits* = WmClassStyles(2048)
  wmcsByteAlignClient* = WmClassStyles(4096)
  wmcsByteAlignWindow* = WmClassStyles(8192)
  wmcsGlobalClass* = WmClassStyles(16384)
  wmcsIME* = WmClassStyles(65536)
  wmcsDropShadow* = WmClassStyles(131072)

type
  WmWindowStyle* = enum
    wmsMaximizeBox ## (wmsTabStop) The window has a maximize button.
    wmsMinimizeBox ## (wmsGroup) The window has a minimize button.
    wmsSizeBox ## The window has a sizing border.
    wmsSysMenu ## The window has a window menu on its title bar.
    wmsHScroll ## The window has a horizontal scroll bar
    wmsVScroll ## The window has a vertical scroll bar
    wmsDlgFrame ## The window has a border of a style typically used with dialog boxes.
    wmsBorder ## The window has a thin-line border.
    wmsMaximize ## The window is initially maximized
    wmsClipChildren ## Exclude the area occupied by child windows when drawing occurs within the parent window. This style is used when creating the parent window.
    wmsClipSiblings ## Clips while windows relative to each other
    wmsDisabled ## The window is initially disabled.
    wmsVisible ## The window is initially visible.
    wmsMinimize ## The window is initially minimized.
    wmsChild ## The window is a child window.
    wmsPopup ## The window is a popup window.

    # == Extended styles (because Microsoft ran out of bits) ==
    wmsDlgModalFrame ## Don't show icon on title bar
    wmsNoParentNotify ## The (child) window does not send the WM_PARENTNOTIFY message to its parent window when it is created or destroyed.
    wmsTopMost ## The window should be placed above all non-topmost windows.
    wmsAcceptFiles ## The window accepts drag-drop files
    wmsTransparent ## The window is painted after its siblings (so it can paint itself as-if it is transparent)
    wmsMdiChild ## The window is a MDI child window
    wmsToolWindow ## The window looks like a floating toolbar.
    wmsWindowEdge ## The (widget) window has a border with a raised edge
    wmsClientEdge ## The (widget) window has a border with a sunken edge
    wmsContextHelp ## The title bar of the window includes a question mark.
    wmsRight ## The window has generic "right-aligned" properties.
    wmsRtlReading ## Right-to-left text
    wmsLeftScrollbar # Right-to-left left scrollbar
    wmsControlParent ## The window itself contains child windows that should take part in dialog box navigation
    wmsStaticEdge ## The (widget) window has a 3d border style
    wmsAppWindow ## Forces a top-level window onto the taskbar when the window is visible
    wmsLayered ## The window is a layered window.
    wmsNoInheritLayout ## The window does not pass its window layout to its child windows
    wmsNoRedirectionBitmap ## The window does not render to a redirection surface.
    wmsLayoutRtl ## Right-to-left layout
    wmsComposited ## Paints all descendents of a window in bottom-to-top painting order using double buffering.
    wmsNoActivate # The (top-level) window does not become a foreground window when the user clicks it.

const
  WmWindowStyleBits: array[wmsMaximizeBox..wmsPopup, int8] = [
    wmsMaximizeBox: 16'i8,
    wmsMinimizeBox: 17,
    wmsSizeBox: 18,
    wmsSysMenu: 19,
    wmsHScroll: 20,
    wmsVScroll: 21,
    wmsDlgFrame: 22,
    wmsBorder: 23,
    wmsMaximize: 24,
    wmsClipChildren: 25,
    wmsClipSiblings: 26,
    wmsDisabled: 27,
    wmsVisible: 28,
    wmsMinimize: 29,
    wmsChild: 30,
    wmsPopup: 31,
  ]
  WmWindowStyleBitsEx: array[wmsDlgModalFrame..wmsNoActivate, int8] = [
    wmsDlgModalFrame: 0'i8,
    wmsNoParentNotify: 2,
    wmsTopMost: 3,
    wmsAcceptFiles: 4,
    wmsTransparent: 5,
    wmsMdiChild: 6,
    wmsToolWindow: 7,
    wmsWindowEdge: 8,
    wmsClientEdge: 9,
    wmsContextHelp: 10,
    wmsRight: 12,
    wmsRtlReading: 13,
    wmsLeftScrollbar: 14,
    wmsControlParent: 16,
    wmsStaticEdge: 17,
    wmsAppWindow: 18,
    wmsLayered: 19,
    wmsNoInheritLayout: 20,
    wmsNoRedirectionBitmap: 21,
    wmsLayoutRtl: 22,
    wmsComposited: 25,
    wmsNoActivate: 27,
  ]

func toRawWindowStyle*(s: set[WmWindowStyle]): WmRawWindowStyle {.inline, raises: [].} =
  for x in s:
    if x >= low(WmWindowStyleBits) and x <= high(WmWindowStyleBits):
      result = result or WmRawWindowStyle(1'u32 shl WmWindowStyleBits[x])

func toRawWindowExStyle*(s: set[WmWindowStyle]): WmRawWindowExStyle {.inline, raises: [].} =
  for x in s:
    if x >= low(WmWindowStyleBitsEx) and x <= high(WmWindowStyleBitsEx):
      result = result or WmRawWindowExStyle(1'u32 shl WmWindowStyleBitsEx[x])

const
  WmCaptionWindowStyle = {wmsDlgFrame, wmsBorder}
  WmOverlappedWindowStyle* = WmCaptionWindowStyle + {wmsSysMenu, wmsSizeBox, wmsMinimizeBox, wmsMaximizeBox}
  WmPopupWindowStyle* = {wmsPopup, wmsBorder, wmsSysMenu}
  WmChildWindowStyle* = {wmsChild}
  WmToolWindowStyle* = {wmsToolWindow, wmsSysMenu, wmsSizeBox} + WmCaptionWindowStyle

proc wmRegisterClass*(cls: WmWndClassEx): WinResult {.raises: [].} =
  let res = wpRegisterClassExW(cls)
  if res == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

# }}}
# {{{ Mice
type
  WmMouseKey* = enum
    # values must match MK_* values (see parseWmMouseMove)
    mkLButton ## 1, left mouse button is down
    mkRButton ## 2, right mouse buttton is down
    mkShift ## 4, shift key is down
    mkControl ## 8, CTRL key is down
    mkMButton ## 16, middle mouse button is down
    mkXButton1 ## 32, The first X button is down
    mkXButton2 ## 64, The second X button is down
const
  WmMouseKeyMask = 127

# }}}
# {{{ Hittest

type
  WmHitTest* = enum
    wmhtError = -2
    wmhtTransparent = -1
    wmhtNowhere = 0
    wmhtClient = 1
    wmhtCaption = 2
    wmhtSysMenu = 3
    wmhtGrowBox = 4
    wmhtMenu = 5
    wmhtHScroll = 6
    wmhtVScroll = 7
    wmhtMinButton = 8
    wmhtMaxButton = 9
    wmhtLeft = 10
    wmhtRight = 11
    wmhtTop = 12
    wmhtTopLeft = 13
    wmhtTopRight = 14
    wmhtBottom = 15
    wmhtBottomLeft = 16
    wmhtBottomRight = 17
    wmhtBorder = 18
    wmhtObject = 19
    wmhtClose = 20
    wmhtHelp = 21

# }}}
# {{{ Pointers

const
  wmPointerPointer* = WmPointerInputType(1)
  wmPointerTouch* = WmPointerInputType(2)
  wmPointerPen* = WmPointerInputType(3)
  wmPointerMouse* = WmPointerInputType(4)
  wmPointerTouchpad* = WmPointerInputType(5)

  wmPointerFlagNew* = WmPointerFlags(1'u16)
    ## This message represents the first input generated by a new pointer.
  wmPointerFlagInRange* = WmPointerFlags(2'u16)
    ## This message was generated by a pointer during its lifetime.
    ## This flag is not set on messages that indicate that the pointer has left detection range.
  wmPointerFlagInContact* = WmPointerFlags(4'u16)
    ## This message was generated by a pointer that is in contact with the window surface.
    ## This flag is not set on messages that indicate a hovering pointer.
  wmPointerFlagPrimary* = WmPointerFlags(0x2000'u16)
    ## Pointer has been designated as primary
  wmPointerFlagFirstButton* = WmPointerFlags(0x10'u16)
  wmPointerFlagSecondButton* = WmPointerFlags(0x20'u16)
  wmPointerFlagThirdButton* = WmPointerFlags(0x40'u16)
  wmPointerFlagFourthButton* = WmPointerFlags(0x80'u16)
  wmPointerFlagFifthButton* = WmPointerFlags(0x100'u16)

type
  WmPointerId* = distinct uint16

func `$`*(self: WmPointerId): string {.borrow.}
func `==`*(x, y: WmPointerId): bool {.borrow.}
func `<`*(x, y: WmPointerId): bool {.borrow.}
func `<=`*(x, y: WmPointerId): bool {.borrow.}

proc getPointerType*(pointerId: WmPointerId; pointerType: var WmPointerInputType): WinResult {.raises: [].} =
  if wpGetPointerType(uint16 pointerId, pointerType) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getPointerInfo*(pointerId: WmPointerId; pointerInfo: var WmPointerInfo): WinResult {.raises: [].} =
  if wpGetPointerInfo(uint32 pointerId, pointerInfo) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getPointerInfoHistory*(pointerId: WmPointerId; entriesCount: var uint32; pointerInfos: ptr UncheckedArray[WmPointerInfo]): WinResult {.raises: [].} =
  if wpGetPointerInfoHistory(uint32 pointerId, entriesCount, pointerInfos) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getPointerPenInfo*(pointerId: WmPointerId; penInfo: var WmPointerPenInfo): WinResult {.raises: [].} =
  if wpGetPointerPenInfo(uint32 pointerId, penInfo) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getPointerPenInfoHistory*(pointerId: WmPointerId; entriesCount: var uint32; penInfo: ptr UncheckedArray[WmPointerPenInfo]): WinResult {.raises: [].} =
  if wpGetPointerPenInfoHistory(uint32 pointerId, entriesCount, penInfo) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

# }}}
# {{{ Hwnd

proc show*(hwnd: WmHwnd): bool {.discardable, raises: [].} =
  wpShowWindow(hwnd, wcSW_SHOWNORMAL) != 0

proc move*(hwnd: WmHwnd; x, y, w, h: int32; repaint: bool): WinResult {.raises: [].} =
  if wpMoveWindow(hwnd, x, y, w, h, WtBOOL repaint) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc destroy*(hwnd: var WmHwnd): WinResult {.raises: [].} =
  if wpDestroyWindow(hwnd) == 0:
    return winResultFromWin32(uint32 wpGetLastError())
  hwnd = WmHwnd(0)

proc invalidate*(window: WmHwnd; erase: bool): WinResult {.raises: [].} =
  if wpInvalidateRect(window, nil, WtBOOL erase) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc validate*(window: WmHwnd): WinResult {.raises: [].} =
  if wpValidateRect(window, nil) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc postMessage*(window: WmHwnd; msg: uint32): WinResult {.raises: [].} =
  if wpPostMessageW(window, msg, 0, 0) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getClientRect*(hwnd: WmHwnd; rect: var WinRect): WinResult {.raises: [].} =
  if wpGetClientRect(hwnd, rect) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getWindowRect*(hwnd: WmHwnd; rect: var WinRect): WinResult {.raises: [].} =
  if wpGetWindowRect(hwnd, rect) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc clientToScreen*(hwnd: WmHwnd; p: var WinPoint): WinResult {.raises: [].} =
  if wpClientToScreen(hwnd, p) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc screenToClient*(hwnd: WmHwnd; p: var WinPoint): WinResult {.raises: [].} =
  if wpScreenToClient(hwnd, p) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getUpdateRect*(hwnd: WmHwnd; rect: var WinRect; erase: bool): bool {.raises: [].} =
  ## Returns true if update region is not empty
  wpGetUpdateRect(hwnd, rect.addr, WtBOOL erase) != 0

proc internalPaint*(hwnd: WmHwnd): WinResult {.raises: [].} =
  if wpRedrawWindow(hwnd, nil, 0, wcRDW_INTERNALPAINT) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc getDpi*(window: WmHwnd): uint16 {.raises: [].} =
  cast[uint16](wpGetDpiForWindow(window))

proc moveAndResize*(window: WmHwnd; x, y, w, h: int32): WinResult {.raises: [].} =
  if wpSetWindowPos(window, WmHwnd(0), x, y, w, h, WtSET_WINDOW_POS_FLAGS wcSWP_NOZORDER.uint32 or wcSWP_NOACTIVATE.uint32) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc resizeByDpi*(hwnd: WmHwnd): WinResult {.raises: [].} =
  let dpi = hwnd.getDpi()
  var windowRect: WinRect
  retUnwrap hwnd.getWindowRect(windowRect)
  let newH = (windowRect.height * dpi.int32) div 96
  let newW = (windowRect.width * dpi.int32) div 96
  result = hwnd.moveAndResize(windowRect.left, windowRect.top, newW, newH)

proc getUserPointer*(hwnd: WmHwnd; idx: int32; p: var pointer): WinResult {.raises: [].} =
  assert(idx >= 0)
  wpSetLastError(WtWIN32_ERROR(0)) # so we can distinguish between errors and nil pointers
  let res = wpGetWindowLongPtrW(hwnd, WtWINDOW_LONG_PTR_INDEX idx)
  if res == 0:
    let err = wpGetLastError()
    if err.uint32 != 0:
      return winResultFromWin32(uint32 err)
  p = cast[pointer](res)

proc getUserPointer*[T](hwnd: WmHwnd; idx: int32; p: var ptr T): WinResult {.inline, raises: [].} =
  var tmp = pointer(nil)
  result = getUserPointer(hwnd, idx, tmp)
  p = cast[ptr T](tmp)

proc setUserPointer*(hwnd: WmHwnd; idx: int32; p: pointer): WinResult {.raises: [].} =
  assert(idx >= 0)
  wpSetLastError(WtWIN32_ERROR(0)) # so we can distinguish between errors and nil pointers
  let res = wpSetWindowLongPtrW(hwnd, WtWINDOW_LONG_PTR_INDEX idx, cast[int](p))
  if res == 0:
    let err = wpGetLastError()
    if err.uint32 != 0:
      return winResultFromWin32(uint32 err)

proc createWindow*(hwnd: var WmHwnd; exStyle: WmRawWindowExStyle; className, windowName: ptr UncheckedArray[uint16]; style: WmRawWindowStyle; x, y, w, h: int32; parent: WmHwnd; menu: WtHMENU; instance: WinInstance; param: pointer): WinResult {.raises: [].} =
  if not hwnd.isNil:
    retUnwrap hwnd.destroy()
  let tmpHwnd = wpCreateWindowExW(exStyle, className, windowName, style, x, y, w, h, parent, menu, instance, param)
  if tmpHwnd.isNil:
    return winResultFromWin32(uint32 wpGetLastError())
  hwnd = tmpHwnd

proc defWindowProc*(hwnd: WmHwnd; msg: uint32; wParam: WtWPARAM; lParam: WtLPARAM): WtLRESULT {.raises: [].} =
  wpDefWindowProcW(hwnd, msg, wParam, lParam)

type
  WmTrackMouseEventFlag* = enum
    wmtmeHover ## want hover notification via wcWM_MOUSEHOVER
    wmtmeLeave ## want leave notification via wcWM_MOUSELEAVE
    wmtmeNonClient
    wmtmeCancel

proc trackMouseEvent*(hwnd: WmHwnd; flags: set[WmTrackMouseEventFlag]; hoverTime = high(uint32)): WinResult {.raises: [].} =
  var tme {.noinit.}: WtTRACKMOUSEEVENT
  tme.cbSize = uint32 sizeof(WtTRACKMOUSEEVENT)
  var dwFlags = 0'u32
  if flags.contains(wmtmeHover):
    dwFlags = dwFlags or wcTME_HOVER.uint32
  if flags.contains(wmtmeLeave):
    dwFlags = dwFlags or wcTME_LEAVE.uint32
  if flags.contains(wmtmeNonClient):
    dwFlags = dwFlags or wcTME_NONCLIENT.uint32
  if flags.contains(wmtmeCancel):
    dwFlags = dwFlags or wcTME_CANCEL.uint32
  tme.dwFlags = WtTRACKMOUSEEVENT_FLAGS(dwFlags)
  tme.hwndTrack = hwnd
  tme.dwHoverTime = hoverTime
  if wpTrackMouseEvent(tme) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

# }}}
# {{{ Message

type
  WmMsg* = object
    msg*: uint32
    wParam*: WtWPARAM
    lParam*: WtLPARAM

proc `=copy`(dst: var WmMsg; src: WmMsg) {.error.}

func dpiChangedEvent*(self: WmMsg): tuple[dpiX, dpiY: uint16; rect: WinRect] {.noinit, inline, raises: [].} =
  result.dpiX = cast[uint16](self.wParam)
  result.dpiY = cast[uint16](self.wParam shr 16)
  if self.msg == wcWM_DPICHANGED:
    let rect_p = cast[ptr WinRect](self.lParam)
    result.rect = rect_p[]
  else:
    result.rect = WinRect()

func setCursorEvent*(self: WmMsg): tuple[ht: WmHitTest; msg: uint16] {.noinit, inline, raises: [].} =
  let rawHt = cast[int16](cast[uint16](self.lParam))
  result.ht =
    if rawHt >= low(WmHitTest).ord and rawHt <= high(WmHitTest).ord: WmHitTest(rawHt)
    else: wmhtNowhere
  result.msg = cast[uint16](self.lParam shr 16)

func pointerUpdateEvent*(self: WmMsg): tuple[pointerId: WmPointerId; flags: WmPointerFlags; x, y: int16] {.noinit, inline, raises: [].} =
  result.pointerId = WmPointerId cast[uint16](self.wParam)
  result.flags = WmPointerFlags cast[uint16](self.wParam shr 16)
  result.x = cast[int16](self.lParam)
  result.y = cast[int16](self.lParam shr 16)

func createInfo*(self: WmMsg): tuple[userdata: pointer; menu: WtHMENU; parent: WmHwnd] {.inline, noinit, raises: [].} =
  if self.msg == wcWM_CREATE:
    let tmp = cast[ptr WtCREATESTRUCTW](self.lParam)
    result.userdata = tmp.lpCreateParams
    result.menu = tmp.hMenu
    result.parent = tmp.hwndParent
  else:
    result.userdata = nil
    result.menu = WtHMENU(0)
    result.parent = WmHwnd(0)

type
  WmSizeKind* = distinct WtWPARAM
func `==`*(x, y: WmSizeKind): bool {.borrow.}
func `$`*(x: WmSizeKind): string {.borrow.}

const
  wmSizeRestored* = WmSizeKind 0
  wmSizeMinimized* = WmSizeKind 1
  wmSizeMaximized* = WmSizeKind 2
  wmSizeMaxShow* = WmSizeKind 3
  wmSizeMaxHide* = WmSizeKind 4

func sizeEvent*(self: WmMsg): tuple[kind: WmSizeKind; width, height: uint16] {.inline, noinit, raises: [].} =
  ## For WM_SIZE
  result.kind = WmSizeKind self.wParam
  let lParam = self.lParam
  result.width = cast[uint16](lParam)
  result.height = cast[uint16](lParam shr 16)

func keyEvent*(self: WmMsg): tuple[repeat: uint16; vk, scancode: uint8; extendedKey: bool] {.noinit, inline, raises: [].} =
  let lParam = cast[uint](self.lParam)
  result.vk = cast[uint8](self.wParam)
  result.repeat = cast[uint16](lParam)
  result.scancode = cast[uint8](lParam shr 16)
  result.extendedKey = (lParam and (1 shl 24)) != 0

func charEvent*(self: WmMsg): tuple[c: uint16; repeat: uint16; scancode: uint8; extendedKey: bool] {.inline, raises: [].} =
  let lParam = cast[uint](self.lParam)
  result.c = cast[uint16](self.wParam)
  result.repeat = cast[uint16](lParam)
  result.scancode = cast[uint8](lParam shr 16)
  result.extendedKey = (lParam and (1 shl 24)) != 0

func unpackCoordFromLPARAM(self: WmMsg): tuple[x, y: int16] {.noinit, inline, raises: [].} =
  ## For use with WM_NCHITTEST, WM_LBUTTONDOWN etc.
  result.x = cast[int16](cast[uint16](self.lParam))
  result.y = cast[int16](uint16(cast[uint32](self.lParam) shr 16))

func mouseWheelEvent*(self: WmMsg): tuple[delta: int16; mk: set[WmMouseKey]; x, y: int16] {.noinit, inline, raises: [].} =
  let mask = cast[uint32](self.wParam) and WmMouseKeyMask
  result.mk = cast[typeof result.mk](mask)
  (result.x, result.y) = unpackCoordFromLPARAM(self)
  result.delta = cast[int16](uint16 cast[uint32](self.wParam) shr 16)

func `$`*(self: WmMsg): string {.raises: [].} =
  let msg = self.msg
  result.add "(msg: "
  result.addInt msg
  let msgName = wmMsgCodeToName(msg)
  if msgName[0] != '\0':
    result.add " `"
    result.add msgName
    result.add '`'
  result.add ", wParam: "
  result.addInt self.wParam
  result.add ", lParam: "
  result.addInt self.lParam

  # Message-specific info
  if msg == wcWM_CREATE:
    result.add ", createInfo: "
    result.add $createInfo(self)
  elif msg >= wcWM_POINTERUPDATE and msg <= wcWM_POINTERLEAVE: # wcWM_POINTER{UPDATE,DOWN,UP,ENTER,LEAVE}
    result.add ", pointerUpdateEvent: "
    result.add $pointerUpdateEvent(self)
  elif msg >= wcWM_KEYDOWN and msg <= wcWM_KEYUP:
    result.add ", keyEvent: "
    result.add $keyEvent(self)
  elif msg == wcWM_MOUSEWHEEL:
    result.add ", mouseWheelEvent: "
    result.add $mouseWheelEvent(self)

  result.add ')'

# }}}
# {{{ Others

proc wmRun*() =
  var msg: WtMSG
  while wpGetMessageW(msg, WmHwnd(0), 0, 0) > 0:
    discard wpTranslateMessage(msg)
    discard wpDispatchMessageW(msg)

proc wmQuit*(exitCode: int32 = 0'i32) {.raises: [].} =
  wpPostQuitMessage(exitCode)

proc wmEnableMouseInPointer*(enable: bool): WinResult {.raises: [].} =
  if wpEnableMouseInPointer(WtBOOL enable) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

proc wmGetKeyState*(nVirtKey: int32): int16 {.raises: [].} =
  wpGetKeyState(nVirtKey)

# }}}
# {{{ DPI awareness

type
  WmDpiAwarenessContext* = enum
    wmDpiContextUnknown
    wmDpiContextUnaware
    wmDpiContextSystemAware
    wmDpiContextPerMonitorAware
    wmDpiContextPerMonitorAwareV2
    wmDpiContextUnawareGdiScaled

const
  WmDpiAwarenessContextMapping: array[WmDpiAwarenessContext, int] = [
    wmDpiContextUnknown: 0,
    wmDpiContextUnaware: -1,
    wmDpiContextSystemAware: -2,
    wmDpiContextPerMonitorAware: -3,
    wmDpiContextPerMonitorAwareV2: -4,
    wmDpiContextUnawareGdiScaled: -5,
  ]

proc wmSetProcessDpiAwarenessContext*(ctx: WmDpiAwarenessContext): WinResult {.raises: [].} =
  if wpSetProcessDpiAwarenessContext(WmDpiAwarenessContextMapping[ctx]) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())
# }}}

proc wmGetPointerDeviceRects*(device: WinHandle; pointerDeviceRect, displayRect: var WinRect): WinResult {.raises: [].} =
  if wpGetPointerDeviceRects(device, pointerDeviceRect, displayRect) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

# vim: set foldmethod=marker:
