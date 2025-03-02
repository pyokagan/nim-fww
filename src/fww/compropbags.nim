import comrefs # IUnknown

export comrefs

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}

type
  FnPointer = proc () {.w32callback.}

  IPropertyBag2* = object of IUnknown # {22f55882-280b-11d0-a8a9-00a0c90c2004}
    discard
  IPropertyBag2Vtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnRead = proc (self: ptr WtIPropertyBag2; cProperties: uint32; pPropBag: ptr UncheckedArray[WtPROPBAG2]; pErrLog: ptr WtIErrorLog; pvarValue: ptr UncheckedArray[WtVARIANT]; phrError: ptr UncheckedArray[WtHRESULT]): WtHRESULT {.w32callback.}
    Read*: FnPointer
    # PfnWrite = proc (self: ptr WtIPropertyBag2; cProperties: uint32; pPropBag: ptr UncheckedArray[WtPROPBAG2]; pvarValue: ptr UncheckedArray[WtVARIANT]): WtHRESULT {.w32callback.}
    Write*: FnPointer
    # PfnCountProperties = proc (self: ptr WtIPropertyBag2; pcProperties: var uint32): WtHRESULT {.w32callback.}
    CountProperties*: FnPointer
    # PfnGetPropertyInfo = proc (self: ptr WtIPropertyBag2; iProperty: uint32; cProperties: uint32; pPropBag: ptr UncheckedArray[WtPROPBAG2]; pcProperties: var uint32): WtHRESULT {.w32callback.}
    GetPropertyInfo*: FnPointer
    # PfnLoadObject = proc (self: ptr WtIPropertyBag2; pstrName: WtPWSTR; dwHint: uint32; pUnkObject: ptr WtIUnknown; pErrLog: ptr WtIErrorLog): WtHRESULT {.w32callback.}
    LoadObject*: FnPointer
