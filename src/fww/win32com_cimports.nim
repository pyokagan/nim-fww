type
  WtHRESULT = int32
  WtCOINIT = uint32 # enum

const
  wcS_FALSE = cast[WtHRESULT](1)
  wcRPC_E_CHANGED_MODE = cast[WtHRESULT](-2147417850)
  wcCOINIT_APARTMENTTHREADED {.used.} = cast[WtCOINIT](2)
  wcCOINIT_MULTITHREADED {.used.} = cast[WtCOINIT](0)
  wcCOINIT_DISABLE_OLE1DDE {.used.} = cast[WtCOINIT](4)
  wcCOINIT_SPEED_OVER_MEMORY {.used.} = cast[WtCOINIT](8)

proc wpCoInitializeEx(pvReserved: pointer; dwCoInit: WtCOINIT): WtHRESULT {.importc: "CoInitializeEx", dllproc_OLE32.}

