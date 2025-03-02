import win32result, win32handles

export win32result
export win32handles

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: dllproc_KERNEL32, stdcall, gcsafe, raises: [].}
include win32libloaders_cimports

proc getModuleHandle*(moduleName: ptr UncheckedArray[uint16]; hInstance: var WinHandle): WinResult {.raises: [].} =
  hInstance = wpGetModuleHandleW(moduleName)
  if hInstance.isNil:
    result = winResultFromWin32(uint32 wpGetLastError())

proc findResource*(hModule: WinInstance; name, kind: ptr UncheckedArray[uint16]; oResInfo: var WinResource): WinResult {.raises: [].} =
  oResInfo = wpFindResourceW(hModule, name, kind)
  if oResInfo.isNil:
    result = winResultFromWin32(uint32 wpGetLastError())

proc loadResource*(hModule: WinInstance; resInfo: WinResource; oResData: var WinHandle): WinResult {.raises: [].} =
  oResData = WinHandle wpLoadResource(hModule, resInfo)
  if oResData.isNil:
    result = winResultFromWin32(uint32 wpGetLastError())

proc lockResource*(resData: WinHandle): pointer {.raises: [].} =
  result = wpLockResource(resData.int)

proc sizeofResource*(hModule: WinInstance; resInfo: WinResource; oSize: var uint32): WinResult {.raises: [].} =
  oSize = wpSizeofResource(hModule, resInfo)
  if oSize == 0:
    result = winResultFromWin32(uint32 wpGetLastError())
