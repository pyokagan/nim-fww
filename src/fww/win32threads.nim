import win32result

export win32result

{.stackTrace:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}
{.pragma: dllproc_KERNEL32, stdcall, gcsafe.}

# {{{ cimports
type
  WtBOOL = int32
  WtHANDLE = int
  WtSECURITY_ATTRIBUTES {.pure, byref.} = object
    nLength*: uint32
    lpSecurityDescriptor*: pointer
    bInheritHandle*: WtBOOL
  WtLPTHREAD_START_ROUTINE = proc(lpThreadParameter: pointer): uint32 {.w32callback.}
  WtTHREAD_CREATION_FLAGS = distinct uint32 # enum
  WtWIN32_ERROR = distinct uint32 # enum
  WtLIST_ENTRY {.pure, byref.} = object
    Flink*: ptr WtLIST_ENTRY
    Blink*: ptr WtLIST_ENTRY
  WtRTL_CRITICAL_SECTION_DEBUG {.pure, byref.} = object
    Type*: uint16
    CreatorBackTraceIndex*: uint16
    CriticalSection*: ptr WtRTL_CRITICAL_SECTION
    ProcessLocksList*: WtLIST_ENTRY
    EntryCount*: uint32
    ContentionCount*: uint32
    Flags*: uint32
    CreatorBackTraceIndexHigh*: uint16
    SpareWORD*: uint16
  WtRTL_CRITICAL_SECTION {.pure, byref.} = object
    DebugInfo*: ptr WtRTL_CRITICAL_SECTION_DEBUG
    LockCount*: int32
    RecursionCount*: int32
    OwningThread*: WtHANDLE
    LockSemaphore*: WtHANDLE
    SpinCount*: uint
  WtRTL_CONDITION_VARIABLE {.pure, byref.} = object
    Ptr*: pointer
  WtRTL_RUN_ONCE {.pure, byref, union.} = object
    Ptr*: pointer

const
  wcTHREAD_CREATE_RUN_IMMEDIATELY {.used.} = cast[WtTHREAD_CREATION_FLAGS](0)
  wcTHREAD_CREATE_SUSPENDED {.used.} = cast[WtTHREAD_CREATION_FLAGS](4)
  wcSTACK_SIZE_PARAM_IS_A_RESERVATION {.used.} = cast[WtTHREAD_CREATION_FLAGS](65536)
  wcINFINITE = cast[uint32](4294967295)
  wcINIT_ONCE_INIT_FAILED = cast[uint32](4)

func `==`(x, y: WtTHREAD_CREATION_FLAGS): bool {.used, borrow.}
func `<`(x, y: WtTHREAD_CREATION_FLAGS): bool {.used, borrow.}
func `<=`(x, y: WtTHREAD_CREATION_FLAGS): bool {.used, borrow.}
func `or`(x, y: WtTHREAD_CREATION_FLAGS): WtTHREAD_CREATION_FLAGS {.used, borrow.}
func `and`(x, y: WtTHREAD_CREATION_FLAGS): WtTHREAD_CREATION_FLAGS {.used, borrow.}
func `$`(x: WtTHREAD_CREATION_FLAGS): string {.used, borrow.}

func `==`(x, y: WtWIN32_ERROR): bool {.used, borrow.}
func `<`(x, y: WtWIN32_ERROR): bool {.used, borrow.}
func `<=`(x, y: WtWIN32_ERROR): bool {.used, borrow.}
func `or`(x, y: WtWIN32_ERROR): WtWIN32_ERROR {.used, borrow.}
func `and`(x, y: WtWIN32_ERROR): WtWIN32_ERROR {.used, borrow.}
func `$`(x: WtWIN32_ERROR): string {.used, borrow.}

proc wpCloseHandle(hObject: WtHANDLE): WtBOOL {.importc: "CloseHandle", dllproc_KERNEL32.}
proc wpCreateThread(lpThreadAttributes: ptr WtSECURITY_ATTRIBUTES; dwStackSize: uint; lpStartAddress: WtLPTHREAD_START_ROUTINE; lpParameter: pointer; dwCreationFlags: WtTHREAD_CREATION_FLAGS; lpThreadId: ptr uint32): WtHANDLE {.importc: "CreateThread", dllproc_KERNEL32.}
proc wpWaitForSingleObject(hHandle: WtHANDLE; dwMilliseconds: uint32): uint32 {.importc: "WaitForSingleObject", dllproc_KERNEL32.}
proc wpGetLastError(): WtWIN32_ERROR {.importc: "GetLastError", dllproc_KERNEL32.}
proc wpInitializeCriticalSectionAndSpinCount(lpCriticalSection: var WtRTL_CRITICAL_SECTION; dwSpinCount: uint32): WtBOOL {.importc: "InitializeCriticalSectionAndSpinCount", dllproc_KERNEL32.}
proc wpEnterCriticalSection(lpCriticalSection: var WtRTL_CRITICAL_SECTION): void {.importc: "EnterCriticalSection", dllproc_KERNEL32.}
proc wpLeaveCriticalSection(lpCriticalSection: var WtRTL_CRITICAL_SECTION): void {.importc: "LeaveCriticalSection", dllproc_KERNEL32.}
proc wpDeleteCriticalSection(lpCriticalSection: var WtRTL_CRITICAL_SECTION): void {.importc: "DeleteCriticalSection", dllproc_KERNEL32.}
proc wpInitializeConditionVariable(ConditionVariable: var WtRTL_CONDITION_VARIABLE): void {.importc: "InitializeConditionVariable", dllproc_KERNEL32.}
proc wpSleepConditionVariableCS(ConditionVariable: var WtRTL_CONDITION_VARIABLE; CriticalSection: var WtRTL_CRITICAL_SECTION; dwMilliseconds: uint32): WtBOOL {.importc: "SleepConditionVariableCS", dllproc_KERNEL32.}
proc wpWakeAllConditionVariable(ConditionVariable: var WtRTL_CONDITION_VARIABLE): void {.importc: "WakeAllConditionVariable", dllproc_KERNEL32.}
proc wpWakeConditionVariable(ConditionVariable: var WtRTL_CONDITION_VARIABLE): void {.importc: "WakeConditionVariable", dllproc_KERNEL32.}
proc wpInitOnceBeginInitialize(lpInitOnce: var WtRTL_RUN_ONCE; dwFlags: uint32; fPending: var WtBOOL; lpContext: ptr pointer): WtBOOL {.importc: "InitOnceBeginInitialize", dllproc_KERNEL32.}
proc wpInitOnceComplete(lpInitOnce: var WtRTL_RUN_ONCE; dwFlags: uint32; lpContext: pointer): WtBOOL {.importc: "InitOnceComplete", dllproc_KERNEL32.}

# }}}

const
  SleepInfinite* = wcINFINITE
  SleepTimeout* = winResultFromWin32(1460) # ERROR_TIMEOUT

type
  Win32ThreadProc* = proc (userdata: pointer): uint32 {.stdcall, gcsafe, raises: [].}
  Win32Thread* = object
    handle*: WtHANDLE

proc `=copy`*(dst: var Win32Thread; src: Win32Thread) {.error.}

when NimMajor >= 2:
  proc `=destroy`*(self: Win32Thread) {.raises: [].} =
    if self.handle != 0:
      discard wpCloseHandle(self.handle)
else:
  proc `=destroy`*(self: var Win32Thread) {.raises: [].} =
    if self.handle != 0:
      discard wpCloseHandle(self.handle)

{.push stackTrace:off, checks:off.}
func started*(self: Win32Thread): bool {.inline, raises: [].} =
  self.handle != 0
{.pop.}

proc startThread*(self: var Win32Thread; p: Win32ThreadProc; userdata: pointer): WinResult {.raises: [].} =
  assert(not self.started)
  if self.started:
    return
  self.handle = wpCreateThread(nil, 0, p, userdata, WtTHREAD_CREATION_FLAGS(0), nil)
  if self.handle == 0:
    return winResultFromWin32(wpGetLastError().uint32)

proc tryJoinThread*(self: var Win32Thread; ms: uint32): bool {.raises: [].} =
  if not self.started:
    return true

  let res = wpWaitForSingleObject(self.handle, ms)
  if res == 0: # WAIT_OBJECT_0
    # OK! Cleanup
    discard wpCloseHandle(self.handle)
    self.handle = 0
    result = true

proc joinThread*(self: var Win32Thread) {.raises: [].} =
  discard tryJoinThread(self, wcINFINITE)

type
  Win32ThreadWithData*[T] = object
    t*: Win32Thread
    data*: ptr T

proc `=copy`*[T](dst: var Win32ThreadWithData[T]; src: Win32ThreadWithData[T]) {.error.}

when NimMajor >= 2:
  proc `=destroy`*[T](self: Win32ThreadWithData[T]) {.raises: [].} =
    if (not self.t.started) and (not self.data.isNil):
      `=destroy`(self.data[])
      dealloc(self.data)
    `=destroy`(self.t)
else:
  proc `=destroy`*[T](self: var Win32ThreadWithData[T]) {.raises: [].} =
    if (not self.t.started) and (not self.data.isNil):
      `=destroy`(self.data[])
      dealloc(self.data)
    `=destroy`(self.t)

{.push stackTrace:off, checks:off.}
func started*(self: Win32ThreadWithData): bool {.inline, raises: [].} =
  self.t.started
{.pop.}

proc startThread*[T](self: var Win32ThreadWithData[T]; p: Win32ThreadProc; data: ptr T): WinResult {.raises: [].} =
  assert(not self.started)
  if self.started:
    return
  if not self.data.isNil:
    `=destroy`(self.data[])
    dealloc(self.data)
    self.data = nil
  self.data = data
  startThread(self.t, p, self.data)

proc startThread*[T](self: var Win32ThreadWithData[T]; p: Win32ThreadProc; data: sink T): WinResult {.raises: [].} =
  assert(not self.started)
  if self.started:
    return
  if not self.data.isNil:
    let oldData = move self.data[]
    discard oldData
    dealloc(self.data)
    self.data = nil
  self.data = create(T)
  self.data[] = move data
  startThread(self.t, p, self.data)

proc tryJoinThread*[T](self: var Win32ThreadWithData[T]; ms: uint32): tuple[joined: bool; data: T] {.raises: [].} =
  if tryJoinThread(self.t, ms):
    assert(not self.data.isNil)
    result.joined = true
    result.data = move self.data[]
    dealloc(self.data)
    self.data = nil

proc joinThread*[T](self: var Win32ThreadWithData[T]): T {.raises: [].} =
  joinThread(self.t)
  result = move self.data[]
  dealloc(self.data)
  self.data = nil

type
  Win32CriticalSection* = WtRTL_CRITICAL_SECTION

proc initCriticalSection*(self: var Win32CriticalSection; spinCount = 0'u32) {.raises: [].} =
  # from https://learn.microsoft.com/en-us/windows/win32/api/synchapi/nf-synchapi-initializecriticalsectionandspincount
  #   "Windows Server 2003 and Windows XP: If the function succeeds, the return value is nonzero.
  #   If the function fails, the return value is zero 0.
  #   To get extended error information, call GetLastError.
  #   Starting with Windows Vista, the InitializeCriticalSectionAndSpinCount function always succeeds,
  #   even in low memory situations."
  discard wpInitializeCriticalSectionAndSpinCount(self, spinCount)

proc enterCriticalSection*(self: var Win32CriticalSection) {.raises: [].} =
  wpEnterCriticalSection(self)

proc leaveCriticalSection*(self: var Win32CriticalSection) {.raises: [].} =
  wpLeaveCriticalSection(self)

proc deleteCriticalSection*(self: var Win32CriticalSection) {.raises: [].} =
  wpDeleteCriticalSection(self)

type
  Win32ConditionVariable* = WtRTL_CONDITION_VARIABLE

proc initConditionVariable*(self: var Win32ConditionVariable) {.raises: [].} =
  wpInitializeConditionVariable(self)

proc sleepConditionVariable*(self: var Win32ConditionVariable; cs: var Win32CriticalSection; timeoutMs = SleepInfinite.uint32): WinResult {.raises: [].} =
  if wpSleepConditionVariableCS(self, cs, timeoutMs) == 0:
    result = winResultFromWin32(wpGetLastError().uint32)

proc wakeConditionVariable*(self: var Win32ConditionVariable) {.raises: [].} =
  wpWakeConditionVariable(self)

proc wakeAllConditionVariable*(self: var Win32ConditionVariable) {.raises: [].} =
  wpWakeAllConditionVariable(self)

type
  Win32InitOnce* = WtRTL_RUN_ONCE
  Win32InitOnceResult* = enum
    win32InitOnceError
    win32InitOnceRun
    win32InitOnceAlreadyRan

proc beginOnce*(guard: var Win32InitOnce; pending: var bool): WinResult {.raises: [].} =
  var tmpPending = WtBOOL(false)
  let res = wpInitOnceBeginInitialize(guard, 0, tmpPending, nil)
  if res == 0:
    return winResultFromWin32(uint32 wpGetLastError())
  pending = tmpPending != 0

proc completeOnce*(guard: var Win32InitOnce; failed: bool): WinResult {.raises: [].} =
  let flags = if failed: wcINIT_ONCE_INIT_FAILED else: 0'u32
  if wpInitOnceComplete(guard, flags, nil) == 0:
    result = winResultFromWin32(uint32 wpGetLastError())

# vim: set foldmethod=marker:
