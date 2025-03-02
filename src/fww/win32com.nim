import win32result # WinResult
import win32guid # WinGuid

export win32result

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}
{.pragma: dllproc_OLE32, stdcall, gcsafe, raises: [].}

type
  ComClsCtx* = distinct uint32 # enum

func `==`*(x, y: ComClsCtx): bool {.borrow.}
func `or`*(x, y: ComClsCtx): ComClsCtx {.borrow.}
func `and`*(x, y: ComClsCtx): ComClsCtx {.borrow.}

# {{{ cimports
type
  WtCOINIT = uint32 # enum

const
  wcCOINIT_APARTMENTTHREADED {.used.} = cast[WtCOINIT](2)
  wcCOINIT_MULTITHREADED {.used.} = cast[WtCOINIT](0)
  wcCOINIT_DISABLE_OLE1DDE {.used.} = cast[WtCOINIT](4)
  wcCOINIT_SPEED_OVER_MEMORY {.used.} = cast[WtCOINIT](8)
  wcCLSCTX_INPROC_SERVER {.used.} = cast[ComClsCtx](1)
  wcCLSCTX_INPROC_HANDLER {.used.} = cast[ComClsCtx](2)
  wcCLSCTX_LOCAL_SERVER {.used.} = cast[ComClsCtx](4)
  wcCLSCTX_INPROC_SERVER16 {.used.} = cast[ComClsCtx](8)
  wcCLSCTX_REMOTE_SERVER {.used.} = cast[ComClsCtx](16)
  wcCLSCTX_INPROC_HANDLER16 {.used.} = cast[ComClsCtx](32)
  wcCLSCTX_RESERVED1 {.used.} = cast[ComClsCtx](64)
  wcCLSCTX_RESERVED2 {.used.} = cast[ComClsCtx](128)
  wcCLSCTX_RESERVED3 {.used.} = cast[ComClsCtx](256)
  wcCLSCTX_RESERVED4 {.used.} = cast[ComClsCtx](512)
  wcCLSCTX_NO_CODE_DOWNLOAD {.used.} = cast[ComClsCtx](1024)
  wcCLSCTX_RESERVED5 {.used.} = cast[ComClsCtx](2048)
  wcCLSCTX_NO_CUSTOM_MARSHAL {.used.} = cast[ComClsCtx](4096)
  wcCLSCTX_ENABLE_CODE_DOWNLOAD {.used.} = cast[ComClsCtx](8192)
  wcCLSCTX_NO_FAILURE_LOG {.used.} = cast[ComClsCtx](16384)
  wcCLSCTX_DISABLE_AAA {.used.} = cast[ComClsCtx](32768)
  wcCLSCTX_ENABLE_AAA {.used.} = cast[ComClsCtx](65536)
  wcCLSCTX_FROM_DEFAULT_CONTEXT {.used.} = cast[ComClsCtx](131072)
  wcCLSCTX_ACTIVATE_X86_SERVER {.used.} = cast[ComClsCtx](262144)
  wcCLSCTX_ACTIVATE_32_BIT_SERVER {.used.} = cast[ComClsCtx](262144)
  wcCLSCTX_ACTIVATE_64_BIT_SERVER {.used.} = cast[ComClsCtx](524288)
  wcCLSCTX_ENABLE_CLOAKING {.used.} = cast[ComClsCtx](1048576)
  wcCLSCTX_APPCONTAINER {.used.} = cast[ComClsCtx](4194304)
  wcCLSCTX_ACTIVATE_AAA_AS_IU {.used.} = cast[ComClsCtx](8388608)
  wcCLSCTX_RESERVED6 {.used.} = cast[ComClsCtx](16777216)
  wcCLSCTX_ACTIVATE_ARM32_SERVER {.used.} = cast[ComClsCtx](33554432)
  wcCLSCTX_PS_DLL {.used.} = cast[ComClsCtx](2147483648)
  wcCLSCTX_ALL {.used.} = cast[ComClsCtx](23)
  wcCLSCTX_SERVER {.used.} = cast[ComClsCtx](21)

proc wpCoInitializeEx(pvReserved: pointer; dwCoInit: WtCOINIT): WinResult {.importc: "CoInitializeEx", dllproc_OLE32.}
proc wpCoCreateInstance(rclsid: ptr WinGuid; pUnkOuter: pointer; dwClsContext: ComClsCtx; riid: ptr WinGuid; ppv: var pointer): WinResult {.importc: "CoCreateInstance", dllproc_OLE32.}
proc wpCoUninitialize(): void {.importc: "CoUninitialize", dllproc_OLE32.}

# }}}

const
  comClsCtxInProcServer* = ComClsCtx 1

proc comInit*(apartmentThreaded = false): WinResult {.raises: [].} =
  let coInit =
    if apartmentThreaded: wcCOINIT_APARTMENTTHREADED
    else: wcCOINIT_MULTITHREADED
  wpCoInitializeEx(nil, coInit)

proc comCreateInstance*(clsid: WinGuid; clsContext: ComClsCtx; riid: WinGuid; ppv: var pointer): WinResult {.raises: [].} =
  var
    clsid = clsid
    riid = riid
  wpCoCreateInstance(clsid.addr, nil, clsContext, riid.addr, ppv)

proc comUninit*() {.raises: [].} =
  wpCoUninitialize()

# vim: set foldmethod=marker:
