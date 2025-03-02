type
  WtWIN32_ERROR = distinct uint32 # enum
  WtWINDOW_LONG_PTR_INDEX = distinct int32 # enum
  WtBOOL = int32
  WtSHOW_WINDOW_CMD = distinct uint32 # enum
  WtHRGN = int
  WtREDRAW_WINDOW_FLAGS = distinct uint32 # enum
  WtSET_WINDOW_POS_FLAGS = distinct uint32 # enum
  WmPointerInputType* = distinct int32 # enum
  WtPWSTR = ptr UncheckedArray[uint16]
  WtLRESULT = int
  WtWPARAM = uint
  WtLPARAM = int
  WmClassStyles* = distinct uint32 # enum
  WmWndProc* = proc(param0: WmHwnd; param1: uint32; param2: WtWPARAM; param3: WtLPARAM): WtLRESULT {.w32callback.}
  WtHBRUSH = int
  WmWndClassEx* {.pure, byref.} = object
    cbSize*: uint32
    style*: WmClassStyles
    lpfnWndProc*: WmWndProc
    cbClsExtra*: int32
    cbWndExtra*: int32
    hInstance*: WinInstance
    hIcon*: WmIcon
    hCursor*: WmCursor
    hbrBackground*: WtHBRUSH
    lpszMenuName*: WtPWSTR
    lpszClassName*: WtPWSTR
    hIconSm*: WmIcon
  WmRawWindowExStyle* = distinct uint32 # enum
  WmRawWindowStyle* = distinct uint32 # enum
  WtHMENU = int
  WtMSG {.pure, byref.} = object
    hwnd*: WmHwnd
    message*: uint32
    wParam*: WtWPARAM
    lParam*: WtLPARAM
    time*: uint32
    pt*: WinPoint
  WtDPI_AWARENESS_CONTEXT = int
  WmPointerFlags* = distinct uint32 # enum
  WmPointerButtonChangeType* = distinct int32 # enum
  WmPointerInfo* {.pure, byref.} = object
    pointerType*: WmPointerInputType
    pointerId*: uint32
    frameId*: uint32
    pointerFlags*: WmPointerFlags
    sourceDevice*: WinHandle
    hwndTarget*: WmHwnd
    ptPixelLocation*: WinPoint
    ptHimetricLocation*: WinPoint
    ptPixelLocationRaw*: WinPoint
    ptHimetricLocationRaw*: WinPoint
    dwTime*: uint32
    historyCount*: uint32
    InputData*: int32
    dwKeyStates*: uint32
    PerformanceCount*: uint64
    ButtonChangeType*: WmPointerButtonChangeType
  WmPointerPenInfo* {.pure, byref.} = object
    pointerInfo*: WmPointerInfo
    penFlags*: uint32
    penMask*: uint32
    pressure*: uint32
    rotation*: uint32
    tiltX*: int32
    tiltY*: int32
  WtTRACKMOUSEEVENT_FLAGS = distinct uint32 # enum
  WtTRACKMOUSEEVENT {.pure, byref.} = object
    cbSize*: uint32
    dwFlags*: WtTRACKMOUSEEVENT_FLAGS
    hwndTrack*: WmHwnd
    dwHoverTime*: uint32
  WtCREATESTRUCTW {.pure, byref.} = object
    lpCreateParams*: pointer
    hInstance*: WinInstance
    hMenu*: WtHMENU
    hwndParent*: WmHwnd
    cy*: int32
    cx*: int32
    y*: int32
    x*: int32
    style*: int32
    lpszName*: WtPWSTR
    lpszClass*: WtPWSTR
    dwExStyle*: uint32

const
  wcGWL_EXSTYLE {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-20)
  wcGWLP_HINSTANCE {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-6)
  wcGWLP_HWNDPARENT {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-8)
  wcGWLP_ID {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-12)
  wcGWL_STYLE {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-16)
  wcGWLP_USERDATA {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-21)
  wcGWLP_WNDPROC {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-4)
  wcGWL_HINSTANCE {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-6)
  wcGWL_ID {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-12)
  wcGWL_USERDATA {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-21)
  wcGWL_WNDPROC {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-4)
  wcGWL_HWNDPARENT {.used.} = cast[WtWINDOW_LONG_PTR_INDEX](-8)
  wcSW_FORCEMINIMIZE {.used.} = cast[WtSHOW_WINDOW_CMD](11)
  wcSW_HIDE {.used.} = cast[WtSHOW_WINDOW_CMD](0)
  wcSW_MAXIMIZE {.used.} = cast[WtSHOW_WINDOW_CMD](3)
  wcSW_MINIMIZE {.used.} = cast[WtSHOW_WINDOW_CMD](6)
  wcSW_RESTORE {.used.} = cast[WtSHOW_WINDOW_CMD](9)
  wcSW_SHOW {.used.} = cast[WtSHOW_WINDOW_CMD](5)
  wcSW_SHOWDEFAULT {.used.} = cast[WtSHOW_WINDOW_CMD](10)
  wcSW_SHOWMAXIMIZED {.used.} = cast[WtSHOW_WINDOW_CMD](3)
  wcSW_SHOWMINIMIZED {.used.} = cast[WtSHOW_WINDOW_CMD](2)
  wcSW_SHOWMINNOACTIVE {.used.} = cast[WtSHOW_WINDOW_CMD](7)
  wcSW_SHOWNA {.used.} = cast[WtSHOW_WINDOW_CMD](8)
  wcSW_SHOWNOACTIVATE {.used.} = cast[WtSHOW_WINDOW_CMD](4)
  wcSW_SHOWNORMAL {.used.} = cast[WtSHOW_WINDOW_CMD](1)
  wcSW_NORMAL {.used.} = cast[WtSHOW_WINDOW_CMD](1)
  wcSW_MAX {.used.} = cast[WtSHOW_WINDOW_CMD](11)
  wcSW_PARENTCLOSING {.used.} = cast[WtSHOW_WINDOW_CMD](1)
  wcSW_OTHERZOOM {.used.} = cast[WtSHOW_WINDOW_CMD](2)
  wcSW_PARENTOPENING {.used.} = cast[WtSHOW_WINDOW_CMD](3)
  wcSW_OTHERUNZOOM {.used.} = cast[WtSHOW_WINDOW_CMD](4)
  wcSW_SCROLLCHILDREN {.used.} = cast[WtSHOW_WINDOW_CMD](1)
  wcSW_INVALIDATE {.used.} = cast[WtSHOW_WINDOW_CMD](2)
  wcSW_ERASE {.used.} = cast[WtSHOW_WINDOW_CMD](4)
  wcSW_SMOOTHSCROLL {.used.} = cast[WtSHOW_WINDOW_CMD](16)
  wcRDW_INVALIDATE {.used.} = cast[WtREDRAW_WINDOW_FLAGS](1)
  wcRDW_INTERNALPAINT {.used.} = cast[WtREDRAW_WINDOW_FLAGS](2)
  wcRDW_ERASE {.used.} = cast[WtREDRAW_WINDOW_FLAGS](4)
  wcRDW_VALIDATE {.used.} = cast[WtREDRAW_WINDOW_FLAGS](8)
  wcRDW_NOINTERNALPAINT {.used.} = cast[WtREDRAW_WINDOW_FLAGS](16)
  wcRDW_NOERASE {.used.} = cast[WtREDRAW_WINDOW_FLAGS](32)
  wcRDW_NOCHILDREN {.used.} = cast[WtREDRAW_WINDOW_FLAGS](64)
  wcRDW_ALLCHILDREN {.used.} = cast[WtREDRAW_WINDOW_FLAGS](128)
  wcRDW_UPDATENOW {.used.} = cast[WtREDRAW_WINDOW_FLAGS](256)
  wcRDW_ERASENOW {.used.} = cast[WtREDRAW_WINDOW_FLAGS](512)
  wcRDW_FRAME {.used.} = cast[WtREDRAW_WINDOW_FLAGS](1024)
  wcRDW_NOFRAME {.used.} = cast[WtREDRAW_WINDOW_FLAGS](2048)
  wcSWP_ASYNCWINDOWPOS {.used.} = cast[WtSET_WINDOW_POS_FLAGS](16384)
  wcSWP_DEFERERASE {.used.} = cast[WtSET_WINDOW_POS_FLAGS](8192)
  wcSWP_DRAWFRAME {.used.} = cast[WtSET_WINDOW_POS_FLAGS](32)
  wcSWP_FRAMECHANGED {.used.} = cast[WtSET_WINDOW_POS_FLAGS](32)
  wcSWP_HIDEWINDOW {.used.} = cast[WtSET_WINDOW_POS_FLAGS](128)
  wcSWP_NOACTIVATE {.used.} = cast[WtSET_WINDOW_POS_FLAGS](16)
  wcSWP_NOCOPYBITS {.used.} = cast[WtSET_WINDOW_POS_FLAGS](256)
  wcSWP_NOMOVE {.used.} = cast[WtSET_WINDOW_POS_FLAGS](2)
  wcSWP_NOOWNERZORDER {.used.} = cast[WtSET_WINDOW_POS_FLAGS](512)
  wcSWP_NOREDRAW {.used.} = cast[WtSET_WINDOW_POS_FLAGS](8)
  wcSWP_NOREPOSITION {.used.} = cast[WtSET_WINDOW_POS_FLAGS](512)
  wcSWP_NOSENDCHANGING {.used.} = cast[WtSET_WINDOW_POS_FLAGS](1024)
  wcSWP_NOSIZE {.used.} = cast[WtSET_WINDOW_POS_FLAGS](1)
  wcSWP_NOZORDER {.used.} = cast[WtSET_WINDOW_POS_FLAGS](4)
  wcSWP_SHOWWINDOW {.used.} = cast[WtSET_WINDOW_POS_FLAGS](64)
  wcTME_CANCEL {.used.} = cast[WtTRACKMOUSEEVENT_FLAGS](2147483648)
  wcTME_HOVER {.used.} = cast[WtTRACKMOUSEEVENT_FLAGS](1)
  wcTME_LEAVE {.used.} = cast[WtTRACKMOUSEEVENT_FLAGS](2)
  wcTME_NONCLIENT {.used.} = cast[WtTRACKMOUSEEVENT_FLAGS](16)
  wcTME_QUERY {.used.} = cast[WtTRACKMOUSEEVENT_FLAGS](1073741824)

func `==`*(x, y: WmPointerInputType): bool {.used, borrow.}
func `<`*(x, y: WmPointerInputType): bool {.used, borrow.}
func `<=`*(x, y: WmPointerInputType): bool {.used, borrow.}
func `or`*(x, y: WmPointerInputType): WmPointerInputType {.used, borrow.}
func `and`*(x, y: WmPointerInputType): WmPointerInputType {.used, borrow.}

func `==`*(x, y: WmClassStyles): bool {.used, borrow.}
func `<`*(x, y: WmClassStyles): bool {.used, borrow.}
func `<=`*(x, y: WmClassStyles): bool {.used, borrow.}
func `or`*(x, y: WmClassStyles): WmClassStyles {.used, borrow.}
func `and`*(x, y: WmClassStyles): WmClassStyles {.used, borrow.}

func `==`*(x, y: WmRawWindowExStyle): bool {.used, borrow.}
func `<`*(x, y: WmRawWindowExStyle): bool {.used, borrow.}
func `<=`*(x, y: WmRawWindowExStyle): bool {.used, borrow.}
func `or`*(x, y: WmRawWindowExStyle): WmRawWindowExStyle {.used, borrow.}
func `and`*(x, y: WmRawWindowExStyle): WmRawWindowExStyle {.used, borrow.}

func `==`*(x, y: WmRawWindowStyle): bool {.used, borrow.}
func `<`*(x, y: WmRawWindowStyle): bool {.used, borrow.}
func `<=`*(x, y: WmRawWindowStyle): bool {.used, borrow.}
func `or`*(x, y: WmRawWindowStyle): WmRawWindowStyle {.used, borrow.}
func `and`*(x, y: WmRawWindowStyle): WmRawWindowStyle {.used, borrow.}

func `==`*(x, y: WmPointerFlags): bool {.used, borrow.}
func `<`*(x, y: WmPointerFlags): bool {.used, borrow.}
func `<=`*(x, y: WmPointerFlags): bool {.used, borrow.}
func `or`*(x, y: WmPointerFlags): WmPointerFlags {.used, borrow.}
func `and`*(x, y: WmPointerFlags): WmPointerFlags {.used, borrow.}

func `==`*(x, y: WmPointerButtonChangeType): bool {.used, borrow.}
func `<`*(x, y: WmPointerButtonChangeType): bool {.used, borrow.}
func `<=`*(x, y: WmPointerButtonChangeType): bool {.used, borrow.}
func `or`*(x, y: WmPointerButtonChangeType): WmPointerButtonChangeType {.used, borrow.}
func `and`*(x, y: WmPointerButtonChangeType): WmPointerButtonChangeType {.used, borrow.}

proc wpGetLastError(): WtWIN32_ERROR {.importc: "GetLastError", dllproc_KERNEL32.}
proc wpSetLastError(dwErrCode: WtWIN32_ERROR): void {.importc: "SetLastError", dllproc_KERNEL32.}
proc wpGetWindowLongPtrW(hWnd: WmHwnd; nIndex: WtWINDOW_LONG_PTR_INDEX): int {.importc: "GetWindowLongPtrW", dllproc_USER32.} # arch-specific
proc wpSetWindowLongPtrW(hWnd: WmHwnd; nIndex: WtWINDOW_LONG_PTR_INDEX; dwNewLong: int): int {.importc: "SetWindowLongPtrW", dllproc_USER32.} # arch-specific
proc wpMoveWindow(hWnd: WmHwnd; X: int32; Y: int32; nWidth: int32; nHeight: int32; bRepaint: WtBOOL): WtBOOL {.importc: "MoveWindow", dllproc_USER32.}
proc wpDestroyWindow(hWnd: WmHwnd): WtBOOL {.importc: "DestroyWindow", dllproc_USER32.}
proc wpShowWindow(hWnd: WmHwnd; nCmdShow: WtSHOW_WINDOW_CMD): WtBOOL {.importc: "ShowWindow", dllproc_USER32.}
proc wpInvalidateRect(hWnd: WmHwnd; lpRect: ptr WinRect; bErase: WtBOOL): WtBOOL {.importc: "InvalidateRect", dllproc_USER32.}
proc wpValidateRect(hWnd: WmHwnd; lpRect: ptr WinRect): WtBOOL {.importc: "ValidateRect", dllproc_USER32.}
proc wpGetClientRect(hWnd: WmHwnd; lpRect: var WinRect): WtBOOL {.importc: "GetClientRect", dllproc_USER32.}
proc wpGetWindowRect(hWnd: WmHwnd; lpRect: var WinRect): WtBOOL {.importc: "GetWindowRect", dllproc_USER32.}
proc wpScreenToClient(hWnd: WmHwnd; lpPoint: var WinPoint): WtBOOL {.importc: "ScreenToClient", dllproc_USER32.}
proc wpClientToScreen(hWnd: WmHwnd; lpPoint: var WinPoint): WtBOOL {.importc: "ClientToScreen", dllproc_USER32.}
proc wpGetUpdateRect(hWnd: WmHwnd; lpRect: ptr WinRect; bErase: WtBOOL): WtBOOL {.importc: "GetUpdateRect", dllproc_USER32.}
proc wpRedrawWindow(hWnd: WmHwnd; lprcUpdate: ptr WinRect; hrgnUpdate: WtHRGN; flags: WtREDRAW_WINDOW_FLAGS): WtBOOL {.importc: "RedrawWindow", dllproc_USER32.}
proc wpGetDpiForWindow(hwnd: WmHwnd): uint32 {.importc: "GetDpiForWindow", dllproc_USER32.}
proc wpSetWindowPos(hWnd: WmHwnd; hWndInsertAfter: WmHwnd; X: int32; Y: int32; cx: int32; cy: int32; uFlags: WtSET_WINDOW_POS_FLAGS): WtBOOL {.importc: "SetWindowPos", dllproc_USER32.}
proc wpGetPointerType(pointerId: uint32; pointerType: var WmPointerInputType): WtBOOL {.importc: "GetPointerType", dllproc_USER32.}
proc wpLoadCursorW(hInstance: WinInstance; lpCursorName: WtPWSTR): WmCursor {.importc: "LoadCursorW", dllproc_USER32.}
proc wpDefWindowProcW(hWnd: WmHwnd; Msg: uint32; wParam: WtWPARAM; lParam: WtLPARAM): WtLRESULT {.importc: "DefWindowProcW", dllproc_USER32.}
proc wpRegisterClassExW(param0: WmWndClassEx): uint16 {.importc: "RegisterClassExW", dllproc_USER32.}
proc wpCreateWindowExW(dwExStyle: WmRawWindowExStyle; lpClassName: WtPWSTR; lpWindowName: WtPWSTR; dwStyle: WmRawWindowStyle; X: int32; Y: int32; nWidth: int32; nHeight: int32; hWndParent: WmHwnd; hMenu: WtHMENU; hInstance: WinInstance; lpParam: pointer): WmHwnd {.importc: "CreateWindowExW", dllproc_USER32.}
proc wpPostQuitMessage(nExitCode: int32): void {.importc: "PostQuitMessage", dllproc_USER32.}
proc wpGetMessageW(lpMsg: var WtMSG; hWnd: WmHwnd; wMsgFilterMin: uint32; wMsgFilterMax: uint32): WtBOOL {.importc: "GetMessageW", dllproc_USER32.}
proc wpTranslateMessage(lpMsg: WtMSG): WtBOOL {.importc: "TranslateMessage", dllproc_USER32.}
proc wpDispatchMessageW(lpMsg: WtMSG): WtLRESULT {.importc: "DispatchMessageW", dllproc_USER32.}
proc wpEnableMouseInPointer(fEnable: WtBOOL): WtBOOL {.importc: "EnableMouseInPointer", dllproc_USER32.}
proc wpSetProcessDpiAwarenessContext(value: WtDPI_AWARENESS_CONTEXT): WtBOOL {.importc: "SetProcessDpiAwarenessContext", dllproc_USER32.}
proc wpGetPointerInfo(pointerId: uint32; pointerInfo: var WmPointerInfo): WtBOOL {.importc: "GetPointerInfo", dllproc_USER32.}
proc wpGetPointerInfoHistory(pointerId: uint32; entriesCount: var uint32; pointerInfo: ptr UncheckedArray[WmPointerInfo]): WtBOOL {.importc: "GetPointerInfoHistory", dllproc_USER32.}
proc wpGetPointerPenInfo(pointerId: uint32; penInfo: var WmPointerPenInfo): WtBOOL {.importc: "GetPointerPenInfo", dllproc_USER32.}
proc wpGetPointerPenInfoHistory(pointerId: uint32; entriesCount: var uint32; penInfo: ptr UncheckedArray[WmPointerPenInfo]): WtBOOL {.importc: "GetPointerPenInfoHistory", dllproc_USER32.}
proc wpGetPointerDeviceRects(device: WinHandle; pointerDeviceRect: var WinRect; displayRect: var WinRect): WtBOOL {.importc: "GetPointerDeviceRects", dllproc_USER32.}
proc wpGetKeyState(nVirtKey: int32): int16 {.importc: "GetKeyState", dllproc_USER32.}
proc wpTrackMouseEvent(lpEventTrack: var WtTRACKMOUSEEVENT): WtBOOL {.importc: "TrackMouseEvent", dllproc_USER32.}
proc wpSetCursor(hCursor: WmCursor): WmCursor {.importc: "SetCursor", dllproc_USER32.}
proc wpPostMessageW(hWnd: WmHwnd; Msg: uint32; wParam: WtWPARAM; lParam: WtLPARAM): WtBOOL {.importc: "PostMessageW", dllproc_USER32.}
proc wpLoadIconW(hInstance: WinInstance; lpIconName: WtPWSTR): WmIcon {.importc: "LoadIconW", dllproc_USER32.}

