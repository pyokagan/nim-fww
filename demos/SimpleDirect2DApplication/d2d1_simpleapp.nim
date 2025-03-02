# Based on the code example "Simple Direct2D Application" (MIT License)
# from https://learn.microsoft.com/en-us/samples/microsoft/windows-classic-samples/simple-direct-2d-application/
import ../../src/fww/[wmworks, win32wmconsts, d2d1, d2d1_maths, comrefs, dwrite, win32geom, win32com, wic, fwwunicode, winres, win32libloaders]
import std/math
import std/compilesettings # querySetting()
import std/os # for dirExists() at compile-time

{.passl: "-ld2d1 -lOLE32 -lDwrite".}

template ptrArray[T](x: ptr T): ptr UncheckedArray[T] =
  cast[ptr UncheckedArray[T]](x)

const
  Manifest = """
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<assembly xmlns="urn:schemas-microsoft-com:asm.v1" manifestVersion="1.0" xmlns:asmv3="urn:schemas-microsoft-com:asm.v3" >
  <asmv3:application>
    <asmv3:windowsSettings xmlns="http://schemas.microsoft.com/SMI/2005/WindowsSettings">
      <dpiAware>true</dpiAware>
    </asmv3:windowsSettings>
  </asmv3:application>
</assembly>
"""

proc makeResources(): ResDirectory {.compileTime.} =
  new(result)
  result.putResource(RT_MANIFEST, 1, makeLangId(LANG_ENGLISH, SUBLANG_ENGLISH_US), Manifest)
  # IMPORTANT: strings in resource directories must be upper-case otherwise FindResource will not find it.
  result.putResource("IMAGE", "SAMPLEIMAGE", makeLangId(LANG_NEUTRAL, SUBLANG_NEUTRAL), staticRead "sampleImage.jpg")

const
  nimcache = querySetting(SingleValueSetting.nimcacheDir)
  ResFileOutputPath = nimcache & "/res.o"

static:
  if not dirExists(nimcache):
    when NimMajor >= 2:
      createDir(nimcache)
    else:
      raise (ref AssertionDefect)(msg: "nimcache directory needs to exist first: " & nimcache)
  writeFile(ResFileOutputPath, makeResources().toCoff(34404))
{.link: ResFileOutputPath.}

type
  DemoApp* = object
    d2d1Factory*: ComRef[ID2d1Factory]
    wicFactory*: ComRef[IWicImagingFactory]
    dwriteFactory*: ComRef[IDwriteFactory]
    renderTarget*: ComRef[ID2d1HwndRenderTarget]
    textFormat*: ComRef[IDwriteTextFormat]
    pathGeometry*: ComRef[ID2d1PathGeometry]
    linearGradientBrush*: ComRef[ID2d1LinearGradientBrush]
    blackBrush*: ComRef[ID2d1SolidColorBrush]
    gridPatternBitmapBrush*: ComRef[ID2d1BitmapBrush]
    bitmap*: ComRef[ID2d1Bitmap]
    anotherBitmap*: ComRef[ID2d1Bitmap]

proc discardDeviceResources(self: var DemoApp) {.raises: [].} =
  ## Discard device-specific resources which need to be recreated
  ## when a Direct3D device is lost
  clear self.renderTarget
  clear self.bitmap
  clear self.blackBrush
  clear self.linearGradientBrush
  clear self.anotherBitmap
  clear self.gridPatternBitmapBrush

proc loadBitmapFromWicDecoder(renderTarget: ptr ID2d1RenderTarget; wicFactory: ptr IWicImagingFactory; decoder: ptr IWicBitmapDecoder; destinationWidth, destinationHeight: uint32; oBitmap: var ptr ID2d1Bitmap): WinResult {.raises: [].} =
  var
    source: ComRef[IWicBitmapFrameDecode]
    conv: ComRef[IWicFormatConverter]
    scaler: ComRef[IWicBitmapScaler]
    destinationWidth = destinationWidth
    destinationHeight = destinationHeight

  # Create the initial frame
  retUnwrap decoder.getFrame(0, source.p)

  # Convert the image format to 32bppPBGRA (dxgiFormatB8G8R8A8Unorm + d2d1AlphaModePremultiplied).
  retUnwrap wicFactory.createFormatConverter(conv.p)

  # If a new width or height was specified, create an IWicBitmapScaler and use it to resize the image.
  if destinationWidth != 0 or destinationHeight != 0:
    var originalWidth, originalHeight = 0'u32
    retUnwrap source.p.getSize(originalWidth, originalHeight)

    if destinationWidth == 0:
      let scalar = destinationHeight.float32 / originalHeight.float32
      destinationWidth = uint32 scalar * originalWidth.float32
    elif destinationHeight == 0:
      let scalar = destinationWidth.float32 / originalWidth.float32
      destinationHeight = uint32 scalar * originalHeight.float32

    retUnwrap wicFactory.createBitmapScaler(scaler.p)
    retUnwrap scaler.p.initialize(source.p, destinationWidth, destinationHeight, wicBitmapInterpolationModeCubic)
    retUnwrap conv.p.initialize(scaler.p, wicPixelFormat32bppPBGRA.winGuid, wicBitmapDitherTypeNone, nil, 0, wicBitmapPaletteTypeMedianCut)
  else: # Don't scale the image
    retUnwrap conv.p.initialize(source.p, wicPixelFormat32bppPBGRA.winGuid, wicBitmapDitherTypeNone, nil, 0, wicBitmapPaletteTypeMedianCut)

  # Create a Direct2D bitmap from the WIC bitmap.
  result = renderTarget.createBitmapFromWicBitmap(conv.p, nil, oBitmap)

proc loadBitmapFromFile(renderTarget: ptr ID2d1RenderTarget; wicFactory: ptr IWicImagingFactory; uri: ptr UncheckedArray[uint16]; destinationWidth, destinationHeight: uint32; oBitmap: var ptr ID2d1Bitmap): WinResult {.raises: [].} =
  ## Creates a Direct2D bitmap from the specified file name.
  const GENERIC_READ = 0x80000000'u32
  var decoder: ComRef[IWicBitmapDecoder]
  retUnwrap wicFactory.createDecoderFromFilename(uri, nil, GENERIC_READ, wicDecodeMetadataCacheOnLoad, decoder.p)

  result = loadBitmapFromWicDecoder(renderTarget, wicFactory, decoder.p, destinationWidth, destinationHeight, oBitmap)

proc loadResourceBitmap(renderTarget: ptr ID2d1RenderTarget; wicFactory: ptr IWicImagingFactory; resourceName, resourceType: ptr UncheckedArray[uint16]; destinationWidth, destinationHeight: uint32; oBitmap: var ptr ID2d1Bitmap): WinResult {.raises: [].} =
  # Locate the resource
  var imageResHandle: WinResource
  retUnwrap findResource(WinInstance(0), resourceName, resourceType, imageResHandle)

  # Load the resource
  var imageResDataHandle: WinHandle
  retUnwrap loadResource(WinInstance(0), imageResHandle, imageResDataHandle)

  # Lock it to get a system memory pointer
  let pImageFile = lockResource(imageResDataHandle)

  # Calculate the size
  var imageFileSize = 0'u32
  retUnwrap sizeofResource(WinInstance(0), imageResHandle, imageFileSize)

  # Create a WIC stream to map onto the memory
  var stream: ComRef[IWicStream]
  retUnwrap wicFactory.createStream(stream.p)

  # Initialize the stream with the memory pointer and size.
  retUnwrap stream.p.initializeFromMemory(cast[ptr UncheckedArray[uint8]](pImageFile), imageFileSize)

  var decoder: ComRef[IWicBitmapDecoder]
  retUnwrap wicFactory.createDecoderFromStream(stream.p, nil, wicDecodeMetadataCacheOnLoad, decoder.p)

  result = loadBitmapFromWicDecoder(renderTarget, wicFactory, decoder.p, destinationWidth, destinationHeight, oBitmap)

proc createGridPatternBrush(renderTarget: ptr ID2d1RenderTarget; oBitmapBrush: var ptr ID2d1BitmapBrush): WinResult {.raises: [].} =
  # Create a compatible render target.
  var compatibleRenderTarget: ComRef[ID2d1BitmapRenderTarget]
  var desiredSize = d2d1Size2f(10, 10)
  retUnwrap renderTarget.createCompatibleRenderTarget(desiredSize.addr, nil, nil, d2d1CompatibleRenderTargetOptionsNone, compatibleRenderTarget.p)

  # Draw a pattern.
  var gridBrush: ComRef[ID2d1SolidColorBrush]
  retUnwrap compatibleRenderTarget.p.createSolidColorBrush(d2d1Rgbaf(0.93, 0.94, 0.96, 1), nil, gridBrush.p)

  compatibleRenderTarget.p.beginDraw()
  compatibleRenderTarget.p.fillRectangle(d2d1Rectf(0, 0, 10, 1), gridBrush.p)
  compatibleRenderTarget.p.fillRectangle(d2d1Rectf(0, 0.1, 1.0, 10.0), gridBrush.p)
  retUnwrap compatibleRenderTarget.p.endDraw(nil, nil)

  # Retrieve the bitmap from the render target.
  var gridBitmap: ComRef[ID2d1Bitmap]
  retUnwrap compatibleRenderTarget.p.getBitmap(gridBitmap.p)

  # Choose the tiling mode for the bitmap brush.
  var brushProperties = D2d1BitmapBrushProperties(
    extendModeX: d2d1ExtendModeWrap,
    extendModeY: d2d1ExtendModeWrap,
    interpolationMode: d2d1BitmapInterpolationModeLinear)

  # Create the bitmap brush.
  result = renderTarget.createBitmapBrush(gridBitmap.p, brushProperties.addr, nil, oBitmapBrush)

proc createDeviceResources(self: var DemoApp; hwnd: WmHwnd) =
  ## Create resources which are bound to a particular Direct3D device.
  ## It's all centralized here, in case the resources need to be recreated
  ## in case of Direct3D device loss
  ## (eg. display change, remoting, removal of video card, etc).
  if self.renderTarget.isNil:
    var rc: WinRect
    hwnd.getClientRect(rc).unwrap

    let dpi = hwnd.getDpi()

    # Create a Direct2D render target.
    var
      renderTargetProps = D2d1RenderTargetProperties(
        `type`: d2d1RenderTargetTypeDefault,
        pixelFormat: D2d1PixelFormat(format: dxgiFormatB8G8R8A8Unorm, alphaMode: d2d1AlphaModePremultiplied),
        dpiX: dpi.float32,
        dpiY: dpi.float32,
        usage: d2d1RenderTargetUsageNone,
        minLevel: d2d1FeatureLevelDefault)
      hwndRenderTargetProps = D2d1HwndRenderTargetProperties(
        hwnd: hwnd.int,
        pixelSize: d2d1Size2u(rc.width.uint32, rc.height.uint32),
        presentOptions: d2d1PresentOptionsNone)
    self.d2d1Factory.p.createHwndRenderTarget(renderTargetProps, hwndRenderTargetProps, self.renderTarget.p).unwrap

  if self.blackBrush.isNil:
    # Create a black brush
    self.renderTarget.p.createSolidColorBrush(D2d1RgbafBlack, nil, self.blackBrush.p).unwrap

  if self.linearGradientBrush.isNil:
    var gradientStops: ComRef[ID2d1GradientStopCollection]
    # Create a linear gradient
    var stops = [
      D2d1GradientStop(position: 0, color: d2d1Rgbaf(0, 1, 1, 0.25)),
      D2d1GradientStop(position: 1, color: d2d1Rgbaf(0, 0, 1, 1)),
    ]
    self.renderTarget.p.createGradientStopCollection(stops[0].addr.ptrArray, stops.len.uint32, d2d1Gamma22, d2d1ExtendModeClamp, gradientStops.p).unwrap
    self.renderTarget.p.createLinearGradientBrush(D2d1LinearGradientBrushProperties(startPoint: d2d1Vec2f(100, 0), endPoint: d2d1Vec2f(100, 200)), nil, gradientStops.p, self.linearGradientBrush.p).unwrap

  # Create a bitmap from an application resource.
  if self.bitmap.isNil:
    loadResourceBitmap(self.renderTarget.p, self.wicFactory.p, constLPWSTR "SampleImage", constLPWSTR "Image", 100, 0, self.bitmap.p).unwrap

  # Create a bitmap by loading it from a file.
  if self.anotherBitmap.isNil:
    loadBitmapFromFile(self.renderTarget.p, self.wicFactory.p, constLPWSTR ".\\sampleImage.jpg", 100, 0, self.anotherBitmap.p).unwrap

  if self.gridPatternBitmapBrush.isNil:
    createGridPatternBrush(self.renderTarget.p, self.gridPatternBitmapBrush.p).unwrap

proc onResize(self: var DemoApp; width, height: uint32) {.raises: [].} =
  ## If the application receives a WM_SIZE message, this method
  ## resize the render target appropriately.
  if not self.renderTarget.isNil:
    # Note: This method can fail, but it's okay to ignore the
    # error here -- it will be repeated on the next call to
    # EndDraw.
    discard self.renderTarget.p.resize(d2d1Size2u(width, height))

proc onRender(self: var DemoApp; hwnd: WmHwnd) =
  createDeviceResources(self, hwnd)

  # Retrieve the size of the render target
  let renderTargetSize = self.renderTarget.p.getSize()

  self.renderTarget.p.beginDraw()
  self.renderTarget.p.setTransform(D2d1Affine2fIdentity)
  self.renderTarget.p.clear(D2d1RgbafWhite)

  # Paint a grid background
  self.renderTarget.p.fillRectangle(d2d1Rectf(0, 0, renderTargetSize.width, renderTargetSize.height), self.gridPatternBitmapBrush.p)

  # Draw a bitmap in the upper-left corner of the window.
  var size = self.anotherBitmap.p.getSize() # TODO: use bitmap, not anotherBitmap
  var rect = d2d1Rectf(0, 0, size.width, size.height)
  self.renderTarget.p.drawBitmap(self.anotherBitmap.p, rect.addr, 1'f32, d2d1BitmapInterpolationModeLinear, nil)

  # Draw a bitmap at the lower-right corner of the window.
  size = self.anotherBitmap.p.getSize()
  rect = d2d1Rectf(renderTargetSize.width - size.width, renderTargetSize.height - size.height, renderTargetSize.width, renderTargetSize.height)
  self.renderTarget.p.drawBitmap(self.anotherBitmap.p, rect.addr, 1'f32, d2d1BitmapInterpolationModeLinear, nil)

  # Set the world transform to a 45 degree rotation at the center of the render target
  # and write "Hello, World".
  self.renderTarget.p.setTransform d2d1Affine2fRotation(degToRad 45'f32, renderTargetSize.d2d1Vec2f * 0.5'f32)

  var text = wtf8ToWtf16Seq "Hello, World!"
  self.renderTarget.p.drawText(text[0].addr.ptrArray, uint32 text.len, self.textFormat.p, d2d1Rectf(0, 0, renderTargetSize.width, renderTargetSize.height), self.blackBrush.p, d2d1DrawTextOptionsNone, dwriteMeasuringModeNatural)

  # Reset back to the identity transform
  self.renderTarget.p.setTransform d2d1Affine2f(D2d1Mat2fIdentity, d2d1Vec2f(0, renderTargetSize.height - 200))

  # Fill the hour glass geometry with a gradient.
  self.renderTarget.p.fillGeometry(self.pathGeometry.p, self.linearGradientBrush.p, nil)

  self.renderTarget.p.setTransform d2d1Affine2f(D2d1Mat2fIdentity, d2d1Vec2f(renderTargetSize.width - 200, 0))

  # Fill the hour glass geometry with a gradient.
  self.renderTarget.p.fillGeometry(self.pathGeometry.p, self.linearGradientBrush.p, nil)

  let hr = self.renderTarget.p.endDraw(nil, nil)
  if hr == d2derrRecreateTarget:
    discardDeviceResources(self)
  else:
    hr.unwrap

proc wmSpec(t: typedesc[DemoApp]; spec: var WmSpec) {.nimcall, gcsafe, raises: [].} =
  ## This is called by wmworks when registering the window class for the window type (DemoApp).
  ## Fill in `spec` with the specifications of the window class.
  spec = wmSpec(className = "D2DDemoApp", windowTitle = "Direct2D Demo Application", classStyle = (wmcsHRedraw or wmcsVRedraw))
  spec.w = 640
  spec.h = 480

proc wmHandleMessage(self: var DemoApp; hwnd: WmHwnd; msg: WmMsg): WmMsgHandling {.nimcall, gcsafe, raises: [].} =
  ## This is called by wmworks when the window receives an event.
  case msg.msg
  of wcWM_CREATE:
    try:
      # resize window appropriately on its DPI
      hwnd.resizeByDpi().unwrap

      const
        FontName = "Verdana"
        FontSize = 50

      # Create a Direct2D factory.
      d2d1CreateFactory(d2d1FactoryTypeSingleThreaded, D2d1FactoryOptions(debugLevel: d2d1DebugLevelNone), self.d2d1Factory.p).unwrap

      # Create WIC factory.
      newWicImagingFactory(self.wicFactory.p).unwrap

      # Create a DirectWrite factory.
      dwriteCreateFactory(dwriteFactoryTypeShared, self.dwriteFactory.p).unwrap

      # Create a DirectWrite text format object.
      self.dwriteFactory.p.createTextFormat(
        fontFamilyName = constLPWSTR FontName,
        fontCollection = nil,
        fontWeight = dwriteFontWeightNormal,
        fontStyle = dwriteFontStyleNormal,
        fontStretch = dwriteFontStretchNormal,
        fontSize = FontSize,
        localeName = constLPWSTR "",
        textFormat = self.textFormat.p).unwrap

      # Center the text horizontally and vertically.
      self.textFormat.p.setTextAlignment(dwriteTextAlignmentCenter).unwrap
      self.textFormat.p.setParagraphAlignment(dwriteParagraphAlignmentCenter).unwrap

      # Create a path geometry.
      self.d2d1Factory.p.createPathGeometry(self.pathGeometry.p).unwrap

      block: # Use the geometry sink to write to the path geometry
        var sink: ComRef[ID2d1GeometrySink]
        self.pathGeometry.p.open(sink.p).unwrap
        sink.p.setFillMode(d2d1FillModeAlternate)
        sink.p.beginFigure(d2d1Vec2f(0, 0), d2d1FigureBeginFilled)
        sink.p.addLine(d2d1Vec2f(200, 0))
        sink.p.addBezier(D2d1BezierSegment(point1: d2d1Vec2f(150, 50), point2: d2d1Vec2f(150, 150), point3: d2d1Vec2f(200, 200)))
        sink.p.addLine(d2d1Vec2f(0, 200))
        sink.p.addBezier(D2d1BezierSegment(point1: d2d1Vec2f(50, 150), point2: d2d1Vec2f(50, 50), point3: d2d1Vec2f(0, 0)))
        sink.p.endFigure(d2d1FigureEndClosed)
        sink.p.close().unwrap

    except:
      echo getCurrentExceptionMsg()
      echo getStackTrace(getCurrentException())
      result = wmHandleFail

  of wcWM_NCDESTROY:
    wmQuit()
    result = wmHandleCustom0

  of wcWM_ERASEBKGND:
    result = wmHandleCustom0

  of wcWM_PAINT:
    try:
      onRender(self, hwnd)
    except:
      echo getCurrentExceptionMsg()
      echo getStackTrace(getCurrentException())

    discard hwnd.validate()
    result = wmHandleCustom0

  of wcWM_SIZE:
    let ev = msg.sizeEvent
    onResize(self, ev.width, ev.height)
    result = wmHandleCustom0

  else:
    discard

proc main() =
  comInit().unwrap
  var win: WmWindow[DemoApp]
  win.createWindow().unwrap
  win.hwnd.show()
  wmRun()

when isMainModule:
  main()
