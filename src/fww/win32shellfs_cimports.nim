type
  WtHWND = int
  WtPWSTR = ptr UncheckedArray[uint16]
  WtBOOL = int32
  WtSHFILEOPSTRUCTW {.pure, byref.} = object
    hwnd*: WtHWND
    wFunc*: uint32
    pFrom*: WtPWSTR
    pTo*: WtPWSTR
    fFlags*: uint16
    fAnyOperationsAborted*: WtBOOL
    hNameMappings*: pointer
    lpszProgressTitle*: WtPWSTR

const
  wcFO_COPY = cast[uint32](2)
  wcFOF_NOCONFIRMMKDIR = cast[uint32](512)

proc wpSHFileOperationW(lpFileOp: var WtSHFILEOPSTRUCTW): int32 {.importc: "SHFileOperationW", dllproc_SHELL32.}

