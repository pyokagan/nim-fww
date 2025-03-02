type
  WtWIN32_ERROR = distinct uint32 # enum
  WtPWSTR = ptr UncheckedArray[uint16]

proc wpGetLastError(): WtWIN32_ERROR {.importc: "GetLastError", dllproc_KERNEL32.}
proc wpGetModuleHandleW(lpModuleName: WtPWSTR): WinInstance {.importc: "GetModuleHandleW", dllproc_KERNEL32.}
proc wpFindResourceW(hModule: WinInstance; lpName: WtPWSTR; lpType: WtPWSTR): WinResource {.importc: "FindResourceW", dllproc_KERNEL32.}
proc wpLoadResource(hModule: WinInstance; hResInfo: WinResource): int {.importc: "LoadResource", dllproc_KERNEL32.}
proc wpLockResource(hResData: int): pointer {.importc: "LockResource", dllproc_KERNEL32.}
proc wpSizeofResource(hModule: WinInstance; hResInfo: WinResource): uint32 {.importc: "SizeofResource", dllproc_KERNEL32.}

