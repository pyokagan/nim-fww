import comrefs, win32result, win32guid, comstreams, d2d1_maths
import dxgicommon
import dwrite_shared
import wic_shared
import d2d1_shared

export win32result
export d2d1_maths
export dxgicommon
export d2d1_shared

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}
{.pragma: dllproc_d2d1, stdcall, gcsafe, raises: [].}

type
  FnPointer = proc () {.w32callback.}

include d2d1_cimports

proc d2d1CreateFactory*[T](factoryType: D2d1FactoryType; factoryOptions: D2d1FactoryOptions; ofactory: var ptr T): WinResult {.raises: [].} =
  mixin winGuid
  var
    factoryOptions = factoryOptions
    guid: WinGuid = winGuid(T)
  var ofactoryp: pointer = nil
  result = wpD2D1CreateFactory(factoryType, guid.addr, factoryOptions.addr, ofactoryp)
  ofactory = cast[ptr T](ofactoryp)

proc resize*(self: ptr ID2d1HwndRenderTarget; pixelSize: D2d1Size2u): WinResult {.inline, raises: [].} =
  var pixelSize = pixelSize
  resize(self, pixelSize.addr)

proc clear*(self: ptr ID2d1RenderTarget; clearColor: D2d1Rgbaf) {.inline, raises: [].} =
  var clearColor = clearColor
  clear(self, clearColor.addr)

proc setCached*(self: ptr ID2d1Effect; cached: bool): WinResult {.inline, raises: [].} =
  var cached = uint32(cached)
  self.setValue(0x80000006'u32, d2d1PropertyTypeBool, cast[ptr UncheckedArray[uint8]](cached.addr), sizeof(cached).uint32)

proc getOutput*(self: ptr ID2d1Effect): ComRef[ID2d1Image] {.inline, raises: [].} =
  self.getOutput(result.p)

proc drawImage*(self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; targetOffset: D2d1Vec2f; imageRectangle: D2d1Rectf; interpolationMode: D2d1InterpolationMode; compositeMode: D2d1CompositeMode) {.inline, raises: [].} =
  var
    targetOffset = targetOffset
    imageRectangle = imageRectangle
  drawImage(self, image, targetOffset.addr, imageRectangle.addr, interpolationMode, compositeMode)
