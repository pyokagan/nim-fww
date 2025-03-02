import comrefs, win32result, win32guid, comstreams, win32com, wic_shared

export win32result
export comstreams
export wic_shared

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}

type
  FnPointer = proc () {.w32callback.}

include wic_cimports
include wic_pixelformats
include wic_containerformats

template winGuid*(p: WicPixelFormat): WinGuid =
  WicPixelFormatGuids[p]

func wicPixelFormat*(guid: WinGuid): WicPixelFormat {.raises: [].} =
  for x in WicPixelFormat:
    if WicPixelFormatGuids[x] == guid:
      return x
  result = wicPixelFormatDontCare

template winGuid*(p: WicContainerFormat): WinGuid =
  WicContainerFormatGuids[p]

func wicContainerFormat*(guid: WinGuid): WicContainerFormat {.raises: [].} =
  for x in WicContainerFormat:
    if WicContainerFormatGuids[x] == guid:
      return x
  result = wicContainerFormatUnknown

const
  CLSID_WICImagingFactory = WinGuid(Data1: 0xcacaf262'u32, Data2: 0x9370'u16, Data3: 0x4615'u16, Data4: [0xa1'u8, 0x3b, 0x9f, 0x55, 0x39, 0xda, 0x4c, 0x0a])
  IID_IWICImagingFactory = WinGuid(Data1: 0xec5ec8a9'u32, Data2: 0xc395'u16, Data3: 0x4314'u16, Data4: [0x9c'u8, 0x77, 0x54, 0xd7, 0xa9, 0x35, 0xff, 0x70])

proc newWicImagingFactory*(res: var ptr IWicImagingFactory): WinResult {.inline, raises: [].} =
  var tmpp: pointer
  result = comCreateInstance(CLSID_WICImagingFactory, comClsCtxInProcServer, IID_IWICImagingFactory, tmpp)
  res = cast[ptr IWicImagingFactory](tmpp)

proc getPixelFormat*(self: ptr IWicBitmapSource; pPixelFormat: var WicPixelFormat): WinResult {.inline, raises: [].} =
  var guid {.noinit.}: WinGuid
  result = getPixelFormat(self, guid)
  pPixelFormat = wicPixelFormat(guid)

proc createBitmapFromFile*(factory: ptr IWicImagingFactory; filename: ptr UncheckedArray[uint16]; pixelFormat: WicPixelFormat; option: WicBitmapCreateCacheOption; o: var ptr IWicBitmap): WinResult {.raises: [].} =
  const GENERIC_READ = 0x80000000'u32
  var
    decoder: ComRef[IWicBitmapDecoder]
    frame: ComRef[IWicBitmapFrameDecode]
    conv: ComRef[IWicFormatConverter]
  retUnwrap factory.createDecoderFromFilename(filename, nil, GENERIC_READ, wicDecodeMetadataCacheOnDemand, decoder.p)
  retUnwrap decoder.p.getFrame(0, frame.p)
  if pixelFormat != wicPixelFormatDontCare:
    retUnwrap factory.createFormatConverter(conv.p)
    retUnwrap conv.p.initialize(frame.p, pixelFormat.winGuid, wicBitmapDitherTypeNone, nil, 0, wicBitmapPaletteTypeCustom)
    result = factory.createBitmapFromSource(conv.p, option, o)
  else:
    result = factory.createBitmapFromSource(frame.p, option, o)

proc createBitmapFromFile*(factory: ptr IWicImagingFactory; filename: ptr UncheckedArray[uint16]; pixelFormat: WicPixelFormat; option: WicBitmapCreateCacheOption; o: var ComRef[IWicBitmap]): WinResult {.raises: [].} =
  clear(o)
  createBitmapFromFile(factory, filename, pixelFormat, option, o.p)
