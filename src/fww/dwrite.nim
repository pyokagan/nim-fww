import comrefs, win32result, win32guid, dwrite_shared, d2d1_shared

export win32result
export dwrite_shared

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}
{.pragma: dllproc_DWrite, stdcall, gcsafe, raises: [].}

type
  FnPointer = proc () {.w32callback.}

include dwrite_cimports

proc dwriteCreateFactory*(factoryType: DwriteFactoryType; res: var ptr IDwriteFactory): WinResult {.inline, raises: [].} =
  var iid = WinGuid(Data1: 0xb859ee5a'u32, Data2: 0xd838'u16, Data3: 0x4b5b'u16, Data4: [0xa2'u8, 0xe8'u8, 0x1a'u8, 0xdc'u8, 0x7d'u8, 0x93'u8, 0xdb'u8, 0x48'u8])
  var resTmp: ptr IUnknown
  result = wpDWriteCreateFactory(factoryType, iid.addr, resTmp)
  res = cast[ptr IDwriteFactory](resTmp)
