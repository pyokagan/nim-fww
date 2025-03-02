const
  d2derrWrongState* = WinResult(-2003238911)
  d2derrNotInitialized* = WinResult(-2003238910)
  d2derrUnsupportedOperation* = WinResult(-2003238909)
  d2derrScannerFailed* = WinResult(-2003238908)
  d2derrScreenAccessDenied* = WinResult(-2003238907)
  d2derrDisplayStateInvalid* = WinResult(-2003238906)
  d2derrZeroVector* = WinResult(-2003238905)
  d2derrInternalError* = WinResult(-2003238904)
  d2derrDisplayFormatNotSupported* = WinResult(-2003238903)
  d2derrInvalidCall* = WinResult(-2003238902)
  d2derrNoHardwareDevice* = WinResult(-2003238901)
  d2derrRecreateTarget* = WinResult(-2003238900)
  d2derrTooManyShaderElements* = WinResult(-2003238899)
  d2derrShaderCompileFailed* = WinResult(-2003238898)
  d2derrMaxTextureSizeExceeded* = WinResult(-2003238897)
  d2derrUnsupportedVersion* = WinResult(-2003238896)
  d2derrBadNumber* = WinResult(-2003238895)
  d2derrWrongFactory* = WinResult(-2003238894)
  d2derrLayerAlreadyInUse* = WinResult(-2003238893)
  d2derrPopCallDidNotMatchPush* = WinResult(-2003238892)
  d2derrWrongResourceDomain* = WinResult(-2003238891)
  d2derrPushPopUnbalanced* = WinResult(-2003238890)
  d2derrRenderTargetHasLayerOrCliprect* = WinResult(-2003238889)
  d2derrIncompatibleBrushTypes* = WinResult(-2003238888)
  d2derrWin32Error* = WinResult(-2003238887)
  d2derrTargetNotGdiCompatible* = WinResult(-2003238886)
  d2derrTextEffectIsWrongType* = WinResult(-2003238885)
  d2derrTextRendererNotReleased* = WinResult(-2003238884)
  d2derrExceedsMaxBitmapSize* = WinResult(-2003238883)
  d2derrInvalidGraphConfiguration* = WinResult(-2003238882)
  d2derrInvalidInternalGraphConfiguration* = WinResult(-2003238881)
  d2derrCyclicGraph* = WinResult(-2003238880)
  d2derrBitmapCannotDraw* = WinResult(-2003238879)
  d2derrOutstandingBitmapReferences* = WinResult(-2003238878)
  d2derrOriginalTargetNotBound* = WinResult(-2003238877)
  d2derrInvalidTarget* = WinResult(-2003238876)
  d2derrBitmapBoundAsTarget* = WinResult(-2003238875)
  d2derrInsufficientDeviceCapabilities* = WinResult(-2003238874)
  d2derrIntermediateTooLarge* = WinResult(-2003238873)
  d2derrEffectIsNotRegistered* = WinResult(-2003238872)
  d2derrInvalidProperty* = WinResult(-2003238871)
  d2derrNoSubproperties* = WinResult(-2003238870)
  d2derrPrintJobClosed* = WinResult(-2003238869)
  d2derrPrintFormatNotSupported* = WinResult(-2003238868)
  d2derrTooManyTransformInputs* = WinResult(-2003238867)
  d2derrInvalidGlyphImage* = WinResult(-2003238866)
type
  WtD2D_MATRIX_3X2_F_nested0 {.pure, byref.} = object
    m11*: float32
    m12*: float32
    m21*: float32
    m22*: float32
    dx*: float32
    dy*: float32
  WtD2D_MATRIX_3X2_F_nested1 {.pure, byref.} = object
    `$11`*: float32
    `$12`*: float32
    `$21`*: float32
    `$22`*: float32
    `$31`*: float32
    `$32`*: float32
  WtD2D_MATRIX_3X2_F_nested2 {.pure, byref, union.} = object
    Anonymous1*: WtD2D_MATRIX_3X2_F_nested0
    Anonymous2*: WtD2D_MATRIX_3X2_F_nested1
    m*: array[6, float32]
  # D2d1CapStyle* = uint32 # enum
  # D2d1LineJoin* = uint32 # enum
  # D2d1DashStyle* = uint32 # enum
  WtBOOL = int32
  # D2d1GeometryRelation* = uint32 # enum
  # D2d1GeometrySimplificationOption* = uint32 # enum
  # D2d1FillMode* = uint32 # enum
  # D2d1PathSegment* = uint32 # enum
  # D2d1FigureBegin* = uint32 # enum
  D2d1BezierSegment* {.pure, byref.} = object
    point1*: D2d1Vec2f
    point2*: D2d1Vec2f
    point3*: D2d1Vec2f
  # D2d1FigureEnd* = uint32 # enum
  D2d1Triangle* {.pure, byref.} = object
    point1*: D2d1Vec2f
    point2*: D2d1Vec2f
    point3*: D2d1Vec2f
  # D2d1CombineMode* = uint32 # enum
  D2d1QuadraticBezierSegment* {.pure, byref.} = object
    point1*: D2d1Vec2f
    point2*: D2d1Vec2f
  # D2d1SweepDirection* = uint32 # enum
  # D2d1ArcSize* = uint32 # enum
  D2d1ArcSegment* {.pure, byref.} = object
    point*: D2d1Vec2f
    size*: D2d1Size2f
    rotationAngle*: float32
    sweepDirection*: D2d1SweepDirection
    arcSize*: D2d1ArcSize
  D2d1StrokeStyleProperties* {.pure, byref.} = object
    startCap*: D2d1CapStyle
    endCap*: D2d1CapStyle
    dashCap*: D2d1CapStyle
    lineJoin*: D2d1LineJoin
    miterLimit*: float32
    dashStyle*: D2d1DashStyle
    dashOffset*: float32
  # D2d1AntialiasMode* = uint32 # enum
  # D2d1TextAntialiasMode* = uint32 # enum
  D2d1DrawingStateDescription* {.pure, byref.} = object
    antialiasMode*: D2d1AntialiasMode
    textAntialiasMode*: D2d1TextAntialiasMode
    tag1*: uint64
    tag2*: uint64
    transform*: D2d1Affine2f
  # D2d1RenderTargetType* = uint32 # enum
  # DxgiFormat* = uint32 # enum
  # D2d1AlphaMode* = uint32 # enum
  # D2d1RenderTargetUsage* = uint32 # enum
  # D2d1FeatureLevel* = uint32 # enum
  D2d1RenderTargetProperties* {.pure, byref.} = object
    `type`*: D2d1RenderTargetType
    pixelFormat*: D2d1PixelFormat
    dpiX*: float32
    dpiY*: float32
    usage*: D2d1RenderTargetUsage
    minLevel*: D2d1FeatureLevel
  WtHWND = int
  # D2d1PresentOptions* = uint32 # enum
  D2d1HwndRenderTargetProperties* {.pure, byref.} = object
    hwnd*: WtHWND
    pixelSize*: D2d1Size2u
    presentOptions*: D2d1PresentOptions
  # D2d1WindowState* = uint32 # enum
  WtDXGI_SAMPLE_DESC {.pure, byref.} = object
    Count*: uint32
    Quality*: uint32
  WtHDC = int
  D2d1BitmapProperties* {.pure, byref.} = object
    pixelFormat*: D2d1PixelFormat
    dpiX*: float32
    dpiY*: float32
  # D2d1ExtendMode* = uint32 # enum
  # D2d1BitmapInterpolationMode* = uint32 # enum
  D2d1BitmapBrushProperties* {.pure, byref.} = object
    extendModeX*: D2d1ExtendMode
    extendModeY*: D2d1ExtendMode
    interpolationMode*: D2d1BitmapInterpolationMode
  D2d1BrushProperties* {.pure, byref.} = object
    opacity*: float32
    transform*: D2d1Affine2f
  # D2d1Gamma* = uint32 # enum
  D2d1LinearGradientBrushProperties* {.pure, byref.} = object
    startPoint*: D2d1Vec2f
    endPoint*: D2d1Vec2f
  D2d1RadialGradientBrushProperties* {.pure, byref.} = object
    center*: D2d1Vec2f
    gradientOriginOffset*: D2d1Vec2f
    radiusX*: float32
    radiusY*: float32
  # D2d1CompatibleRenderTargetOptions* = uint32 # enum
  # D2d1OpacityMaskContent* = uint32 # enum
  WtPWSTR = ptr UncheckedArray[uint16]
  # D2d1DrawTextOptions* = uint32 # enum
  # D2d1LayerOptions* = uint32 # enum
  D2d1LayerParameters* {.pure, byref.} = object
    contentBounds*: D2d1Rectf
    geometricMask*: ptr ID2d1Geometry
    maskAntialiasMode*: D2d1AntialiasMode
    maskTransform*: D2d1Affine2f
    opacity*: float32
    opacityBrush*: ptr ID2d1Brush
    layerOptions*: D2d1LayerOptions
  # D2d1BitmapOptions* = uint32 # enum
  # D2d1ColorSpace* = uint32 # enum
  D2d1BitmapProperties1* {.pure, byref.} = object
    pixelFormat*: D2d1PixelFormat
    dpiX*: float32
    dpiY*: float32
    bitmapOptions*: D2d1BitmapOptions
    colorContext*: ptr ID2d1ColorContext
  # D2d1MapOptions* = uint32 # enum
  D2d1MappedRect* {.pure, byref.} = object
    pitch*: uint32
    bits*: ptr uint8
  # D2d1PropertyType* = uint32 # enum
  # D2d1BufferPrecision* = uint32 # enum
  # D2d1ColorInterpolationMode* = uint32 # enum
  # D2d1InterpolationMode* = uint32 # enum
  D2d1ImageBrushProperties* {.pure, byref.} = object
    sourceRectangle*: D2d1Rectf
    extendModeX*: D2d1ExtendMode
    extendModeY*: D2d1ExtendMode
    interpolationMode*: D2d1InterpolationMode
  D2d1BitmapBrushProperties1* {.pure, byref.} = object
    extendModeX*: D2d1ExtendMode
    extendModeY*: D2d1ExtendMode
    interpolationMode*: D2d1InterpolationMode
  # D2d1PrimitiveBlend* = uint32 # enum
  # D2d1UnitMode* = uint32 # enum
  WtD2D_MATRIX_4X4_F_nested0 {.pure, byref.} = object
    `$11`*: float32
    `$12`*: float32
    `$13`*: float32
    `$14`*: float32
    `$21`*: float32
    `$22`*: float32
    `$23`*: float32
    `$24`*: float32
    `$31`*: float32
    `$32`*: float32
    `$33`*: float32
    `$34`*: float32
    `$41`*: float32
    `$42`*: float32
    `$43`*: float32
    `$44`*: float32
  WtD2D_MATRIX_4X4_F_nested1 {.pure, byref, union.} = object
    Anonymous*: WtD2D_MATRIX_4X4_F_nested0
    m*: array[16, float32]
  # D2d1CompositeMode* = uint32 # enum
  # D2d1LayerOptions1* = uint32 # enum
  D2d1LayerParameters1* {.pure, byref.} = object
    contentBounds*: D2d1Rectf
    geometricMask*: ptr ID2d1Geometry
    maskAntialiasMode*: D2d1AntialiasMode
    maskTransform*: D2d1Affine2f
    opacity*: float32
    opacityBrush*: ptr ID2d1Brush
    layerOptions*: D2d1LayerOptions1
  # D2d1DeviceContextOptions* = uint32 # enum
  WtLARGE_INTEGER_nested0 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: int32
  WtLARGE_INTEGER_nested1 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: int32
  WtLARGE_INTEGER {.pure, bycopy, union.} = object
    Anonymous*: WtLARGE_INTEGER_nested0
    u*: WtLARGE_INTEGER_nested1
    QuadPart*: int64
  WtULARGE_INTEGER_nested0 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: uint32
  WtULARGE_INTEGER_nested1 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: uint32
  WtULARGE_INTEGER {.pure, bycopy, union.} = object
    Anonymous*: WtULARGE_INTEGER_nested0
    u*: WtULARGE_INTEGER_nested1
    QuadPart*: uint64
  WtFILETIME {.pure, bycopy.} = object
    dwLowDateTime*: uint32
    dwHighDateTime*: uint32
  WtCHAR = uint8
  WtBSTR = ptr UncheckedArray[uint16]
  WtPSTR = cstring
  WtDECIMAL_nested0 {.pure, byref.} = object
    scale*: uint8
    sign*: uint8
  WtDECIMAL_nested1 {.pure, byref, union.} = object
    Anonymous*: WtDECIMAL_nested0
    signscale*: uint16
  WtDECIMAL_nested2 {.pure, byref.} = object
    Lo32*: uint32
    Mid32*: uint32
  WtDECIMAL_nested3 {.pure, byref, union.} = object
    Anonymous*: WtDECIMAL_nested2
    Lo64*: uint64
  WtDECIMAL {.pure, byref.} = object
    wReserved*: uint16
    Anonymous1*: WtDECIMAL_nested1
    Hi32*: uint32
    Anonymous2*: WtDECIMAL_nested3
  WtHBITMAP = int
  WtHPALETTE = int
  WtHICON = int
  # D2d1PrintFontSubsetMode* = uint32 # enum
  D2d1PrintControlProperties* {.pure, byref.} = object
    fontSubset*: D2d1PrintFontSubsetMode
    rasterDPI*: float32
    colorSpace*: D2d1ColorSpace
  D2d1RenderingControls* {.pure, byref.} = object
    bufferPrecision*: D2d1BufferPrecision
    tileSize*: D2d1Size2u
  D2d1EffectInputDescription* {.pure, byref.} = object
    effect*: ptr ID2d1Effect
    inputIndex*: uint32
    inputRectangle*: D2d1Rectf
  # D2d1Filter* = uint32 # enum
  D2d1InputDescription* {.pure, bycopy.} = object
    filter*: D2d1Filter
    levelOfDetailCount*: uint32
  # D2d1ChannelDepth* = uint32 # enum
  # D2d1PixelOptions* = uint32 # enum
  # D2d1VertexOptions* = uint32 # enum
  # D2d1Blend* = uint32 # enum
  # D2d1BlendOperation* = uint32 # enum
  D2d1BlendDescription* {.pure, byref.} = object
    sourceBlend*: D2d1Blend
    destinationBlend*: D2d1Blend
    blendOperation*: D2d1BlendOperation
    sourceBlendAlpha*: D2d1Blend
    destinationBlendAlpha*: D2d1Blend
    blendOperationAlpha*: D2d1BlendOperation
    blendFactor*: array[4, float32]
  D2d1VertexRange* {.pure, byref.} = object
    startVertex*: uint32
    vertexCount*: uint32
  WtD3D_FEATURE_LEVEL = int32 # enum
  D2d1ResourceTextureProperties* {.pure, byref.} = object
    extents*: ptr uint32
    dimensions*: uint32
    bufferPrecision*: D2d1BufferPrecision
    channelDepth*: D2d1ChannelDepth
    filter*: D2d1Filter
    extendModes*: ptr D2d1ExtendMode
  # D2d1VertexUsage* = uint32 # enum
  D2d1VertexBufferProperties* {.pure, byref.} = object
    inputCount*: uint32
    usage*: D2d1VertexUsage
    data*: ptr uint8
    byteWidth*: uint32
  WtD2D1_INPUT_ELEMENT_DESC {.pure, byref.} = object
    semanticName*: WtPSTR
    semanticIndex*: uint32
    format*: DxgiFormat
    inputSlot*: uint32
    alignedByteOffset*: uint32
  D2d1CustomVertexBufferProperties* {.pure, byref.} = object
    shaderBufferWithInputSignature*: ptr uint8
    shaderBufferSize*: uint32
    inputElements*: ptr WtD2D1_INPUT_ELEMENT_DESC
    elementCount*: uint32
    stride*: uint32
  # D2d1Feature* = uint32 # enum
  WtDXGI_MODE_ROTATION = int32 # enum
  WtHMONITOR = int
  WtDXGI_RATIONAL {.pure, byref.} = object
    Numerator*: uint32
    Denominator*: uint32
  WtDXGI_MODE_SCANLINE_ORDER = int32 # enum
  WtDXGI_MODE_SCALING = int32 # enum
  WtDXGI_MODE_DESC {.pure, byref.} = object
    Width*: uint32
    Height*: uint32
    RefreshRate*: WtDXGI_RATIONAL
    Format*: DxgiFormat
    ScanlineOrdering*: WtDXGI_MODE_SCANLINE_ORDER
    Scaling*: WtDXGI_MODE_SCALING
  WtDXGI_GAMMA_CONTROL_CAPABILITIES {.pure, byref.} = object
    ScaleAndOffsetSupported*: WtBOOL
    MaxConvertedValue*: float32
    MinConvertedValue*: float32
    NumGammaControlPoints*: uint32
    ControlPointPositions*: array[1025, float32]
  WtDXGI_RGB {.pure, byref.} = object
    Red*: float32
    Green*: float32
    Blue*: float32
  WtDXGI_GAMMA_CONTROL {.pure, byref.} = object
    Scale*: WtDXGI_RGB
    Offset*: WtDXGI_RGB
    GammaCurve*: array[1025, WtDXGI_RGB]
  WtLUID {.pure, bycopy.} = object
    LowPart*: uint32
    HighPart*: int32
  WtHANDLE = int
  # D2d1StrokeTransformType* = uint32 # enum
  D2d1StrokeStyleProperties1* {.pure, byref.} = object
    startCap*: D2d1CapStyle
    endCap*: D2d1CapStyle
    dashCap*: D2d1CapStyle
    lineJoin*: D2d1LineJoin
    miterLimit*: float32
    dashStyle*: D2d1DashStyle
    dashOffset*: float32
    transformType*: D2d1StrokeTransformType
  D2d1PointDescription* {.pure, byref.} = object
    point*: D2d1Vec2f
    unitTangentVector*: D2d1Vec2f
    endSegment*: uint32
    endFigure*: uint32
    lengthToEndSegment*: float32
  D2d1DrawingStateDescription1* {.pure, byref.} = object
    antialiasMode*: D2d1AntialiasMode
    textAntialiasMode*: D2d1TextAntialiasMode
    tag1*: uint64
    tag2*: uint64
    transform*: D2d1Affine2f
    primitiveBlend*: D2d1PrimitiveBlend
    unitMode*: D2d1UnitMode
  WtPD2D1_PROPERTY_SET_FUNCTION = proc(effect: ptr IUnknown; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
  WtPD2D1_PROPERTY_GET_FUNCTION = proc(effect: ptr IUnknown; data: ptr UncheckedArray[uint8]; dataSize: uint32; actualSize: ptr uint32): WinResult {.w32callback.}
  D2d1PropertyBinding* {.pure, byref.} = object
    propertyName*: WtPWSTR
    setFunction*: WtPD2D1_PROPERTY_SET_FUNCTION
    getFunction*: WtPD2D1_PROPERTY_GET_FUNCTION
  WtPD2D1_EFFECT_FACTORY = proc(effectImpl: var ptr IUnknown): WinResult {.w32callback.}
  D2d1InkPoint* {.pure, byref.} = object
    x*: float32
    y*: float32
    radius*: float32
  D2d1InkBezierSegment* {.pure, byref.} = object
    point1*: D2d1InkPoint
    point2*: D2d1InkPoint
    point3*: D2d1InkPoint
  # D2d1InkNibShape* = uint32 # enum
  D2d1InkStyleProperties* {.pure, byref.} = object
    nibShape*: D2d1InkNibShape
    nibTransform*: D2d1Affine2f
  # D2d1PatchEdgeMode* = uint32 # enum
  D2d1GradientMeshPatch* {.pure, byref.} = object
    point00*: D2d1Vec2f
    point01*: D2d1Vec2f
    point02*: D2d1Vec2f
    point03*: D2d1Vec2f
    point10*: D2d1Vec2f
    point11*: D2d1Vec2f
    point12*: D2d1Vec2f
    point13*: D2d1Vec2f
    point20*: D2d1Vec2f
    point21*: D2d1Vec2f
    point22*: D2d1Vec2f
    point23*: D2d1Vec2f
    point30*: D2d1Vec2f
    point31*: D2d1Vec2f
    point32*: D2d1Vec2f
    point33*: D2d1Vec2f
    color00*: D2d1Rgbaf
    color03*: D2d1Rgbaf
    color30*: D2d1Rgbaf
    color33*: D2d1Rgbaf
    topEdgeMode*: D2d1PatchEdgeMode
    leftEdgeMode*: D2d1PatchEdgeMode
    bottomEdgeMode*: D2d1PatchEdgeMode
    rightEdgeMode*: D2d1PatchEdgeMode
  # D2d1ImageSourceLoadingOptions* = uint32 # enum
  WtDXGI_COLOR_SPACE_TYPE = int32 # enum
  # D2d1ImageSourceFromDxgiOptions* = uint32 # enum
  # D2d1Orientation* = uint32 # enum
  # D2d1TransformedImageSourceOptions* = uint32 # enum
  D2d1TransformedImageSourceProperties* {.pure, byref.} = object
    orientation*: D2d1Orientation
    scaleX*: float32
    scaleY*: float32
    interpolationMode*: D2d1InterpolationMode
    options*: D2d1TransformedImageSourceOptions
  # D2d1SpriteOptions* = uint32 # enum
  # D2d1DebugLevel* = uint32 # enum
  D2d1FactoryOptions* {.pure, byref.} = object
    debugLevel*: D2d1DebugLevel
  # D2d1FactoryType* = uint32 # enum
  ID2d1ResourceVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetFactory = proc (self: ptr ID2d1Resource; factory: var ptr ID2d1Factory): void {.w32callback.}
    GetFactory*: FnPointer
  ID2d1StrokeStyleVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnGetStartCap = proc (self: ptr ID2d1StrokeStyle): D2d1CapStyle {.w32callback.}
    GetStartCap*: FnPointer
    # PfnGetEndCap = proc (self: ptr ID2d1StrokeStyle): D2d1CapStyle {.w32callback.}
    GetEndCap*: FnPointer
    # PfnGetDashCap = proc (self: ptr ID2d1StrokeStyle): D2d1CapStyle {.w32callback.}
    GetDashCap*: FnPointer
    # PfnGetMiterLimit = proc (self: ptr ID2d1StrokeStyle): float32 {.w32callback.}
    GetMiterLimit*: FnPointer
    # PfnGetLineJoin = proc (self: ptr ID2d1StrokeStyle): D2d1LineJoin {.w32callback.}
    GetLineJoin*: FnPointer
    # PfnGetDashOffset = proc (self: ptr ID2d1StrokeStyle): float32 {.w32callback.}
    GetDashOffset*: FnPointer
    # PfnGetDashStyle = proc (self: ptr ID2d1StrokeStyle): D2d1DashStyle {.w32callback.}
    GetDashStyle*: FnPointer
    # PfnGetDashesCount = proc (self: ptr ID2d1StrokeStyle): uint32 {.w32callback.}
    GetDashesCount*: FnPointer
    # PfnGetDashes = proc (self: ptr ID2d1StrokeStyle; dashes: ptr UncheckedArray[float32]; dashesCount: uint32): void {.w32callback.}
    GetDashes*: FnPointer
  ID2d1SimplifiedGeometrySinkVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnSetFillMode = proc (self: ptr ID2d1SimplifiedGeometrySink; fillMode: D2d1FillMode): void {.w32callback.}
    SetFillMode*: FnPointer
    # PfnSetSegmentFlags = proc (self: ptr ID2d1SimplifiedGeometrySink; vertexFlags: D2d1PathSegment): void {.w32callback.}
    SetSegmentFlags*: FnPointer
    # PfnBeginFigure = proc (self: ptr ID2d1SimplifiedGeometrySink; startPoint: D2d1Vec2f; figureBegin: D2d1FigureBegin): void {.w32callback.}
    BeginFigure*: FnPointer
    # PfnAddLines = proc (self: ptr ID2d1SimplifiedGeometrySink; points: ptr UncheckedArray[D2d1Vec2f]; pointsCount: uint32): void {.w32callback.}
    AddLines*: FnPointer
    # PfnAddBeziers = proc (self: ptr ID2d1SimplifiedGeometrySink; beziers: ptr UncheckedArray[D2d1BezierSegment]; beziersCount: uint32): void {.w32callback.}
    AddBeziers*: FnPointer
    # PfnEndFigure = proc (self: ptr ID2d1SimplifiedGeometrySink; figureEnd: D2d1FigureEnd): void {.w32callback.}
    EndFigure*: FnPointer
    # PfnClose = proc (self: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
    Close*: FnPointer
  ID2d1TessellationSinkVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnAddTriangles = proc (self: ptr ID2d1TessellationSink; triangles: ptr UncheckedArray[D2d1Triangle]; trianglesCount: uint32): void {.w32callback.}
    AddTriangles*: FnPointer
    # PfnClose = proc (self: ptr ID2d1TessellationSink): WinResult {.w32callback.}
    Close*: FnPointer
  ID2d1GeometryVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnGetBounds = proc (self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; bounds: var D2d1Rectf): WinResult {.w32callback.}
    GetBounds*: FnPointer
    # PfnGetWidenedBounds = proc (self: ptr ID2d1Geometry; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; bounds: var D2d1Rectf): WinResult {.w32callback.}
    GetWidenedBounds*: FnPointer
    # PfnStrokeContainsPoint = proc (self: ptr ID2d1Geometry; point: D2d1Vec2f; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; contains: var WtBOOL): WinResult {.w32callback.}
    StrokeContainsPoint*: FnPointer
    # PfnFillContainsPoint = proc (self: ptr ID2d1Geometry; point: D2d1Vec2f; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; contains: var WtBOOL): WinResult {.w32callback.}
    FillContainsPoint*: FnPointer
    # PfnCompareWithGeometry = proc (self: ptr ID2d1Geometry; inputGeometry: ptr ID2d1Geometry; inputGeometryTransform: ptr D2d1Affine2f; flatteningTolerance: float32; relation: var D2d1GeometryRelation): WinResult {.w32callback.}
    CompareWithGeometry*: FnPointer
    # PfnSimplify = proc (self: ptr ID2d1Geometry; simplificationOption: D2d1GeometrySimplificationOption; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
    Simplify*: FnPointer
    # PfnTessellate = proc (self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; tessellationSink: ptr ID2d1TessellationSink): WinResult {.w32callback.}
    Tessellate*: FnPointer
    # PfnCombineWithGeometry = proc (self: ptr ID2d1Geometry; inputGeometry: ptr ID2d1Geometry; combineMode: D2d1CombineMode; inputGeometryTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
    CombineWithGeometry*: FnPointer
    # PfnOutline = proc (self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
    Outline*: FnPointer
    # PfnComputeArea = proc (self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; area: var float32): WinResult {.w32callback.}
    ComputeArea*: FnPointer
    # PfnComputeLength = proc (self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; length: var float32): WinResult {.w32callback.}
    ComputeLength*: FnPointer
    # PfnComputePointAtLength = proc (self: ptr ID2d1Geometry; length: float32; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; point: ptr D2d1Vec2f; unitTangentVector: ptr D2d1Vec2f): WinResult {.w32callback.}
    ComputePointAtLength*: FnPointer
    # PfnWiden = proc (self: ptr ID2d1Geometry; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
    Widen*: FnPointer
  ID2d1RectangleGeometryVtbl* {.pure.} = object
    base*: ID2d1GeometryVtbl
    # PfnGetRect = proc (self: ptr ID2d1RectangleGeometry; rect: var D2d1Rectf): void {.w32callback.}
    GetRect*: FnPointer
  ID2d1RoundedRectangleGeometryVtbl* {.pure.} = object
    base*: ID2d1GeometryVtbl
    # PfnGetRoundedRect = proc (self: ptr ID2d1RoundedRectangleGeometry; roundedRect: var D2d1RoundedRectf): void {.w32callback.}
    GetRoundedRect*: FnPointer
  ID2d1EllipseGeometryVtbl* {.pure.} = object
    base*: ID2d1GeometryVtbl
    # PfnGetEllipse = proc (self: ptr ID2d1EllipseGeometry; ellipse: var D2d1Ellipse): void {.w32callback.}
    GetEllipse*: FnPointer
  ID2d1GeometryGroupVtbl* {.pure.} = object
    base*: ID2d1GeometryVtbl
    # PfnGetFillMode = proc (self: ptr ID2d1GeometryGroup): D2d1FillMode {.w32callback.}
    GetFillMode*: FnPointer
    # PfnGetSourceGeometryCount = proc (self: ptr ID2d1GeometryGroup): uint32 {.w32callback.}
    GetSourceGeometryCount*: FnPointer
    # PfnGetSourceGeometries = proc (self: ptr ID2d1GeometryGroup; geometries: ptr UncheckedArray[ptr ID2d1Geometry]; geometriesCount: uint32): void {.w32callback.}
    GetSourceGeometries*: FnPointer
  ID2d1TransformedGeometryVtbl* {.pure.} = object
    base*: ID2d1GeometryVtbl
    # PfnGetSourceGeometry = proc (self: ptr ID2d1TransformedGeometry; sourceGeometry: var ptr ID2d1Geometry): void {.w32callback.}
    GetSourceGeometry*: FnPointer
    # PfnGetTransform = proc (self: ptr ID2d1TransformedGeometry; transform: var D2d1Affine2f): void {.w32callback.}
    GetTransform*: FnPointer
  ID2d1GeometrySinkVtbl* {.pure.} = object
    base*: ID2d1SimplifiedGeometrySinkVtbl
    # PfnAddLine = proc (self: ptr ID2d1GeometrySink; point: D2d1Vec2f): void {.w32callback.}
    AddLine*: FnPointer
    # PfnAddBezier = proc (self: ptr ID2d1GeometrySink; bezier: D2d1BezierSegment): void {.w32callback.}
    AddBezier*: FnPointer
    # PfnAddQuadraticBezier = proc (self: ptr ID2d1GeometrySink; bezier: D2d1QuadraticBezierSegment): void {.w32callback.}
    AddQuadraticBezier*: FnPointer
    # PfnAddQuadraticBeziers = proc (self: ptr ID2d1GeometrySink; beziers: ptr UncheckedArray[D2d1QuadraticBezierSegment]; beziersCount: uint32): void {.w32callback.}
    AddQuadraticBeziers*: FnPointer
    # PfnAddArc = proc (self: ptr ID2d1GeometrySink; arc: D2d1ArcSegment): void {.w32callback.}
    AddArc*: FnPointer
  ID2d1PathGeometryVtbl* {.pure.} = object
    base*: ID2d1GeometryVtbl
    # PfnOpen = proc (self: ptr ID2d1PathGeometry; geometrySink: var ptr ID2d1GeometrySink): WinResult {.w32callback.}
    Open*: FnPointer
    # PfnStream = proc (self: ptr ID2d1PathGeometry; geometrySink: ptr ID2d1GeometrySink): WinResult {.w32callback.}
    Stream*: FnPointer
    # PfnGetSegmentCount = proc (self: ptr ID2d1PathGeometry; count: var uint32): WinResult {.w32callback.}
    GetSegmentCount*: FnPointer
    # PfnGetFigureCount = proc (self: ptr ID2d1PathGeometry; count: var uint32): WinResult {.w32callback.}
    GetFigureCount*: FnPointer
  ID2d1DrawingStateBlockVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnGetDescription = proc (self: ptr ID2d1DrawingStateBlock; stateDescription: var D2d1DrawingStateDescription): void {.w32callback.}
    GetDescription*: FnPointer
    # PfnSetDescription = proc (self: ptr ID2d1DrawingStateBlock; stateDescription: D2d1DrawingStateDescription): void {.w32callback.}
    SetDescription*: FnPointer
    # PfnSetTextRenderingParams = proc (self: ptr ID2d1DrawingStateBlock; textRenderingParams: ptr IDWriteRenderingParams): void {.w32callback.}
    SetTextRenderingParams*: FnPointer
    # PfnGetTextRenderingParams = proc (self: ptr ID2d1DrawingStateBlock; textRenderingParams: ptr ptr IDWriteRenderingParams): void {.w32callback.}
    GetTextRenderingParams*: FnPointer
  ID2d1RenderTargetVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnCreateBitmap = proc (self: ptr ID2d1RenderTarget; size: D2d1Size2u; srcData: pointer; pitch: uint32; bitmapProperties: D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
    CreateBitmap*: FnPointer
    # PfnCreateBitmapFromWicBitmap = proc (self: ptr ID2d1RenderTarget; wicBitmapSource: ptr IWicBitmapSource; bitmapProperties: ptr D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
    CreateBitmapFromWicBitmap*: FnPointer
    # PfnCreateSharedBitmap = proc (self: ptr ID2d1RenderTarget; riid: ptr WinGuid; data: pointer; bitmapProperties: ptr D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
    CreateSharedBitmap*: FnPointer
    # PfnCreateBitmapBrush = proc (self: ptr ID2d1RenderTarget; bitmap: ptr ID2d1Bitmap; bitmapBrushProperties: ptr D2d1BitmapBrushProperties; brushProperties: ptr D2d1BrushProperties; bitmapBrush: var ptr ID2d1BitmapBrush): WinResult {.w32callback.}
    CreateBitmapBrush*: FnPointer
    # PfnCreateSolidColorBrush = proc (self: ptr ID2d1RenderTarget; color: D2d1Rgbaf; brushProperties: ptr D2d1BrushProperties; solidColorBrush: var ptr ID2d1SolidColorBrush): WinResult {.w32callback.}
    CreateSolidColorBrush*: FnPointer
    # PfnCreateGradientStopCollection = proc (self: ptr ID2d1RenderTarget; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32; colorInterpolationGamma: D2d1Gamma; extendMode: D2d1ExtendMode; gradientStopCollection: var ptr ID2d1GradientStopCollection): WinResult {.w32callback.}
    CreateGradientStopCollection*: FnPointer
    # PfnCreateLinearGradientBrush = proc (self: ptr ID2d1RenderTarget; linearGradientBrushProperties: D2d1LinearGradientBrushProperties; brushProperties: ptr D2d1BrushProperties; gradientStopCollection: ptr ID2d1GradientStopCollection; linearGradientBrush: var ptr ID2d1LinearGradientBrush): WinResult {.w32callback.}
    CreateLinearGradientBrush*: FnPointer
    # PfnCreateRadialGradientBrush = proc (self: ptr ID2d1RenderTarget; radialGradientBrushProperties: D2d1RadialGradientBrushProperties; brushProperties: ptr D2d1BrushProperties; gradientStopCollection: ptr ID2d1GradientStopCollection; radialGradientBrush: var ptr ID2d1RadialGradientBrush): WinResult {.w32callback.}
    CreateRadialGradientBrush*: FnPointer
    # PfnCreateCompatibleRenderTarget = proc (self: ptr ID2d1RenderTarget; desiredSize: ptr D2d1Size2f; desiredPixelSize: ptr D2d1Size2u; desiredFormat: ptr D2d1PixelFormat; options: D2d1CompatibleRenderTargetOptions; bitmapRenderTarget: var ptr ID2d1BitmapRenderTarget): WinResult {.w32callback.}
    CreateCompatibleRenderTarget*: FnPointer
    # PfnCreateLayer = proc (self: ptr ID2d1RenderTarget; size: ptr D2d1Size2f; layer: var ptr ID2d1Layer): WinResult {.w32callback.}
    CreateLayer*: FnPointer
    # PfnCreateMesh = proc (self: ptr ID2d1RenderTarget; mesh: var ptr ID2d1Mesh): WinResult {.w32callback.}
    CreateMesh*: FnPointer
    # PfnDrawLine = proc (self: ptr ID2d1RenderTarget; point0: D2d1Vec2f; point1: D2d1Vec2f; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
    DrawLine*: FnPointer
    # PfnDrawRectangle = proc (self: ptr ID2d1RenderTarget; rect: D2d1Rectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
    DrawRectangle*: FnPointer
    # PfnFillRectangle = proc (self: ptr ID2d1RenderTarget; rect: D2d1Rectf; brush: ptr ID2d1Brush): void {.w32callback.}
    FillRectangle*: FnPointer
    # PfnDrawRoundedRectangle = proc (self: ptr ID2d1RenderTarget; roundedRect: D2d1RoundedRectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
    DrawRoundedRectangle*: FnPointer
    # PfnFillRoundedRectangle = proc (self: ptr ID2d1RenderTarget; roundedRect: D2d1RoundedRectf; brush: ptr ID2d1Brush): void {.w32callback.}
    FillRoundedRectangle*: FnPointer
    # PfnDrawEllipse = proc (self: ptr ID2d1RenderTarget; ellipse: D2d1Ellipse; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
    DrawEllipse*: FnPointer
    # PfnFillEllipse = proc (self: ptr ID2d1RenderTarget; ellipse: D2d1Ellipse; brush: ptr ID2d1Brush): void {.w32callback.}
    FillEllipse*: FnPointer
    # PfnDrawGeometry = proc (self: ptr ID2d1RenderTarget; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
    DrawGeometry*: FnPointer
    # PfnFillGeometry = proc (self: ptr ID2d1RenderTarget; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; opacityBrush: ptr ID2d1Brush): void {.w32callback.}
    FillGeometry*: FnPointer
    # PfnFillMesh = proc (self: ptr ID2d1RenderTarget; mesh: ptr ID2d1Mesh; brush: ptr ID2d1Brush): void {.w32callback.}
    FillMesh*: FnPointer
    # PfnFillOpacityMask = proc (self: ptr ID2d1RenderTarget; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; content: D2d1OpacityMaskContent; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
    FillOpacityMask*: FnPointer
    # PfnDrawBitmap = proc (self: ptr ID2d1RenderTarget; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1BitmapInterpolationMode; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
    DrawBitmap*: FnPointer
    # PfnDrawText = proc (self: ptr ID2d1RenderTarget; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDWriteTextFormat; layoutRect: D2d1Rectf; defaultFillBrush: ptr ID2d1Brush; options: D2d1DrawTextOptions; measuringMode: DwriteMeasuringMode): void {.w32callback.}
    DrawText*: FnPointer
    # PfnDrawTextLayout = proc (self: ptr ID2d1RenderTarget; origin: D2d1Vec2f; textLayout: ptr IDWriteTextLayout; defaultFillBrush: ptr ID2d1Brush; options: D2d1DrawTextOptions): void {.w32callback.}
    DrawTextLayout*: FnPointer
    # PfnDrawGlyphRun = proc (self: ptr ID2d1RenderTarget; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): void {.w32callback.}
    DrawGlyphRun*: FnPointer
    # PfnSetTransform = proc (self: ptr ID2d1RenderTarget; transform: D2d1Affine2f): void {.w32callback.}
    SetTransform*: FnPointer
    # PfnGetTransform = proc (self: ptr ID2d1RenderTarget; transform: var D2d1Affine2f): void {.w32callback.}
    GetTransform*: FnPointer
    # PfnSetAntialiasMode = proc (self: ptr ID2d1RenderTarget; antialiasMode: D2d1AntialiasMode): void {.w32callback.}
    SetAntialiasMode*: FnPointer
    # PfnGetAntialiasMode = proc (self: ptr ID2d1RenderTarget): D2d1AntialiasMode {.w32callback.}
    GetAntialiasMode*: FnPointer
    # PfnSetTextAntialiasMode = proc (self: ptr ID2d1RenderTarget; textAntialiasMode: D2d1TextAntialiasMode): void {.w32callback.}
    SetTextAntialiasMode*: FnPointer
    # PfnGetTextAntialiasMode = proc (self: ptr ID2d1RenderTarget): D2d1TextAntialiasMode {.w32callback.}
    GetTextAntialiasMode*: FnPointer
    # PfnSetTextRenderingParams = proc (self: ptr ID2d1RenderTarget; textRenderingParams: ptr IDWriteRenderingParams): void {.w32callback.}
    SetTextRenderingParams*: FnPointer
    # PfnGetTextRenderingParams = proc (self: ptr ID2d1RenderTarget; textRenderingParams: ptr ptr IDWriteRenderingParams): void {.w32callback.}
    GetTextRenderingParams*: FnPointer
    # PfnSetTags = proc (self: ptr ID2d1RenderTarget; tag1: uint64; tag2: uint64): void {.w32callback.}
    SetTags*: FnPointer
    # PfnGetTags = proc (self: ptr ID2d1RenderTarget; tag1: ptr uint64; tag2: ptr uint64): void {.w32callback.}
    GetTags*: FnPointer
    # PfnPushLayer = proc (self: ptr ID2d1RenderTarget; layerParameters: D2d1LayerParameters; layer: ptr ID2d1Layer): void {.w32callback.}
    PushLayer*: FnPointer
    # PfnPopLayer = proc (self: ptr ID2d1RenderTarget): void {.w32callback.}
    PopLayer*: FnPointer
    # PfnFlush = proc (self: ptr ID2d1RenderTarget; tag1: ptr uint64; tag2: ptr uint64): WinResult {.w32callback.}
    Flush*: FnPointer
    # PfnSaveDrawingState = proc (self: ptr ID2d1RenderTarget; drawingStateBlock: ptr ID2d1DrawingStateBlock): void {.w32callback.}
    SaveDrawingState*: FnPointer
    # PfnRestoreDrawingState = proc (self: ptr ID2d1RenderTarget; drawingStateBlock: ptr ID2d1DrawingStateBlock): void {.w32callback.}
    RestoreDrawingState*: FnPointer
    # PfnPushAxisAlignedClip = proc (self: ptr ID2d1RenderTarget; clipRect: D2d1Rectf; antialiasMode: D2d1AntialiasMode): void {.w32callback.}
    PushAxisAlignedClip*: FnPointer
    # PfnPopAxisAlignedClip = proc (self: ptr ID2d1RenderTarget): void {.w32callback.}
    PopAxisAlignedClip*: FnPointer
    # PfnClear = proc (self: ptr ID2d1RenderTarget; clearColor: ptr D2d1Rgbaf): void {.w32callback.}
    Clear*: FnPointer
    # PfnBeginDraw = proc (self: ptr ID2d1RenderTarget): void {.w32callback.}
    BeginDraw*: FnPointer
    # PfnEndDraw = proc (self: ptr ID2d1RenderTarget; tag1: ptr uint64; tag2: ptr uint64): WinResult {.w32callback.}
    EndDraw*: FnPointer
    # PfnGetPixelFormat = proc (self: ptr ID2d1RenderTarget): D2d1PixelFormat {.w32callback.}
    GetPixelFormat*: FnPointer
    # PfnSetDpi = proc (self: ptr ID2d1RenderTarget; dpiX: float32; dpiY: float32): void {.w32callback.}
    SetDpi*: FnPointer
    # PfnGetDpi = proc (self: ptr ID2d1RenderTarget; dpiX: var float32; dpiY: var float32): void {.w32callback.}
    GetDpi*: FnPointer
    # PfnGetSize = proc (self: ptr ID2d1RenderTarget): D2d1Size2f {.w32callback.}
    GetSize*: FnPointer
    # PfnGetPixelSize = proc (self: ptr ID2d1RenderTarget): D2d1Size2u {.w32callback.}
    GetPixelSize*: FnPointer
    # PfnGetMaximumBitmapSize = proc (self: ptr ID2d1RenderTarget): uint32 {.w32callback.}
    GetMaximumBitmapSize*: FnPointer
    # PfnIsSupported = proc (self: ptr ID2d1RenderTarget; renderTargetProperties: D2d1RenderTargetProperties): WtBOOL {.w32callback.}
    IsSupported*: FnPointer
  ID2d1HwndRenderTargetVtbl* {.pure.} = object
    base*: ID2d1RenderTargetVtbl
    # PfnCheckWindowState = proc (self: ptr ID2d1HwndRenderTarget): D2d1WindowState {.w32callback.}
    CheckWindowState*: FnPointer
    # PfnResize = proc (self: ptr ID2d1HwndRenderTarget; pixelSize: ptr D2d1Size2u): WinResult {.w32callback.}
    Resize*: FnPointer
    # PfnGetHwnd = proc (self: ptr ID2d1HwndRenderTarget): WtHWND {.w32callback.}
    GetHwnd*: FnPointer
  ID2d1DCRenderTargetVtbl* {.pure.} = object
    base*: ID2d1RenderTargetVtbl
    # PfnBindDC = proc (self: ptr ID2d1DCRenderTarget; hDC: WtHDC; pSubRect: ptr D2d1Recti): WinResult {.w32callback.}
    BindDC*: FnPointer
  ID2d1FactoryVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnReloadSystemMetrics = proc (self: ptr ID2d1Factory): WinResult {.w32callback.}
    ReloadSystemMetrics*: FnPointer
    # PfnGetDesktopDpi = proc (self: ptr ID2d1Factory; dpiX: var float32; dpiY: var float32): void {.w32callback.}
    GetDesktopDpi*: FnPointer
    # PfnCreateRectangleGeometry = proc (self: ptr ID2d1Factory; rectangle: D2d1Rectf; rectangleGeometry: var ptr ID2d1RectangleGeometry): WinResult {.w32callback.}
    CreateRectangleGeometry*: FnPointer
    # PfnCreateRoundedRectangleGeometry = proc (self: ptr ID2d1Factory; roundedRectangle: D2d1RoundedRectf; roundedRectangleGeometry: var ptr ID2d1RoundedRectangleGeometry): WinResult {.w32callback.}
    CreateRoundedRectangleGeometry*: FnPointer
    # PfnCreateEllipseGeometry = proc (self: ptr ID2d1Factory; ellipse: D2d1Ellipse; ellipseGeometry: var ptr ID2d1EllipseGeometry): WinResult {.w32callback.}
    CreateEllipseGeometry*: FnPointer
    # PfnCreateGeometryGroup = proc (self: ptr ID2d1Factory; fillMode: D2d1FillMode; geometries: ptr UncheckedArray[ptr ID2d1Geometry]; geometriesCount: uint32; geometryGroup: var ptr ID2d1GeometryGroup): WinResult {.w32callback.}
    CreateGeometryGroup*: FnPointer
    # PfnCreateTransformedGeometry = proc (self: ptr ID2d1Factory; sourceGeometry: ptr ID2d1Geometry; transform: D2d1Affine2f; transformedGeometry: var ptr ID2d1TransformedGeometry): WinResult {.w32callback.}
    CreateTransformedGeometry*: FnPointer
    # PfnCreatePathGeometry = proc (self: ptr ID2d1Factory; pathGeometry: var ptr ID2d1PathGeometry): WinResult {.w32callback.}
    CreatePathGeometry*: FnPointer
    # PfnCreateStrokeStyle = proc (self: ptr ID2d1Factory; strokeStyleProperties: D2d1StrokeStyleProperties; dashes: ptr UncheckedArray[float32]; dashesCount: uint32; strokeStyle: var ptr ID2d1StrokeStyle): WinResult {.w32callback.}
    CreateStrokeStyle*: FnPointer
    # PfnCreateDrawingStateBlock = proc (self: ptr ID2d1Factory; drawingStateDescription: ptr D2d1DrawingStateDescription; textRenderingParams: ptr IDWriteRenderingParams; drawingStateBlock: var ptr ID2d1DrawingStateBlock): WinResult {.w32callback.}
    CreateDrawingStateBlock*: FnPointer
    # PfnCreateWicBitmapRenderTarget = proc (self: ptr ID2d1Factory; target: ptr IWicBitmap; renderTargetProperties: D2d1RenderTargetProperties; renderTarget: var ptr ID2d1RenderTarget): WinResult {.w32callback.}
    CreateWicBitmapRenderTarget*: FnPointer
    # PfnCreateHwndRenderTarget = proc (self: ptr ID2d1Factory; renderTargetProperties: D2d1RenderTargetProperties; hwndRenderTargetProperties: D2d1HwndRenderTargetProperties; hwndRenderTarget: var ptr ID2d1HwndRenderTarget): WinResult {.w32callback.}
    CreateHwndRenderTarget*: FnPointer
    # PfnCreateDxgiSurfaceRenderTarget = proc (self: ptr ID2d1Factory; dxgiSurface: ptr WtIDXGISurface; renderTargetProperties: D2d1RenderTargetProperties; renderTarget: var ptr ID2d1RenderTarget): WinResult {.w32callback.}
    CreateDxgiSurfaceRenderTarget*: FnPointer
    # PfnCreateDCRenderTarget = proc (self: ptr ID2d1Factory; renderTargetProperties: D2d1RenderTargetProperties; dcRenderTarget: var ptr ID2d1DCRenderTarget): WinResult {.w32callback.}
    CreateDCRenderTarget*: FnPointer
  ID2d1ImageVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
  ID2d1BitmapVtbl* {.pure.} = object
    base*: ID2d1ImageVtbl
    # PfnGetSize = proc (self: ptr ID2d1Bitmap): D2d1Size2f {.w32callback.}
    GetSize*: FnPointer
    # PfnGetPixelSize = proc (self: ptr ID2d1Bitmap): D2d1Size2u {.w32callback.}
    GetPixelSize*: FnPointer
    # PfnGetPixelFormat = proc (self: ptr ID2d1Bitmap): D2d1PixelFormat {.w32callback.}
    GetPixelFormat*: FnPointer
    # PfnGetDpi = proc (self: ptr ID2d1Bitmap; dpiX: var float32; dpiY: var float32): void {.w32callback.}
    GetDpi*: FnPointer
    # PfnCopyFromBitmap = proc (self: ptr ID2d1Bitmap; destPoint: ptr D2d1Vec2u; bitmap: ptr ID2d1Bitmap; srcRect: ptr D2d1Rectu): WinResult {.w32callback.}
    CopyFromBitmap*: FnPointer
    # PfnCopyFromRenderTarget = proc (self: ptr ID2d1Bitmap; destPoint: ptr D2d1Vec2u; renderTarget: ptr ID2d1RenderTarget; srcRect: ptr D2d1Rectu): WinResult {.w32callback.}
    CopyFromRenderTarget*: FnPointer
    # PfnCopyFromMemory = proc (self: ptr ID2d1Bitmap; dstRect: ptr D2d1Rectu; srcData: pointer; pitch: uint32): WinResult {.w32callback.}
    CopyFromMemory*: FnPointer
  ID2d1BrushVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnSetOpacity = proc (self: ptr ID2d1Brush; opacity: float32): void {.w32callback.}
    SetOpacity*: FnPointer
    # PfnSetTransform = proc (self: ptr ID2d1Brush; transform: D2d1Affine2f): void {.w32callback.}
    SetTransform*: FnPointer
    # PfnGetOpacity = proc (self: ptr ID2d1Brush): float32 {.w32callback.}
    GetOpacity*: FnPointer
    # PfnGetTransform = proc (self: ptr ID2d1Brush; transform: var D2d1Affine2f): void {.w32callback.}
    GetTransform*: FnPointer
  ID2d1BitmapBrushVtbl* {.pure.} = object
    base*: ID2d1BrushVtbl
    # PfnSetExtendModeX = proc (self: ptr ID2d1BitmapBrush; extendModeX: D2d1ExtendMode): void {.w32callback.}
    SetExtendModeX*: FnPointer
    # PfnSetExtendModeY = proc (self: ptr ID2d1BitmapBrush; extendModeY: D2d1ExtendMode): void {.w32callback.}
    SetExtendModeY*: FnPointer
    # PfnSetInterpolationMode = proc (self: ptr ID2d1BitmapBrush; interpolationMode: D2d1BitmapInterpolationMode): void {.w32callback.}
    SetInterpolationMode*: FnPointer
    # PfnSetBitmap = proc (self: ptr ID2d1BitmapBrush; bitmap: ptr ID2d1Bitmap): void {.w32callback.}
    SetBitmap*: FnPointer
    # PfnGetExtendModeX = proc (self: ptr ID2d1BitmapBrush): D2d1ExtendMode {.w32callback.}
    GetExtendModeX*: FnPointer
    # PfnGetExtendModeY = proc (self: ptr ID2d1BitmapBrush): D2d1ExtendMode {.w32callback.}
    GetExtendModeY*: FnPointer
    # PfnGetInterpolationMode = proc (self: ptr ID2d1BitmapBrush): D2d1BitmapInterpolationMode {.w32callback.}
    GetInterpolationMode*: FnPointer
    # PfnGetBitmap = proc (self: ptr ID2d1BitmapBrush; bitmap: ptr ptr ID2d1Bitmap): void {.w32callback.}
    GetBitmap*: FnPointer
  ID2d1SolidColorBrushVtbl* {.pure.} = object
    base*: ID2d1BrushVtbl
    # PfnSetColor = proc (self: ptr ID2d1SolidColorBrush; color: D2d1Rgbaf): void {.w32callback.}
    SetColor*: FnPointer
    # PfnGetColor = proc (self: ptr ID2d1SolidColorBrush): D2d1Rgbaf {.w32callback.}
    GetColor*: FnPointer
  ID2d1GradientStopCollectionVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnGetGradientStopCount = proc (self: ptr ID2d1GradientStopCollection): uint32 {.w32callback.}
    GetGradientStopCount*: FnPointer
    # PfnGetGradientStops = proc (self: ptr ID2d1GradientStopCollection; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32): void {.w32callback.}
    GetGradientStops*: FnPointer
    # PfnGetColorInterpolationGamma = proc (self: ptr ID2d1GradientStopCollection): D2d1Gamma {.w32callback.}
    GetColorInterpolationGamma*: FnPointer
    # PfnGetExtendMode = proc (self: ptr ID2d1GradientStopCollection): D2d1ExtendMode {.w32callback.}
    GetExtendMode*: FnPointer
  ID2d1LinearGradientBrushVtbl* {.pure.} = object
    base*: ID2d1BrushVtbl
    # PfnSetStartPoint = proc (self: ptr ID2d1LinearGradientBrush; startPoint: D2d1Vec2f): void {.w32callback.}
    SetStartPoint*: FnPointer
    # PfnSetEndPoint = proc (self: ptr ID2d1LinearGradientBrush; endPoint: D2d1Vec2f): void {.w32callback.}
    SetEndPoint*: FnPointer
    # PfnGetStartPoint = proc (self: ptr ID2d1LinearGradientBrush): D2d1Vec2f {.w32callback.}
    GetStartPoint*: FnPointer
    # PfnGetEndPoint = proc (self: ptr ID2d1LinearGradientBrush): D2d1Vec2f {.w32callback.}
    GetEndPoint*: FnPointer
    # PfnGetGradientStopCollection = proc (self: ptr ID2d1LinearGradientBrush; gradientStopCollection: var ptr ID2d1GradientStopCollection): void {.w32callback.}
    GetGradientStopCollection*: FnPointer
  ID2d1RadialGradientBrushVtbl* {.pure.} = object
    base*: ID2d1BrushVtbl
    # PfnSetCenter = proc (self: ptr ID2d1RadialGradientBrush; center: D2d1Vec2f): void {.w32callback.}
    SetCenter*: FnPointer
    # PfnSetGradientOriginOffset = proc (self: ptr ID2d1RadialGradientBrush; gradientOriginOffset: D2d1Vec2f): void {.w32callback.}
    SetGradientOriginOffset*: FnPointer
    # PfnSetRadiusX = proc (self: ptr ID2d1RadialGradientBrush; radiusX: float32): void {.w32callback.}
    SetRadiusX*: FnPointer
    # PfnSetRadiusY = proc (self: ptr ID2d1RadialGradientBrush; radiusY: float32): void {.w32callback.}
    SetRadiusY*: FnPointer
    # PfnGetCenter = proc (self: ptr ID2d1RadialGradientBrush): D2d1Vec2f {.w32callback.}
    GetCenter*: FnPointer
    # PfnGetGradientOriginOffset = proc (self: ptr ID2d1RadialGradientBrush): D2d1Vec2f {.w32callback.}
    GetGradientOriginOffset*: FnPointer
    # PfnGetRadiusX = proc (self: ptr ID2d1RadialGradientBrush): float32 {.w32callback.}
    GetRadiusX*: FnPointer
    # PfnGetRadiusY = proc (self: ptr ID2d1RadialGradientBrush): float32 {.w32callback.}
    GetRadiusY*: FnPointer
    # PfnGetGradientStopCollection = proc (self: ptr ID2d1RadialGradientBrush; gradientStopCollection: var ptr ID2d1GradientStopCollection): void {.w32callback.}
    GetGradientStopCollection*: FnPointer
  ID2d1LayerVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnGetSize = proc (self: ptr ID2d1Layer): D2d1Size2f {.w32callback.}
    GetSize*: FnPointer
  ID2d1MeshVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnOpen = proc (self: ptr ID2d1Mesh; tessellationSink: var ptr ID2d1TessellationSink): WinResult {.w32callback.}
    Open*: FnPointer
  ID2d1BitmapRenderTargetVtbl* {.pure.} = object
    base*: ID2d1RenderTargetVtbl
    # PfnGetBitmap = proc (self: ptr ID2d1BitmapRenderTarget; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
    GetBitmap*: FnPointer
  ID2d1ColorContextVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnGetColorSpace = proc (self: ptr ID2d1ColorContext): D2d1ColorSpace {.w32callback.}
    GetColorSpace*: FnPointer
    # PfnGetProfileSize = proc (self: ptr ID2d1ColorContext): uint32 {.w32callback.}
    GetProfileSize*: FnPointer
    # PfnGetProfile = proc (self: ptr ID2d1ColorContext; profile: ptr UncheckedArray[uint8]; profileSize: uint32): WinResult {.w32callback.}
    GetProfile*: FnPointer
  ID2d1Bitmap1Vtbl* {.pure.} = object
    base*: ID2d1BitmapVtbl
    # PfnGetColorContext = proc (self: ptr ID2d1Bitmap1; colorContext: ptr ptr ID2d1ColorContext): void {.w32callback.}
    GetColorContext*: FnPointer
    # PfnGetOptions = proc (self: ptr ID2d1Bitmap1): D2d1BitmapOptions {.w32callback.}
    GetOptions*: FnPointer
    # PfnGetSurface = proc (self: ptr ID2d1Bitmap1; dxgiSurface: ptr ptr WtIDXGISurface): WinResult {.w32callback.}
    GetSurface*: FnPointer
    # PfnMap = proc (self: ptr ID2d1Bitmap1; options: D2d1MapOptions; mappedRect: var D2d1MappedRect): WinResult {.w32callback.}
    Map*: FnPointer
    # PfnUnmap = proc (self: ptr ID2d1Bitmap1): WinResult {.w32callback.}
    Unmap*: FnPointer
  ID2d1PropertiesVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetPropertyCount = proc (self: ptr ID2d1Properties): uint32 {.w32callback.}
    GetPropertyCount*: FnPointer
    # PfnGetPropertyName = proc (self: ptr ID2d1Properties; index: uint32; name: ptr UncheckedArray[uint16]; nameCount: uint32): WinResult {.w32callback.}
    GetPropertyName*: FnPointer
    # PfnGetPropertyNameLength = proc (self: ptr ID2d1Properties; index: uint32): uint32 {.w32callback.}
    GetPropertyNameLength*: FnPointer
    # PfnGetType = proc (self: ptr ID2d1Properties; index: uint32): D2d1PropertyType {.w32callback.}
    GetType*: FnPointer
    # PfnGetPropertyIndex = proc (self: ptr ID2d1Properties; name: WtPWSTR): uint32 {.w32callback.}
    GetPropertyIndex*: FnPointer
    # PfnSetValueByName = proc (self: ptr ID2d1Properties; name: WtPWSTR; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
    SetValueByName*: FnPointer
    # PfnSetValue = proc (self: ptr ID2d1Properties; index: uint32; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
    SetValue*: FnPointer
    # PfnGetValueByName = proc (self: ptr ID2d1Properties; name: WtPWSTR; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
    GetValueByName*: FnPointer
    # PfnGetValue = proc (self: ptr ID2d1Properties; index: uint32; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
    GetValue*: FnPointer
    # PfnGetValueSize = proc (self: ptr ID2d1Properties; index: uint32): uint32 {.w32callback.}
    GetValueSize*: FnPointer
    # PfnGetSubProperties = proc (self: ptr ID2d1Properties; index: uint32; subProperties: ptr ptr ID2d1Properties): WinResult {.w32callback.}
    GetSubProperties*: FnPointer
  ID2d1EffectVtbl* {.pure.} = object
    base*: ID2d1PropertiesVtbl
    # PfnSetInput = proc (self: ptr ID2d1Effect; index: uint32; input: ptr ID2d1Image; invalidate: WtBOOL): void {.w32callback.}
    SetInput*: FnPointer
    # PfnSetInputCount = proc (self: ptr ID2d1Effect; inputCount: uint32): WinResult {.w32callback.}
    SetInputCount*: FnPointer
    # PfnGetInput = proc (self: ptr ID2d1Effect; index: uint32; input: ptr ptr ID2d1Image): void {.w32callback.}
    GetInput*: FnPointer
    # PfnGetInputCount = proc (self: ptr ID2d1Effect): uint32 {.w32callback.}
    GetInputCount*: FnPointer
    # PfnGetOutput = proc (self: ptr ID2d1Effect; outputImage: var ptr ID2d1Image): void {.w32callback.}
    GetOutput*: FnPointer
  ID2d1GradientStopCollection1Vtbl* {.pure.} = object
    base*: ID2d1GradientStopCollectionVtbl
    # PfnGetGradientStops1 = proc (self: ptr ID2d1GradientStopCollection1; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32): void {.w32callback.}
    GetGradientStops1*: FnPointer
    # PfnGetPreInterpolationSpace = proc (self: ptr ID2d1GradientStopCollection1): D2d1ColorSpace {.w32callback.}
    GetPreInterpolationSpace*: FnPointer
    # PfnGetPostInterpolationSpace = proc (self: ptr ID2d1GradientStopCollection1): D2d1ColorSpace {.w32callback.}
    GetPostInterpolationSpace*: FnPointer
    # PfnGetBufferPrecision = proc (self: ptr ID2d1GradientStopCollection1): D2d1BufferPrecision {.w32callback.}
    GetBufferPrecision*: FnPointer
    # PfnGetColorInterpolationMode = proc (self: ptr ID2d1GradientStopCollection1): D2d1ColorInterpolationMode {.w32callback.}
    GetColorInterpolationMode*: FnPointer
  ID2d1ImageBrushVtbl* {.pure.} = object
    base*: ID2d1BrushVtbl
    # PfnSetImage = proc (self: ptr ID2d1ImageBrush; image: ptr ID2d1Image): void {.w32callback.}
    SetImage*: FnPointer
    # PfnSetExtendModeX = proc (self: ptr ID2d1ImageBrush; extendModeX: D2d1ExtendMode): void {.w32callback.}
    SetExtendModeX*: FnPointer
    # PfnSetExtendModeY = proc (self: ptr ID2d1ImageBrush; extendModeY: D2d1ExtendMode): void {.w32callback.}
    SetExtendModeY*: FnPointer
    # PfnSetInterpolationMode = proc (self: ptr ID2d1ImageBrush; interpolationMode: D2d1InterpolationMode): void {.w32callback.}
    SetInterpolationMode*: FnPointer
    # PfnSetSourceRectangle = proc (self: ptr ID2d1ImageBrush; sourceRectangle: D2d1Rectf): void {.w32callback.}
    SetSourceRectangle*: FnPointer
    # PfnGetImage = proc (self: ptr ID2d1ImageBrush; image: ptr ptr ID2d1Image): void {.w32callback.}
    GetImage*: FnPointer
    # PfnGetExtendModeX = proc (self: ptr ID2d1ImageBrush): D2d1ExtendMode {.w32callback.}
    GetExtendModeX*: FnPointer
    # PfnGetExtendModeY = proc (self: ptr ID2d1ImageBrush): D2d1ExtendMode {.w32callback.}
    GetExtendModeY*: FnPointer
    # PfnGetInterpolationMode = proc (self: ptr ID2d1ImageBrush): D2d1InterpolationMode {.w32callback.}
    GetInterpolationMode*: FnPointer
    # PfnGetSourceRectangle = proc (self: ptr ID2d1ImageBrush; sourceRectangle: var D2d1Rectf): void {.w32callback.}
    GetSourceRectangle*: FnPointer
  ID2d1BitmapBrush1Vtbl* {.pure.} = object
    base*: ID2d1BitmapBrushVtbl
    # PfnSetInterpolationMode1 = proc (self: ptr ID2d1BitmapBrush1; interpolationMode: D2d1InterpolationMode): void {.w32callback.}
    SetInterpolationMode1*: FnPointer
    # PfnGetInterpolationMode1 = proc (self: ptr ID2d1BitmapBrush1): D2d1InterpolationMode {.w32callback.}
    GetInterpolationMode1*: FnPointer
  ID2d1GdiMetafileSinkVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnProcessRecord = proc (self: ptr ID2d1GdiMetafileSink; recordType: uint32; recordData: pointer; recordDataSize: uint32): WinResult {.w32callback.}
    ProcessRecord*: FnPointer
  ID2d1GdiMetafileVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnStream = proc (self: ptr ID2d1GdiMetafile; sink: ptr ID2d1GdiMetafileSink): WinResult {.w32callback.}
    Stream*: FnPointer
    # PfnGetBounds = proc (self: ptr ID2d1GdiMetafile; bounds: var D2d1Rectf): WinResult {.w32callback.}
    GetBounds*: FnPointer
  ID2d1CommandSinkVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnBeginDraw = proc (self: ptr ID2d1CommandSink): WinResult {.w32callback.}
    BeginDraw*: FnPointer
    # PfnEndDraw = proc (self: ptr ID2d1CommandSink): WinResult {.w32callback.}
    EndDraw*: FnPointer
    # PfnSetAntialiasMode = proc (self: ptr ID2d1CommandSink; antialiasMode: D2d1AntialiasMode): WinResult {.w32callback.}
    SetAntialiasMode*: FnPointer
    # PfnSetTags = proc (self: ptr ID2d1CommandSink; tag1: uint64; tag2: uint64): WinResult {.w32callback.}
    SetTags*: FnPointer
    # PfnSetTextAntialiasMode = proc (self: ptr ID2d1CommandSink; textAntialiasMode: D2d1TextAntialiasMode): WinResult {.w32callback.}
    SetTextAntialiasMode*: FnPointer
    # PfnSetTextRenderingParams = proc (self: ptr ID2d1CommandSink; textRenderingParams: ptr IDWriteRenderingParams): WinResult {.w32callback.}
    SetTextRenderingParams*: FnPointer
    # PfnSetTransform = proc (self: ptr ID2d1CommandSink; transform: D2d1Affine2f): WinResult {.w32callback.}
    SetTransform*: FnPointer
    # PfnSetPrimitiveBlend = proc (self: ptr ID2d1CommandSink; primitiveBlend: D2d1PrimitiveBlend): WinResult {.w32callback.}
    SetPrimitiveBlend*: FnPointer
    # PfnSetUnitMode = proc (self: ptr ID2d1CommandSink; unitMode: D2d1UnitMode): WinResult {.w32callback.}
    SetUnitMode*: FnPointer
    # PfnClear = proc (self: ptr ID2d1CommandSink; color: ptr D2d1Rgbaf): WinResult {.w32callback.}
    Clear*: FnPointer
    # PfnDrawGlyphRun = proc (self: ptr ID2d1CommandSink; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; glyphRunDescription: ptr DwriteGlyphRunDescription; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): WinResult {.w32callback.}
    DrawGlyphRun*: FnPointer
    # PfnDrawLine = proc (self: ptr ID2d1CommandSink; point0: D2d1Vec2f; point1: D2d1Vec2f; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.w32callback.}
    DrawLine*: FnPointer
    # PfnDrawGeometry = proc (self: ptr ID2d1CommandSink; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.w32callback.}
    DrawGeometry*: FnPointer
    # PfnDrawRectangle = proc (self: ptr ID2d1CommandSink; rect: D2d1Rectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.w32callback.}
    DrawRectangle*: FnPointer
    # PfnDrawBitmap = proc (self: ptr ID2d1CommandSink; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1InterpolationMode; sourceRectangle: ptr D2d1Rectf; perspectiveTransform: ptr D2d1Mat4f): WinResult {.w32callback.}
    DrawBitmap*: FnPointer
    # PfnDrawImage = proc (self: ptr ID2d1CommandSink; image: ptr ID2d1Image; targetOffset: ptr D2d1Vec2f; imageRectangle: ptr D2d1Rectf; interpolationMode: D2d1InterpolationMode; compositeMode: D2d1CompositeMode): WinResult {.w32callback.}
    DrawImage*: FnPointer
    # PfnDrawGdiMetafile = proc (self: ptr ID2d1CommandSink; gdiMetafile: ptr ID2d1GdiMetafile; targetOffset: ptr D2d1Vec2f): WinResult {.w32callback.}
    DrawGdiMetafile*: FnPointer
    # PfnFillMesh = proc (self: ptr ID2d1CommandSink; mesh: ptr ID2d1Mesh; brush: ptr ID2d1Brush): WinResult {.w32callback.}
    FillMesh*: FnPointer
    # PfnFillOpacityMask = proc (self: ptr ID2d1CommandSink; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): WinResult {.w32callback.}
    FillOpacityMask*: FnPointer
    # PfnFillGeometry = proc (self: ptr ID2d1CommandSink; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; opacityBrush: ptr ID2d1Brush): WinResult {.w32callback.}
    FillGeometry*: FnPointer
    # PfnFillRectangle = proc (self: ptr ID2d1CommandSink; rect: D2d1Rectf; brush: ptr ID2d1Brush): WinResult {.w32callback.}
    FillRectangle*: FnPointer
    # PfnPushAxisAlignedClip = proc (self: ptr ID2d1CommandSink; clipRect: D2d1Rectf; antialiasMode: D2d1AntialiasMode): WinResult {.w32callback.}
    PushAxisAlignedClip*: FnPointer
    # PfnPushLayer = proc (self: ptr ID2d1CommandSink; layerParameters1: D2d1LayerParameters1; layer: ptr ID2d1Layer): WinResult {.w32callback.}
    PushLayer*: FnPointer
    # PfnPopAxisAlignedClip = proc (self: ptr ID2d1CommandSink): WinResult {.w32callback.}
    PopAxisAlignedClip*: FnPointer
    # PfnPopLayer = proc (self: ptr ID2d1CommandSink): WinResult {.w32callback.}
    PopLayer*: FnPointer
  ID2d1CommandListVtbl* {.pure.} = object
    base*: ID2d1ImageVtbl
    # PfnStream = proc (self: ptr ID2d1CommandList; sink: ptr ID2d1CommandSink): WinResult {.w32callback.}
    Stream*: FnPointer
    # PfnClose = proc (self: ptr ID2d1CommandList): WinResult {.w32callback.}
    Close*: FnPointer
  ID2d1PrintControlVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnAddPage = proc (self: ptr ID2d1PrintControl; commandList: ptr ID2d1CommandList; pageSize: D2d1Size2f; pagePrintTicketStream: ptr IStream; tag1: ptr uint64; tag2: ptr uint64): WinResult {.w32callback.}
    AddPage*: FnPointer
    # PfnClose = proc (self: ptr ID2d1PrintControl): WinResult {.w32callback.}
    Close*: FnPointer
  ID2d1DeviceVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnCreateDeviceContext = proc (self: ptr ID2d1Device; options: D2d1DeviceContextOptions; deviceContext: var ptr ID2d1DeviceContext): WinResult {.w32callback.}
    CreateDeviceContext*: FnPointer
    # PfnCreatePrintControl = proc (self: ptr ID2d1Device; wicFactory: ptr IWicImagingFactory; documentTarget: ptr WtIPrintDocumentPackageTarget; printControlProperties: ptr D2d1PrintControlProperties; printControl: var ptr ID2d1PrintControl): WinResult {.w32callback.}
    CreatePrintControl*: FnPointer
    # PfnSetMaximumTextureMemory = proc (self: ptr ID2d1Device; maximumInBytes: uint64): void {.w32callback.}
    SetMaximumTextureMemory*: FnPointer
    # PfnGetMaximumTextureMemory = proc (self: ptr ID2d1Device): uint64 {.w32callback.}
    GetMaximumTextureMemory*: FnPointer
    # PfnClearResources = proc (self: ptr ID2d1Device; millisecondsSinceUse: uint32): void {.w32callback.}
    ClearResources*: FnPointer
  ID2d1DeviceContextVtbl* {.pure.} = object
    base*: ID2d1RenderTargetVtbl
    # PfnCreateBitmap = proc (self: ptr ID2d1DeviceContext; size: D2d1Size2u; sourceData: pointer; pitch: uint32; bitmapProperties: D2d1BitmapProperties1; bitmap: var ptr ID2d1Bitmap1): WinResult {.w32callback.}
    CreateBitmap*: FnPointer
    # PfnCreateBitmapFromWicBitmap = proc (self: ptr ID2d1DeviceContext; wicBitmapSource: ptr IWicBitmapSource; bitmapProperties: ptr D2d1BitmapProperties1; bitmap: var ptr ID2d1Bitmap1): WinResult {.w32callback.}
    CreateBitmapFromWicBitmap*: FnPointer
    # PfnCreateColorContext = proc (self: ptr ID2d1DeviceContext; space: D2d1ColorSpace; profile: ptr UncheckedArray[uint8]; profileSize: uint32; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
    CreateColorContext*: FnPointer
    # PfnCreateColorContextFromFilename = proc (self: ptr ID2d1DeviceContext; filename: WtPWSTR; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
    CreateColorContextFromFilename*: FnPointer
    # PfnCreateColorContextFromWicColorContext = proc (self: ptr ID2d1DeviceContext; wicColorContext: ptr IWicColorContext; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
    CreateColorContextFromWicColorContext*: FnPointer
    # PfnCreateBitmapFromDxgiSurface = proc (self: ptr ID2d1DeviceContext; surface: ptr WtIDXGISurface; bitmapProperties: ptr D2d1BitmapProperties1; bitmap: var ptr ID2d1Bitmap1): WinResult {.w32callback.}
    CreateBitmapFromDxgiSurface*: FnPointer
    # PfnCreateEffect = proc (self: ptr ID2d1DeviceContext; effectId: ptr WinGuid; effect: var ptr ID2d1Effect): WinResult {.w32callback.}
    CreateEffect*: FnPointer
    # PfnCreateGradientStopCollection = proc (self: ptr ID2d1DeviceContext; straightAlphaGradientStops: ptr UncheckedArray[D2d1GradientStop]; straightAlphaGradientStopsCount: uint32; preInterpolationSpace: D2d1ColorSpace; postInterpolationSpace: D2d1ColorSpace; bufferPrecision: D2d1BufferPrecision; extendMode: D2d1ExtendMode; colorInterpolationMode: D2d1ColorInterpolationMode; gradientStopCollection1: var ptr ID2d1GradientStopCollection1): WinResult {.w32callback.}
    CreateGradientStopCollection*: FnPointer
    # PfnCreateImageBrush = proc (self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; imageBrushProperties: D2d1ImageBrushProperties; brushProperties: ptr D2d1BrushProperties; imageBrush: var ptr ID2d1ImageBrush): WinResult {.w32callback.}
    CreateImageBrush*: FnPointer
    # PfnCreateBitmapBrush = proc (self: ptr ID2d1DeviceContext; bitmap: ptr ID2d1Bitmap; bitmapBrushProperties: ptr D2d1BitmapBrushProperties1; brushProperties: ptr D2d1BrushProperties; bitmapBrush: var ptr ID2d1BitmapBrush1): WinResult {.w32callback.}
    CreateBitmapBrush*: FnPointer
    # PfnCreateCommandList = proc (self: ptr ID2d1DeviceContext; commandList: var ptr ID2d1CommandList): WinResult {.w32callback.}
    CreateCommandList*: FnPointer
    # PfnIsDxgiFormatSupported = proc (self: ptr ID2d1DeviceContext; format: DxgiFormat): WtBOOL {.w32callback.}
    IsDxgiFormatSupported*: FnPointer
    # PfnIsBufferPrecisionSupported = proc (self: ptr ID2d1DeviceContext; bufferPrecision: D2d1BufferPrecision): WtBOOL {.w32callback.}
    IsBufferPrecisionSupported*: FnPointer
    # PfnGetImageLocalBounds = proc (self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; localBounds: var D2d1Rectf): WinResult {.w32callback.}
    GetImageLocalBounds*: FnPointer
    # PfnGetImageWorldBounds = proc (self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; worldBounds: var D2d1Rectf): WinResult {.w32callback.}
    GetImageWorldBounds*: FnPointer
    # PfnGetGlyphRunWorldBounds = proc (self: ptr ID2d1DeviceContext; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; measuringMode: DwriteMeasuringMode; bounds: var D2d1Rectf): WinResult {.w32callback.}
    GetGlyphRunWorldBounds*: FnPointer
    # PfnGetDevice = proc (self: ptr ID2d1DeviceContext; device: var ptr ID2d1Device): void {.w32callback.}
    GetDevice*: FnPointer
    # PfnSetTarget = proc (self: ptr ID2d1DeviceContext; image: ptr ID2d1Image): void {.w32callback.}
    SetTarget*: FnPointer
    # PfnGetTarget = proc (self: ptr ID2d1DeviceContext; image: ptr ptr ID2d1Image): void {.w32callback.}
    GetTarget*: FnPointer
    # PfnSetRenderingControls = proc (self: ptr ID2d1DeviceContext; renderingControls: D2d1RenderingControls): void {.w32callback.}
    SetRenderingControls*: FnPointer
    # PfnGetRenderingControls = proc (self: ptr ID2d1DeviceContext; renderingControls: var D2d1RenderingControls): void {.w32callback.}
    GetRenderingControls*: FnPointer
    # PfnSetPrimitiveBlend = proc (self: ptr ID2d1DeviceContext; primitiveBlend: D2d1PrimitiveBlend): void {.w32callback.}
    SetPrimitiveBlend*: FnPointer
    # PfnGetPrimitiveBlend = proc (self: ptr ID2d1DeviceContext): D2d1PrimitiveBlend {.w32callback.}
    GetPrimitiveBlend*: FnPointer
    # PfnSetUnitMode = proc (self: ptr ID2d1DeviceContext; unitMode: D2d1UnitMode): void {.w32callback.}
    SetUnitMode*: FnPointer
    # PfnGetUnitMode = proc (self: ptr ID2d1DeviceContext): D2d1UnitMode {.w32callback.}
    GetUnitMode*: FnPointer
    # PfnDrawGlyphRun = proc (self: ptr ID2d1DeviceContext; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; glyphRunDescription: ptr DwriteGlyphRunDescription; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): void {.w32callback.}
    DrawGlyphRun*: FnPointer
    # PfnDrawImage = proc (self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; targetOffset: ptr D2d1Vec2f; imageRectangle: ptr D2d1Rectf; interpolationMode: D2d1InterpolationMode; compositeMode: D2d1CompositeMode): void {.w32callback.}
    DrawImage*: FnPointer
    # PfnDrawGdiMetafile = proc (self: ptr ID2d1DeviceContext; gdiMetafile: ptr ID2d1GdiMetafile; targetOffset: ptr D2d1Vec2f): void {.w32callback.}
    DrawGdiMetafile*: FnPointer
    # PfnDrawBitmap = proc (self: ptr ID2d1DeviceContext; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1InterpolationMode; sourceRectangle: ptr D2d1Rectf; perspectiveTransform: ptr D2d1Mat4f): void {.w32callback.}
    DrawBitmap*: FnPointer
    # PfnPushLayer = proc (self: ptr ID2d1DeviceContext; layerParameters: D2d1LayerParameters1; layer: ptr ID2d1Layer): void {.w32callback.}
    PushLayer*: FnPointer
    # PfnInvalidateEffectInputRectangle = proc (self: ptr ID2d1DeviceContext; effect: ptr ID2d1Effect; input: uint32; inputRectangle: D2d1Rectf): WinResult {.w32callback.}
    InvalidateEffectInputRectangle*: FnPointer
    # PfnGetEffectInvalidRectangleCount = proc (self: ptr ID2d1DeviceContext; effect: ptr ID2d1Effect; rectangleCount: var uint32): WinResult {.w32callback.}
    GetEffectInvalidRectangleCount*: FnPointer
    # PfnGetEffectInvalidRectangles = proc (self: ptr ID2d1DeviceContext; effect: ptr ID2d1Effect; rectangles: ptr UncheckedArray[D2d1Rectf]; rectanglesCount: uint32): WinResult {.w32callback.}
    GetEffectInvalidRectangles*: FnPointer
    # PfnGetEffectRequiredInputRectangles = proc (self: ptr ID2d1DeviceContext; renderEffect: ptr ID2d1Effect; renderImageRectangle: ptr D2d1Rectf; inputDescriptions: ptr UncheckedArray[D2d1EffectInputDescription]; requiredInputRects: ptr UncheckedArray[D2d1Rectf]; inputCount: uint32): WinResult {.w32callback.}
    GetEffectRequiredInputRectangles*: FnPointer
    # PfnFillOpacityMask = proc (self: ptr ID2d1DeviceContext; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
    FillOpacityMask*: FnPointer
  ID2d1RenderInfoVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnSetInputDescription = proc (self: ptr ID2d1RenderInfo; inputIndex: uint32; inputDescription: D2d1InputDescription): WinResult {.w32callback.}
    SetInputDescription*: FnPointer
    # PfnSetOutputBuffer = proc (self: ptr ID2d1RenderInfo; bufferPrecision: D2d1BufferPrecision; channelDepth: D2d1ChannelDepth): WinResult {.w32callback.}
    SetOutputBuffer*: FnPointer
    # PfnSetCached = proc (self: ptr ID2d1RenderInfo; isCached: WtBOOL): void {.w32callback.}
    SetCached*: FnPointer
    # PfnSetInstructionCountHint = proc (self: ptr ID2d1RenderInfo; instructionCount: uint32): void {.w32callback.}
    SetInstructionCountHint*: FnPointer
  ID2d1ResourceTextureVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnUpdate = proc (self: ptr ID2d1ResourceTexture; minimumExtents: ptr UncheckedArray[uint32]; maximimumExtents: ptr UncheckedArray[uint32]; strides: ptr uint32; dimensions: uint32; data: ptr UncheckedArray[uint8]; dataCount: uint32): WinResult {.w32callback.}
    Update*: FnPointer
  ID2d1VertexBufferVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnMap = proc (self: ptr ID2d1VertexBuffer; data: var ptr uint8; bufferSize: uint32): WinResult {.w32callback.}
    Map*: FnPointer
    # PfnUnmap = proc (self: ptr ID2d1VertexBuffer): WinResult {.w32callback.}
    Unmap*: FnPointer
  ID2d1DrawInfoVtbl* {.pure.} = object
    base*: ID2d1RenderInfoVtbl
    # PfnSetPixelShaderConstantBuffer = proc (self: ptr ID2d1DrawInfo; buffer: ptr UncheckedArray[uint8]; bufferCount: uint32): WinResult {.w32callback.}
    SetPixelShaderConstantBuffer*: FnPointer
    # PfnSetResourceTexture = proc (self: ptr ID2d1DrawInfo; textureIndex: uint32; resourceTexture: ptr ID2d1ResourceTexture): WinResult {.w32callback.}
    SetResourceTexture*: FnPointer
    # PfnSetVertexShaderConstantBuffer = proc (self: ptr ID2d1DrawInfo; buffer: ptr UncheckedArray[uint8]; bufferCount: uint32): WinResult {.w32callback.}
    SetVertexShaderConstantBuffer*: FnPointer
    # PfnSetPixelShader = proc (self: ptr ID2d1DrawInfo; shaderId: ptr WinGuid; pixelOptions: D2d1PixelOptions): WinResult {.w32callback.}
    SetPixelShader*: FnPointer
    # PfnSetVertexProcessing = proc (self: ptr ID2d1DrawInfo; vertexBuffer: ptr ID2d1VertexBuffer; vertexOptions: D2d1VertexOptions; blendDescription: ptr D2d1BlendDescription; vertexRange: ptr D2d1VertexRange; vertexShader: ptr WinGuid): WinResult {.w32callback.}
    SetVertexProcessing*: FnPointer
  ID2d1TransformNodeVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetInputCount = proc (self: ptr ID2d1TransformNode): uint32 {.w32callback.}
    GetInputCount*: FnPointer
  ID2d1ConcreteTransformVtbl* {.pure.} = object
    base*: ID2d1TransformNodeVtbl
    # PfnSetOutputBuffer = proc (self: ptr ID2d1ConcreteTransform; bufferPrecision: D2d1BufferPrecision; channelDepth: D2d1ChannelDepth): WinResult {.w32callback.}
    SetOutputBuffer*: FnPointer
    # PfnSetCached = proc (self: ptr ID2d1ConcreteTransform; isCached: WtBOOL): void {.w32callback.}
    SetCached*: FnPointer
  ID2d1BlendTransformVtbl* {.pure.} = object
    base*: ID2d1ConcreteTransformVtbl
    # PfnSetDescription = proc (self: ptr ID2d1BlendTransform; description: D2d1BlendDescription): void {.w32callback.}
    SetDescription*: FnPointer
    # PfnGetDescription = proc (self: ptr ID2d1BlendTransform; description: var D2d1BlendDescription): void {.w32callback.}
    GetDescription*: FnPointer
  ID2d1BorderTransformVtbl* {.pure.} = object
    base*: ID2d1ConcreteTransformVtbl
    # PfnSetExtendModeX = proc (self: ptr ID2d1BorderTransform; extendMode: D2d1ExtendMode): void {.w32callback.}
    SetExtendModeX*: FnPointer
    # PfnSetExtendModeY = proc (self: ptr ID2d1BorderTransform; extendMode: D2d1ExtendMode): void {.w32callback.}
    SetExtendModeY*: FnPointer
    # PfnGetExtendModeX = proc (self: ptr ID2d1BorderTransform): D2d1ExtendMode {.w32callback.}
    GetExtendModeX*: FnPointer
    # PfnGetExtendModeY = proc (self: ptr ID2d1BorderTransform): D2d1ExtendMode {.w32callback.}
    GetExtendModeY*: FnPointer
  ID2d1OffsetTransformVtbl* {.pure.} = object
    base*: ID2d1TransformNodeVtbl
    # PfnSetOffset = proc (self: ptr ID2d1OffsetTransform; offset: D2d1Vec2i): void {.w32callback.}
    SetOffset*: FnPointer
    # PfnGetOffset = proc (self: ptr ID2d1OffsetTransform): D2d1Vec2i {.w32callback.}
    GetOffset*: FnPointer
  ID2d1BoundsAdjustmentTransformVtbl* {.pure.} = object
    base*: ID2d1TransformNodeVtbl
    # PfnSetOutputBounds = proc (self: ptr ID2d1BoundsAdjustmentTransform; outputBounds: ptr D2d1Recti): void {.w32callback.}
    SetOutputBounds*: FnPointer
    # PfnGetOutputBounds = proc (self: ptr ID2d1BoundsAdjustmentTransform; outputBounds: var D2d1Recti): void {.w32callback.}
    GetOutputBounds*: FnPointer
  ID2d1EffectContextVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetDpi = proc (self: ptr ID2d1EffectContext; dpiX: var float32; dpiY: var float32): void {.w32callback.}
    GetDpi*: FnPointer
    # PfnCreateEffect = proc (self: ptr ID2d1EffectContext; effectId: ptr WinGuid; effect: var ptr ID2d1Effect): WinResult {.w32callback.}
    CreateEffect*: FnPointer
    # PfnGetMaximumSupportedFeatureLevel = proc (self: ptr ID2d1EffectContext; featureLevels: ptr UncheckedArray[WtD3D_FEATURE_LEVEL]; featureLevelsCount: uint32; maximumSupportedFeatureLevel: var WtD3D_FEATURE_LEVEL): WinResult {.w32callback.}
    GetMaximumSupportedFeatureLevel*: FnPointer
    # PfnCreateTransformNodeFromEffect = proc (self: ptr ID2d1EffectContext; effect: ptr ID2d1Effect; transformNode: var ptr ID2d1TransformNode): WinResult {.w32callback.}
    CreateTransformNodeFromEffect*: FnPointer
    # PfnCreateBlendTransform = proc (self: ptr ID2d1EffectContext; numInputs: uint32; blendDescription: D2d1BlendDescription; transform: var ptr ID2d1BlendTransform): WinResult {.w32callback.}
    CreateBlendTransform*: FnPointer
    # PfnCreateBorderTransform = proc (self: ptr ID2d1EffectContext; extendModeX: D2d1ExtendMode; extendModeY: D2d1ExtendMode; transform: var ptr ID2d1BorderTransform): WinResult {.w32callback.}
    CreateBorderTransform*: FnPointer
    # PfnCreateOffsetTransform = proc (self: ptr ID2d1EffectContext; offset: D2d1Vec2i; transform: var ptr ID2d1OffsetTransform): WinResult {.w32callback.}
    CreateOffsetTransform*: FnPointer
    # PfnCreateBoundsAdjustmentTransform = proc (self: ptr ID2d1EffectContext; outputRectangle: ptr D2d1Recti; transform: var ptr ID2d1BoundsAdjustmentTransform): WinResult {.w32callback.}
    CreateBoundsAdjustmentTransform*: FnPointer
    # PfnLoadPixelShader = proc (self: ptr ID2d1EffectContext; shaderId: ptr WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.w32callback.}
    LoadPixelShader*: FnPointer
    # PfnLoadVertexShader = proc (self: ptr ID2d1EffectContext; resourceId: ptr WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.w32callback.}
    LoadVertexShader*: FnPointer
    # PfnLoadComputeShader = proc (self: ptr ID2d1EffectContext; resourceId: ptr WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.w32callback.}
    LoadComputeShader*: FnPointer
    # PfnIsShaderLoaded = proc (self: ptr ID2d1EffectContext; shaderId: ptr WinGuid): WtBOOL {.w32callback.}
    IsShaderLoaded*: FnPointer
    # PfnCreateResourceTexture = proc (self: ptr ID2d1EffectContext; resourceId: ptr WinGuid; resourceTextureProperties: D2d1ResourceTextureProperties; data: ptr UncheckedArray[uint8]; strides: ptr uint32; dataSize: uint32; resourceTexture: var ptr ID2d1ResourceTexture): WinResult {.w32callback.}
    CreateResourceTexture*: FnPointer
    # PfnFindResourceTexture = proc (self: ptr ID2d1EffectContext; resourceId: ptr WinGuid; resourceTexture: var ptr ID2d1ResourceTexture): WinResult {.w32callback.}
    FindResourceTexture*: FnPointer
    # PfnCreateVertexBuffer = proc (self: ptr ID2d1EffectContext; vertexBufferProperties: D2d1VertexBufferProperties; resourceId: ptr WinGuid; customVertexBufferProperties: ptr D2d1CustomVertexBufferProperties; buffer: var ptr ID2d1VertexBuffer): WinResult {.w32callback.}
    CreateVertexBuffer*: FnPointer
    # PfnFindVertexBuffer = proc (self: ptr ID2d1EffectContext; resourceId: ptr WinGuid; buffer: var ptr ID2d1VertexBuffer): WinResult {.w32callback.}
    FindVertexBuffer*: FnPointer
    # PfnCreateColorContext = proc (self: ptr ID2d1EffectContext; space: D2d1ColorSpace; profile: ptr UncheckedArray[uint8]; profileSize: uint32; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
    CreateColorContext*: FnPointer
    # PfnCreateColorContextFromFilename = proc (self: ptr ID2d1EffectContext; filename: WtPWSTR; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
    CreateColorContextFromFilename*: FnPointer
    # PfnCreateColorContextFromWicColorContext = proc (self: ptr ID2d1EffectContext; wicColorContext: ptr IWicColorContext; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
    CreateColorContextFromWicColorContext*: FnPointer
    # PfnCheckFeatureSupport = proc (self: ptr ID2d1EffectContext; feature: D2d1Feature; featureSupportData: pointer; featureSupportDataSize: uint32): WinResult {.w32callback.}
    CheckFeatureSupport*: FnPointer
    # PfnIsBufferPrecisionSupported = proc (self: ptr ID2d1EffectContext; bufferPrecision: D2d1BufferPrecision): WtBOOL {.w32callback.}
    IsBufferPrecisionSupported*: FnPointer
  ID2d1TransformGraphVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetInputCount = proc (self: ptr ID2d1TransformGraph): uint32 {.w32callback.}
    GetInputCount*: FnPointer
    # PfnSetSingleTransformNode = proc (self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
    SetSingleTransformNode*: FnPointer
    # PfnAddNode = proc (self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
    AddNode*: FnPointer
    # PfnRemoveNode = proc (self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
    RemoveNode*: FnPointer
    # PfnSetOutputNode = proc (self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
    SetOutputNode*: FnPointer
    # PfnConnectNode = proc (self: ptr ID2d1TransformGraph; fromNode: ptr ID2d1TransformNode; toNode: ptr ID2d1TransformNode; toNodeInputIndex: uint32): WinResult {.w32callback.}
    ConnectNode*: FnPointer
    # PfnConnectToEffectInput = proc (self: ptr ID2d1TransformGraph; toEffectInputIndex: uint32; node: ptr ID2d1TransformNode; toNodeInputIndex: uint32): WinResult {.w32callback.}
    ConnectToEffectInput*: FnPointer
    # PfnClear = proc (self: ptr ID2d1TransformGraph): void {.w32callback.}
    Clear*: FnPointer
    # PfnSetPassthroughGraph = proc (self: ptr ID2d1TransformGraph; effectInputIndex: uint32): WinResult {.w32callback.}
    SetPassthroughGraph*: FnPointer
  ID2d1StrokeStyle1Vtbl* {.pure.} = object
    base*: ID2d1StrokeStyleVtbl
    # PfnGetStrokeTransformType = proc (self: ptr ID2d1StrokeStyle1): D2d1StrokeTransformType {.w32callback.}
    GetStrokeTransformType*: FnPointer
  ID2d1PathGeometry1Vtbl* {.pure.} = object
    base*: ID2d1PathGeometryVtbl
    # PfnComputePointAndSegmentAtLength = proc (self: ptr ID2d1PathGeometry1; length: float32; startSegment: uint32; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; pointDescription: var D2d1PointDescription): WinResult {.w32callback.}
    ComputePointAndSegmentAtLength*: FnPointer
  ID2d1DrawingStateBlock1Vtbl* {.pure.} = object
    base*: ID2d1DrawingStateBlockVtbl
    # PfnGetDescription = proc (self: ptr ID2d1DrawingStateBlock1; stateDescription: var D2d1DrawingStateDescription1): void {.w32callback.}
    GetDescription*: FnPointer
    # PfnSetDescription = proc (self: ptr ID2d1DrawingStateBlock1; stateDescription: D2d1DrawingStateDescription1): void {.w32callback.}
    SetDescription*: FnPointer
  ID2d1Factory1Vtbl* {.pure.} = object
    base*: ID2d1FactoryVtbl
    # PfnCreateDevice = proc (self: ptr ID2d1Factory1; dxgiDevice: ptr WtIDXGIDevice; d2dDevice: var ptr ID2d1Device): WinResult {.w32callback.}
    CreateDevice*: FnPointer
    # PfnCreateStrokeStyle = proc (self: ptr ID2d1Factory1; strokeStyleProperties: D2d1StrokeStyleProperties1; dashes: ptr UncheckedArray[float32]; dashesCount: uint32; strokeStyle: var ptr ID2d1StrokeStyle1): WinResult {.w32callback.}
    CreateStrokeStyle*: FnPointer
    # PfnCreatePathGeometry = proc (self: ptr ID2d1Factory1; pathGeometry: var ptr ID2d1PathGeometry1): WinResult {.w32callback.}
    CreatePathGeometry*: FnPointer
    # PfnCreateDrawingStateBlock = proc (self: ptr ID2d1Factory1; drawingStateDescription: ptr D2d1DrawingStateDescription1; textRenderingParams: ptr IDWriteRenderingParams; drawingStateBlock: var ptr ID2d1DrawingStateBlock1): WinResult {.w32callback.}
    CreateDrawingStateBlock*: FnPointer
    # PfnCreateGdiMetafile = proc (self: ptr ID2d1Factory1; metafileStream: ptr IStream; metafile: var ptr ID2d1GdiMetafile): WinResult {.w32callback.}
    CreateGdiMetafile*: FnPointer
    # PfnRegisterEffectFromStream = proc (self: ptr ID2d1Factory1; classId: ptr WinGuid; propertyXml: ptr IStream; bindings: ptr UncheckedArray[D2d1PropertyBinding]; bindingsCount: uint32; effectFactory: WtPD2D1_EFFECT_FACTORY): WinResult {.w32callback.}
    RegisterEffectFromStream*: FnPointer
    # PfnRegisterEffectFromString = proc (self: ptr ID2d1Factory1; classId: ptr WinGuid; propertyXml: WtPWSTR; bindings: ptr UncheckedArray[D2d1PropertyBinding]; bindingsCount: uint32; effectFactory: WtPD2D1_EFFECT_FACTORY): WinResult {.w32callback.}
    RegisterEffectFromString*: FnPointer
    # PfnUnregisterEffect = proc (self: ptr ID2d1Factory1; classId: ptr WinGuid): WinResult {.w32callback.}
    UnregisterEffect*: FnPointer
    # PfnGetRegisteredEffects = proc (self: ptr ID2d1Factory1; effects: ptr UncheckedArray[WinGuid]; effectsCount: uint32; effectsReturned: ptr uint32; effectsRegistered: ptr uint32): WinResult {.w32callback.}
    GetRegisteredEffects*: FnPointer
    # PfnGetEffectProperties = proc (self: ptr ID2d1Factory1; effectId: ptr WinGuid; properties: var ptr ID2d1Properties): WinResult {.w32callback.}
    GetEffectProperties*: FnPointer
  ID2d1GeometryRealizationVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
  ID2d1DeviceContext1Vtbl* {.pure.} = object
    base*: ID2d1DeviceContextVtbl
    # PfnCreateFilledGeometryRealization = proc (self: ptr ID2d1DeviceContext1; geometry: ptr ID2d1Geometry; flatteningTolerance: float32; geometryRealization: var ptr ID2d1GeometryRealization): WinResult {.w32callback.}
    CreateFilledGeometryRealization*: FnPointer
    # PfnCreateStrokedGeometryRealization = proc (self: ptr ID2d1DeviceContext1; geometry: ptr ID2d1Geometry; flatteningTolerance: float32; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; geometryRealization: var ptr ID2d1GeometryRealization): WinResult {.w32callback.}
    CreateStrokedGeometryRealization*: FnPointer
    # PfnDrawGeometryRealization = proc (self: ptr ID2d1DeviceContext1; geometryRealization: ptr ID2d1GeometryRealization; brush: ptr ID2d1Brush): void {.w32callback.}
    DrawGeometryRealization*: FnPointer
  ID2d1InkStyleVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnSetNibTransform = proc (self: ptr ID2d1InkStyle; transform: D2d1Affine2f): void {.w32callback.}
    SetNibTransform*: FnPointer
    # PfnGetNibTransform = proc (self: ptr ID2d1InkStyle; transform: var D2d1Affine2f): void {.w32callback.}
    GetNibTransform*: FnPointer
    # PfnSetNibShape = proc (self: ptr ID2d1InkStyle; nibShape: D2d1InkNibShape): void {.w32callback.}
    SetNibShape*: FnPointer
    # PfnGetNibShape = proc (self: ptr ID2d1InkStyle): D2d1InkNibShape {.w32callback.}
    GetNibShape*: FnPointer
  ID2d1InkVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnSetStartPoint = proc (self: ptr ID2d1Ink; startPoint: D2d1InkPoint): void {.w32callback.}
    SetStartPoint*: FnPointer
    # PfnGetStartPoint = proc (self: ptr ID2d1Ink): D2d1InkPoint {.w32callback.}
    GetStartPoint*: FnPointer
    # PfnAddSegments = proc (self: ptr ID2d1Ink; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.w32callback.}
    AddSegments*: FnPointer
    # PfnRemoveSegmentsAtEnd = proc (self: ptr ID2d1Ink; segmentsCount: uint32): WinResult {.w32callback.}
    RemoveSegmentsAtEnd*: FnPointer
    # PfnSetSegments = proc (self: ptr ID2d1Ink; startSegment: uint32; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.w32callback.}
    SetSegments*: FnPointer
    # PfnSetSegmentAtEnd = proc (self: ptr ID2d1Ink; segment: D2d1InkBezierSegment): WinResult {.w32callback.}
    SetSegmentAtEnd*: FnPointer
    # PfnGetSegmentCount = proc (self: ptr ID2d1Ink): uint32 {.w32callback.}
    GetSegmentCount*: FnPointer
    # PfnGetSegments = proc (self: ptr ID2d1Ink; startSegment: uint32; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.w32callback.}
    GetSegments*: FnPointer
    # PfnStreamAsGeometry = proc (self: ptr ID2d1Ink; inkStyle: ptr ID2d1InkStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
    StreamAsGeometry*: FnPointer
    # PfnGetBounds = proc (self: ptr ID2d1Ink; inkStyle: ptr ID2d1InkStyle; worldTransform: ptr D2d1Affine2f; bounds: var D2d1Rectf): WinResult {.w32callback.}
    GetBounds*: FnPointer
  ID2d1GradientMeshVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnGetPatchCount = proc (self: ptr ID2d1GradientMesh): uint32 {.w32callback.}
    GetPatchCount*: FnPointer
    # PfnGetPatches = proc (self: ptr ID2d1GradientMesh; startIndex: uint32; patches: ptr UncheckedArray[D2d1GradientMeshPatch]; patchesCount: uint32): WinResult {.w32callback.}
    GetPatches*: FnPointer
  ID2d1ImageSourceVtbl* {.pure.} = object
    base*: ID2d1ImageVtbl
    # PfnOfferResources = proc (self: ptr ID2d1ImageSource): WinResult {.w32callback.}
    OfferResources*: FnPointer
    # PfnTryReclaimResources = proc (self: ptr ID2d1ImageSource; resourcesDiscarded: var WtBOOL): WinResult {.w32callback.}
    TryReclaimResources*: FnPointer
  ID2d1ImageSourceFromWicVtbl* {.pure.} = object
    base*: ID2d1ImageSourceVtbl
    # PfnEnsureCached = proc (self: ptr ID2d1ImageSourceFromWic; rectangleToFill: ptr D2d1Rectu): WinResult {.w32callback.}
    EnsureCached*: FnPointer
    # PfnTrimCache = proc (self: ptr ID2d1ImageSourceFromWic; rectangleToPreserve: ptr D2d1Rectu): WinResult {.w32callback.}
    TrimCache*: FnPointer
    # PfnGetSource = proc (self: ptr ID2d1ImageSourceFromWic; wicBitmapSource: ptr ptr IWicBitmapSource): void {.w32callback.}
    GetSource*: FnPointer
  ID2d1LookupTable3DVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
  ID2d1TransformedImageSourceVtbl* {.pure.} = object
    base*: ID2d1ImageVtbl
    # PfnGetSource = proc (self: ptr ID2d1TransformedImageSource; imageSource: ptr ptr ID2d1ImageSource): void {.w32callback.}
    GetSource*: FnPointer
    # PfnGetProperties = proc (self: ptr ID2d1TransformedImageSource; properties: var D2d1TransformedImageSourceProperties): void {.w32callback.}
    GetProperties*: FnPointer
  ID2d1DeviceContext2Vtbl* {.pure.} = object
    base*: ID2d1DeviceContext1Vtbl
    # PfnCreateInk = proc (self: ptr ID2d1DeviceContext2; startPoint: D2d1InkPoint; ink: var ptr ID2d1Ink): WinResult {.w32callback.}
    CreateInk*: FnPointer
    # PfnCreateInkStyle = proc (self: ptr ID2d1DeviceContext2; inkStyleProperties: ptr D2d1InkStyleProperties; inkStyle: var ptr ID2d1InkStyle): WinResult {.w32callback.}
    CreateInkStyle*: FnPointer
    # PfnCreateGradientMesh = proc (self: ptr ID2d1DeviceContext2; patches: ptr UncheckedArray[D2d1GradientMeshPatch]; patchesCount: uint32; gradientMesh: var ptr ID2d1GradientMesh): WinResult {.w32callback.}
    CreateGradientMesh*: FnPointer
    # PfnCreateImageSourceFromWic = proc (self: ptr ID2d1DeviceContext2; wicBitmapSource: ptr IWicBitmapSource; loadingOptions: D2d1ImageSourceLoadingOptions; alphaMode: D2d1AlphaMode; imageSource: var ptr ID2d1ImageSourceFromWic): WinResult {.w32callback.}
    CreateImageSourceFromWic*: FnPointer
    # PfnCreateLookupTable3D = proc (self: ptr ID2d1DeviceContext2; precision: D2d1BufferPrecision; extents: ptr UncheckedArray[uint32]; data: ptr UncheckedArray[uint8]; dataCount: uint32; strides: ptr UncheckedArray[uint32]; lookupTable: var ptr ID2d1LookupTable3D): WinResult {.w32callback.}
    CreateLookupTable3D*: FnPointer
    # PfnCreateImageSourceFromDxgi = proc (self: ptr ID2d1DeviceContext2; surfaces: ptr UncheckedArray[ptr WtIDXGISurface]; surfaceCount: uint32; colorSpace: WtDXGI_COLOR_SPACE_TYPE; options: D2d1ImageSourceFromDxgiOptions; imageSource: var ptr ID2d1ImageSource): WinResult {.w32callback.}
    CreateImageSourceFromDxgi*: FnPointer
    # PfnGetGradientMeshWorldBounds = proc (self: ptr ID2d1DeviceContext2; gradientMesh: ptr ID2d1GradientMesh; pBounds: var D2d1Rectf): WinResult {.w32callback.}
    GetGradientMeshWorldBounds*: FnPointer
    # PfnDrawInk = proc (self: ptr ID2d1DeviceContext2; ink: ptr ID2d1Ink; brush: ptr ID2d1Brush; inkStyle: ptr ID2d1InkStyle): void {.w32callback.}
    DrawInk*: FnPointer
    # PfnDrawGradientMesh = proc (self: ptr ID2d1DeviceContext2; gradientMesh: ptr ID2d1GradientMesh): void {.w32callback.}
    DrawGradientMesh*: FnPointer
    # PfnDrawGdiMetafile = proc (self: ptr ID2d1DeviceContext2; gdiMetafile: ptr ID2d1GdiMetafile; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
    DrawGdiMetafile*: FnPointer
    # PfnCreateTransformedImageSource = proc (self: ptr ID2d1DeviceContext2; imageSource: ptr ID2d1ImageSource; properties: D2d1TransformedImageSourceProperties; transformedImageSource: var ptr ID2d1TransformedImageSource): WinResult {.w32callback.}
    CreateTransformedImageSource*: FnPointer
  ID2d1SpriteBatchVtbl* {.pure.} = object
    base*: ID2d1ResourceVtbl
    # PfnAddSprites = proc (self: ptr ID2d1SpriteBatch; spriteCount: uint32; destinationRectangles: ptr UncheckedArray[D2d1Rectf]; sourceRectangles: ptr UncheckedArray[D2d1Rectu]; colors: ptr UncheckedArray[D2d1Rgbaf]; transforms: ptr UncheckedArray[D2d1Affine2f]; destinationRectanglesStride: uint32; sourceRectanglesStride: uint32; colorsStride: uint32; transformsStride: uint32): WinResult {.w32callback.}
    AddSprites*: FnPointer
    # PfnSetSprites = proc (self: ptr ID2d1SpriteBatch; startIndex: uint32; spriteCount: uint32; destinationRectangles: ptr D2d1Rectf; sourceRectangles: ptr D2d1Rectu; colors: ptr D2d1Rgbaf; transforms: ptr D2d1Affine2f; destinationRectanglesStride: uint32; sourceRectanglesStride: uint32; colorsStride: uint32; transformsStride: uint32): WinResult {.w32callback.}
    SetSprites*: FnPointer
    # PfnGetSprites = proc (self: ptr ID2d1SpriteBatch; startIndex: uint32; spriteCount: uint32; destinationRectangles: ptr UncheckedArray[D2d1Rectf]; sourceRectangles: ptr UncheckedArray[D2d1Rectu]; colors: ptr UncheckedArray[D2d1Rgbaf]; transforms: ptr UncheckedArray[D2d1Affine2f]): WinResult {.w32callback.}
    GetSprites*: FnPointer
    # PfnGetSpriteCount = proc (self: ptr ID2d1SpriteBatch): uint32 {.w32callback.}
    GetSpriteCount*: FnPointer
    # PfnClear = proc (self: ptr ID2d1SpriteBatch): void {.w32callback.}
    Clear*: FnPointer
  ID2d1DeviceContext3Vtbl* {.pure.} = object
    base*: ID2d1DeviceContext2Vtbl
    # PfnCreateSpriteBatch = proc (self: ptr ID2d1DeviceContext3; spriteBatch: var ptr ID2d1SpriteBatch): WinResult {.w32callback.}
    CreateSpriteBatch*: FnPointer
    # PfnDrawSpriteBatch = proc (self: ptr ID2d1DeviceContext3; spriteBatch: ptr ID2d1SpriteBatch; startIndex: uint32; spriteCount: uint32; bitmap: ptr ID2d1Bitmap; interpolationMode: D2d1BitmapInterpolationMode; spriteOptions: D2d1SpriteOptions): void {.w32callback.}
    DrawSpriteBatch*: FnPointer

proc wpD2D1CreateFactory(factoryType: D2d1FactoryType; riid: ptr WinGuid; pFactoryOptions: ptr D2d1FactoryOptions; ppIFactory: var pointer): WinResult {.importc: "D2D1CreateFactory", dllproc_d2d1.}
proc getFactory*(self: ptr ID2d1Resource; factory: var ptr ID2d1Factory): void {.inline, raises: [].} =
  type PfnGetFactory = proc (self: pointer; factory: var ptr ID2d1Factory): void {.w32callback.}
  cast[PfnGetFactory](cast[ptr ID2d1ResourceVtbl](self.vtbl).GetFactory)(self, factory)
proc getStartCap*(self: ptr ID2d1StrokeStyle): D2d1CapStyle {.inline, raises: [].} =
  type PfnGetStartCap = proc (self: pointer): D2d1CapStyle {.w32callback.}
  cast[PfnGetStartCap](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetStartCap)(self)
proc getEndCap*(self: ptr ID2d1StrokeStyle): D2d1CapStyle {.inline, raises: [].} =
  type PfnGetEndCap = proc (self: pointer): D2d1CapStyle {.w32callback.}
  cast[PfnGetEndCap](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetEndCap)(self)
proc getDashCap*(self: ptr ID2d1StrokeStyle): D2d1CapStyle {.inline, raises: [].} =
  type PfnGetDashCap = proc (self: pointer): D2d1CapStyle {.w32callback.}
  cast[PfnGetDashCap](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetDashCap)(self)
proc getMiterLimit*(self: ptr ID2d1StrokeStyle): float32 {.inline, raises: [].} =
  type PfnGetMiterLimit = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetMiterLimit](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetMiterLimit)(self)
proc getLineJoin*(self: ptr ID2d1StrokeStyle): D2d1LineJoin {.inline, raises: [].} =
  type PfnGetLineJoin = proc (self: pointer): D2d1LineJoin {.w32callback.}
  cast[PfnGetLineJoin](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetLineJoin)(self)
proc getDashOffset*(self: ptr ID2d1StrokeStyle): float32 {.inline, raises: [].} =
  type PfnGetDashOffset = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetDashOffset](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetDashOffset)(self)
proc getDashStyle*(self: ptr ID2d1StrokeStyle): D2d1DashStyle {.inline, raises: [].} =
  type PfnGetDashStyle = proc (self: pointer): D2d1DashStyle {.w32callback.}
  cast[PfnGetDashStyle](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetDashStyle)(self)
proc getDashesCount*(self: ptr ID2d1StrokeStyle): uint32 {.inline, raises: [].} =
  type PfnGetDashesCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetDashesCount](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetDashesCount)(self)
proc getDashes*(self: ptr ID2d1StrokeStyle; dashes: ptr UncheckedArray[float32]; dashesCount: uint32): void {.inline, raises: [].} =
  type PfnGetDashes = proc (self: pointer; dashes: ptr UncheckedArray[float32]; dashesCount: uint32): void {.w32callback.}
  cast[PfnGetDashes](cast[ptr ID2d1StrokeStyleVtbl](self.vtbl).GetDashes)(self, dashes, dashesCount)
proc setFillMode*(self: ptr ID2d1SimplifiedGeometrySink; fillMode: D2d1FillMode): void {.inline, raises: [].} =
  type PfnSetFillMode = proc (self: pointer; fillMode: D2d1FillMode): void {.w32callback.}
  cast[PfnSetFillMode](cast[ptr ID2d1SimplifiedGeometrySinkVtbl](self.vtbl).SetFillMode)(self, fillMode)
proc setSegmentFlags*(self: ptr ID2d1SimplifiedGeometrySink; vertexFlags: D2d1PathSegment): void {.inline, raises: [].} =
  type PfnSetSegmentFlags = proc (self: pointer; vertexFlags: D2d1PathSegment): void {.w32callback.}
  cast[PfnSetSegmentFlags](cast[ptr ID2d1SimplifiedGeometrySinkVtbl](self.vtbl).SetSegmentFlags)(self, vertexFlags)
proc beginFigure*(self: ptr ID2d1SimplifiedGeometrySink; startPoint: D2d1Vec2f; figureBegin: D2d1FigureBegin): void {.inline, raises: [].} =
  type PfnBeginFigure = proc (self: pointer; startPoint: D2d1Vec2f; figureBegin: D2d1FigureBegin): void {.w32callback.}
  cast[PfnBeginFigure](cast[ptr ID2d1SimplifiedGeometrySinkVtbl](self.vtbl).BeginFigure)(self, startPoint, figureBegin)
proc addLines*(self: ptr ID2d1SimplifiedGeometrySink; points: ptr UncheckedArray[D2d1Vec2f]; pointsCount: uint32): void {.inline, raises: [].} =
  type PfnAddLines = proc (self: pointer; points: ptr UncheckedArray[D2d1Vec2f]; pointsCount: uint32): void {.w32callback.}
  cast[PfnAddLines](cast[ptr ID2d1SimplifiedGeometrySinkVtbl](self.vtbl).AddLines)(self, points, pointsCount)
proc addBeziers*(self: ptr ID2d1SimplifiedGeometrySink; beziers: ptr UncheckedArray[D2d1BezierSegment]; beziersCount: uint32): void {.inline, raises: [].} =
  type PfnAddBeziers = proc (self: pointer; beziers: ptr UncheckedArray[D2d1BezierSegment]; beziersCount: uint32): void {.w32callback.}
  cast[PfnAddBeziers](cast[ptr ID2d1SimplifiedGeometrySinkVtbl](self.vtbl).AddBeziers)(self, beziers, beziersCount)
proc endFigure*(self: ptr ID2d1SimplifiedGeometrySink; figureEnd: D2d1FigureEnd): void {.inline, raises: [].} =
  type PfnEndFigure = proc (self: pointer; figureEnd: D2d1FigureEnd): void {.w32callback.}
  cast[PfnEndFigure](cast[ptr ID2d1SimplifiedGeometrySinkVtbl](self.vtbl).EndFigure)(self, figureEnd)
proc close*(self: ptr ID2d1SimplifiedGeometrySink): WinResult {.inline, raises: [].} =
  type PfnClose = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnClose](cast[ptr ID2d1SimplifiedGeometrySinkVtbl](self.vtbl).Close)(self)
proc addTriangles*(self: ptr ID2d1TessellationSink; triangles: ptr UncheckedArray[D2d1Triangle]; trianglesCount: uint32): void {.inline, raises: [].} =
  type PfnAddTriangles = proc (self: pointer; triangles: ptr UncheckedArray[D2d1Triangle]; trianglesCount: uint32): void {.w32callback.}
  cast[PfnAddTriangles](cast[ptr ID2d1TessellationSinkVtbl](self.vtbl).AddTriangles)(self, triangles, trianglesCount)
proc close*(self: ptr ID2d1TessellationSink): WinResult {.inline, raises: [].} =
  type PfnClose = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnClose](cast[ptr ID2d1TessellationSinkVtbl](self.vtbl).Close)(self)
proc getBounds*(self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; bounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetBounds = proc (self: pointer; worldTransform: ptr D2d1Affine2f; bounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetBounds](cast[ptr ID2d1GeometryVtbl](self.vtbl).GetBounds)(self, worldTransform, bounds)
proc getWidenedBounds*(self: ptr ID2d1Geometry; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; bounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetWidenedBounds = proc (self: pointer; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; bounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetWidenedBounds](cast[ptr ID2d1GeometryVtbl](self.vtbl).GetWidenedBounds)(self, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, bounds)
proc strokeContainsPoint*(self: ptr ID2d1Geometry; point: D2d1Vec2f; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; contains: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnStrokeContainsPoint = proc (self: pointer; point: D2d1Vec2f; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; contains: var WtBOOL): WinResult {.w32callback.}
  cast[PfnStrokeContainsPoint](cast[ptr ID2d1GeometryVtbl](self.vtbl).StrokeContainsPoint)(self, point, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, contains)
proc fillContainsPoint*(self: ptr ID2d1Geometry; point: D2d1Vec2f; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; contains: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnFillContainsPoint = proc (self: pointer; point: D2d1Vec2f; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; contains: var WtBOOL): WinResult {.w32callback.}
  cast[PfnFillContainsPoint](cast[ptr ID2d1GeometryVtbl](self.vtbl).FillContainsPoint)(self, point, worldTransform, flatteningTolerance, contains)
proc compareWithGeometry*(self: ptr ID2d1Geometry; inputGeometry: ptr ID2d1Geometry; inputGeometryTransform: ptr D2d1Affine2f; flatteningTolerance: float32; relation: var D2d1GeometryRelation): WinResult {.inline, raises: [].} =
  type PfnCompareWithGeometry = proc (self: pointer; inputGeometry: ptr ID2d1Geometry; inputGeometryTransform: ptr D2d1Affine2f; flatteningTolerance: float32; relation: var D2d1GeometryRelation): WinResult {.w32callback.}
  cast[PfnCompareWithGeometry](cast[ptr ID2d1GeometryVtbl](self.vtbl).CompareWithGeometry)(self, inputGeometry, inputGeometryTransform, flatteningTolerance, relation)
proc simplify*(self: ptr ID2d1Geometry; simplificationOption: D2d1GeometrySimplificationOption; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.inline, raises: [].} =
  type PfnSimplify = proc (self: pointer; simplificationOption: D2d1GeometrySimplificationOption; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
  cast[PfnSimplify](cast[ptr ID2d1GeometryVtbl](self.vtbl).Simplify)(self, simplificationOption, worldTransform, flatteningTolerance, geometrySink)
proc tessellate*(self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; tessellationSink: ptr ID2d1TessellationSink): WinResult {.inline, raises: [].} =
  type PfnTessellate = proc (self: pointer; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; tessellationSink: ptr ID2d1TessellationSink): WinResult {.w32callback.}
  cast[PfnTessellate](cast[ptr ID2d1GeometryVtbl](self.vtbl).Tessellate)(self, worldTransform, flatteningTolerance, tessellationSink)
proc combineWithGeometry*(self: ptr ID2d1Geometry; inputGeometry: ptr ID2d1Geometry; combineMode: D2d1CombineMode; inputGeometryTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.inline, raises: [].} =
  type PfnCombineWithGeometry = proc (self: pointer; inputGeometry: ptr ID2d1Geometry; combineMode: D2d1CombineMode; inputGeometryTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
  cast[PfnCombineWithGeometry](cast[ptr ID2d1GeometryVtbl](self.vtbl).CombineWithGeometry)(self, inputGeometry, combineMode, inputGeometryTransform, flatteningTolerance, geometrySink)
proc outline*(self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.inline, raises: [].} =
  type PfnOutline = proc (self: pointer; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
  cast[PfnOutline](cast[ptr ID2d1GeometryVtbl](self.vtbl).Outline)(self, worldTransform, flatteningTolerance, geometrySink)
proc computeArea*(self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; area: var float32): WinResult {.inline, raises: [].} =
  type PfnComputeArea = proc (self: pointer; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; area: var float32): WinResult {.w32callback.}
  cast[PfnComputeArea](cast[ptr ID2d1GeometryVtbl](self.vtbl).ComputeArea)(self, worldTransform, flatteningTolerance, area)
proc computeLength*(self: ptr ID2d1Geometry; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; length: var float32): WinResult {.inline, raises: [].} =
  type PfnComputeLength = proc (self: pointer; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; length: var float32): WinResult {.w32callback.}
  cast[PfnComputeLength](cast[ptr ID2d1GeometryVtbl](self.vtbl).ComputeLength)(self, worldTransform, flatteningTolerance, length)
proc computePointAtLength*(self: ptr ID2d1Geometry; length: float32; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; point: ptr D2d1Vec2f; unitTangentVector: ptr D2d1Vec2f): WinResult {.inline, raises: [].} =
  type PfnComputePointAtLength = proc (self: pointer; length: float32; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; point: ptr D2d1Vec2f; unitTangentVector: ptr D2d1Vec2f): WinResult {.w32callback.}
  cast[PfnComputePointAtLength](cast[ptr ID2d1GeometryVtbl](self.vtbl).ComputePointAtLength)(self, length, worldTransform, flatteningTolerance, point, unitTangentVector)
proc widen*(self: ptr ID2d1Geometry; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.inline, raises: [].} =
  type PfnWiden = proc (self: pointer; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
  cast[PfnWiden](cast[ptr ID2d1GeometryVtbl](self.vtbl).Widen)(self, strokeWidth, strokeStyle, worldTransform, flatteningTolerance, geometrySink)
proc getRect*(self: ptr ID2d1RectangleGeometry; rect: var D2d1Rectf): void {.inline, raises: [].} =
  type PfnGetRect = proc (self: pointer; rect: var D2d1Rectf): void {.w32callback.}
  cast[PfnGetRect](cast[ptr ID2d1RectangleGeometryVtbl](self.vtbl).GetRect)(self, rect)
proc getRoundedRect*(self: ptr ID2d1RoundedRectangleGeometry; roundedRect: var D2d1RoundedRectf): void {.inline, raises: [].} =
  type PfnGetRoundedRect = proc (self: pointer; roundedRect: var D2d1RoundedRectf): void {.w32callback.}
  cast[PfnGetRoundedRect](cast[ptr ID2d1RoundedRectangleGeometryVtbl](self.vtbl).GetRoundedRect)(self, roundedRect)
proc getEllipse*(self: ptr ID2d1EllipseGeometry; ellipse: var D2d1Ellipse): void {.inline, raises: [].} =
  type PfnGetEllipse = proc (self: pointer; ellipse: var D2d1Ellipse): void {.w32callback.}
  cast[PfnGetEllipse](cast[ptr ID2d1EllipseGeometryVtbl](self.vtbl).GetEllipse)(self, ellipse)
proc getFillMode*(self: ptr ID2d1GeometryGroup): D2d1FillMode {.inline, raises: [].} =
  type PfnGetFillMode = proc (self: pointer): D2d1FillMode {.w32callback.}
  cast[PfnGetFillMode](cast[ptr ID2d1GeometryGroupVtbl](self.vtbl).GetFillMode)(self)
proc getSourceGeometryCount*(self: ptr ID2d1GeometryGroup): uint32 {.inline, raises: [].} =
  type PfnGetSourceGeometryCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetSourceGeometryCount](cast[ptr ID2d1GeometryGroupVtbl](self.vtbl).GetSourceGeometryCount)(self)
proc getSourceGeometries*(self: ptr ID2d1GeometryGroup; geometries: ptr UncheckedArray[ptr ID2d1Geometry]; geometriesCount: uint32): void {.inline, raises: [].} =
  type PfnGetSourceGeometries = proc (self: pointer; geometries: ptr UncheckedArray[ptr ID2d1Geometry]; geometriesCount: uint32): void {.w32callback.}
  cast[PfnGetSourceGeometries](cast[ptr ID2d1GeometryGroupVtbl](self.vtbl).GetSourceGeometries)(self, geometries, geometriesCount)
proc getSourceGeometry*(self: ptr ID2d1TransformedGeometry; sourceGeometry: var ptr ID2d1Geometry): void {.inline, raises: [].} =
  type PfnGetSourceGeometry = proc (self: pointer; sourceGeometry: var ptr ID2d1Geometry): void {.w32callback.}
  cast[PfnGetSourceGeometry](cast[ptr ID2d1TransformedGeometryVtbl](self.vtbl).GetSourceGeometry)(self, sourceGeometry)
proc getTransform*(self: ptr ID2d1TransformedGeometry; transform: var D2d1Affine2f): void {.inline, raises: [].} =
  type PfnGetTransform = proc (self: pointer; transform: var D2d1Affine2f): void {.w32callback.}
  cast[PfnGetTransform](cast[ptr ID2d1TransformedGeometryVtbl](self.vtbl).GetTransform)(self, transform)
proc addLine*(self: ptr ID2d1GeometrySink; point: D2d1Vec2f): void {.inline, raises: [].} =
  type PfnAddLine = proc (self: pointer; point: D2d1Vec2f): void {.w32callback.}
  cast[PfnAddLine](cast[ptr ID2d1GeometrySinkVtbl](self.vtbl).AddLine)(self, point)
proc addBezier*(self: ptr ID2d1GeometrySink; bezier: D2d1BezierSegment): void {.inline, raises: [].} =
  type PfnAddBezier = proc (self: pointer; bezier: D2d1BezierSegment): void {.w32callback.}
  cast[PfnAddBezier](cast[ptr ID2d1GeometrySinkVtbl](self.vtbl).AddBezier)(self, bezier)
proc addQuadraticBezier*(self: ptr ID2d1GeometrySink; bezier: D2d1QuadraticBezierSegment): void {.inline, raises: [].} =
  type PfnAddQuadraticBezier = proc (self: pointer; bezier: D2d1QuadraticBezierSegment): void {.w32callback.}
  cast[PfnAddQuadraticBezier](cast[ptr ID2d1GeometrySinkVtbl](self.vtbl).AddQuadraticBezier)(self, bezier)
proc addQuadraticBeziers*(self: ptr ID2d1GeometrySink; beziers: ptr UncheckedArray[D2d1QuadraticBezierSegment]; beziersCount: uint32): void {.inline, raises: [].} =
  type PfnAddQuadraticBeziers = proc (self: pointer; beziers: ptr UncheckedArray[D2d1QuadraticBezierSegment]; beziersCount: uint32): void {.w32callback.}
  cast[PfnAddQuadraticBeziers](cast[ptr ID2d1GeometrySinkVtbl](self.vtbl).AddQuadraticBeziers)(self, beziers, beziersCount)
proc addArc*(self: ptr ID2d1GeometrySink; arc: D2d1ArcSegment): void {.inline, raises: [].} =
  type PfnAddArc = proc (self: pointer; arc: D2d1ArcSegment): void {.w32callback.}
  cast[PfnAddArc](cast[ptr ID2d1GeometrySinkVtbl](self.vtbl).AddArc)(self, arc)
proc open*(self: ptr ID2d1PathGeometry; geometrySink: var ptr ID2d1GeometrySink): WinResult {.inline, raises: [].} =
  type PfnOpen = proc (self: pointer; geometrySink: var ptr ID2d1GeometrySink): WinResult {.w32callback.}
  cast[PfnOpen](cast[ptr ID2d1PathGeometryVtbl](self.vtbl).Open)(self, geometrySink)
proc stream*(self: ptr ID2d1PathGeometry; geometrySink: ptr ID2d1GeometrySink): WinResult {.inline, raises: [].} =
  type PfnStream = proc (self: pointer; geometrySink: ptr ID2d1GeometrySink): WinResult {.w32callback.}
  cast[PfnStream](cast[ptr ID2d1PathGeometryVtbl](self.vtbl).Stream)(self, geometrySink)
proc getSegmentCount*(self: ptr ID2d1PathGeometry; count: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetSegmentCount = proc (self: pointer; count: var uint32): WinResult {.w32callback.}
  cast[PfnGetSegmentCount](cast[ptr ID2d1PathGeometryVtbl](self.vtbl).GetSegmentCount)(self, count)
proc getFigureCount*(self: ptr ID2d1PathGeometry; count: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetFigureCount = proc (self: pointer; count: var uint32): WinResult {.w32callback.}
  cast[PfnGetFigureCount](cast[ptr ID2d1PathGeometryVtbl](self.vtbl).GetFigureCount)(self, count)
proc getDescription*(self: ptr ID2d1DrawingStateBlock; stateDescription: var D2d1DrawingStateDescription): void {.inline, raises: [].} =
  type PfnGetDescription = proc (self: pointer; stateDescription: var D2d1DrawingStateDescription): void {.w32callback.}
  cast[PfnGetDescription](cast[ptr ID2d1DrawingStateBlockVtbl](self.vtbl).GetDescription)(self, stateDescription)
proc setDescription*(self: ptr ID2d1DrawingStateBlock; stateDescription: D2d1DrawingStateDescription): void {.inline, raises: [].} =
  type PfnSetDescription = proc (self: pointer; stateDescription: D2d1DrawingStateDescription): void {.w32callback.}
  cast[PfnSetDescription](cast[ptr ID2d1DrawingStateBlockVtbl](self.vtbl).SetDescription)(self, stateDescription)
proc setTextRenderingParams*(self: ptr ID2d1DrawingStateBlock; textRenderingParams: ptr IDWriteRenderingParams): void {.inline, raises: [].} =
  type PfnSetTextRenderingParams = proc (self: pointer; textRenderingParams: ptr IDWriteRenderingParams): void {.w32callback.}
  cast[PfnSetTextRenderingParams](cast[ptr ID2d1DrawingStateBlockVtbl](self.vtbl).SetTextRenderingParams)(self, textRenderingParams)
proc getTextRenderingParams*(self: ptr ID2d1DrawingStateBlock; textRenderingParams: ptr ptr IDWriteRenderingParams): void {.inline, raises: [].} =
  type PfnGetTextRenderingParams = proc (self: pointer; textRenderingParams: ptr ptr IDWriteRenderingParams): void {.w32callback.}
  cast[PfnGetTextRenderingParams](cast[ptr ID2d1DrawingStateBlockVtbl](self.vtbl).GetTextRenderingParams)(self, textRenderingParams)
proc createBitmap*(self: ptr ID2d1RenderTarget; size: D2d1Size2u; srcData: pointer; pitch: uint32; bitmapProperties: D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmap = proc (self: pointer; size: D2d1Size2u; srcData: pointer; pitch: uint32; bitmapProperties: D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmap](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateBitmap)(self, size, srcData, pitch, bitmapProperties, bitmap)
proc createBitmapFromWicBitmap*(self: ptr ID2d1RenderTarget; wicBitmapSource: ptr IWicBitmapSource; bitmapProperties: ptr D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFromWicBitmap = proc (self: pointer; wicBitmapSource: ptr IWicBitmapSource; bitmapProperties: ptr D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmapFromWicBitmap](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateBitmapFromWicBitmap)(self, wicBitmapSource, bitmapProperties, bitmap)
proc createSharedBitmap*(self: ptr ID2d1RenderTarget; riid: WinGuid; data: pointer; bitmapProperties: ptr D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.inline, raises: [].} =
  type PfnCreateSharedBitmap = proc (self: pointer; riid: ptr WinGuid; data: pointer; bitmapProperties: ptr D2d1BitmapProperties; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
  cast[PfnCreateSharedBitmap](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateSharedBitmap)(self, riid.unsafeAddr, data, bitmapProperties, bitmap)
proc createBitmapBrush*(self: ptr ID2d1RenderTarget; bitmap: ptr ID2d1Bitmap; bitmapBrushProperties: ptr D2d1BitmapBrushProperties; brushProperties: ptr D2d1BrushProperties; bitmapBrush: var ptr ID2d1BitmapBrush): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapBrush = proc (self: pointer; bitmap: ptr ID2d1Bitmap; bitmapBrushProperties: ptr D2d1BitmapBrushProperties; brushProperties: ptr D2d1BrushProperties; bitmapBrush: var ptr ID2d1BitmapBrush): WinResult {.w32callback.}
  cast[PfnCreateBitmapBrush](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateBitmapBrush)(self, bitmap, bitmapBrushProperties, brushProperties, bitmapBrush)
proc createSolidColorBrush*(self: ptr ID2d1RenderTarget; color: D2d1Rgbaf; brushProperties: ptr D2d1BrushProperties; solidColorBrush: var ptr ID2d1SolidColorBrush): WinResult {.inline, raises: [].} =
  type PfnCreateSolidColorBrush = proc (self: pointer; color: D2d1Rgbaf; brushProperties: ptr D2d1BrushProperties; solidColorBrush: var ptr ID2d1SolidColorBrush): WinResult {.w32callback.}
  cast[PfnCreateSolidColorBrush](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateSolidColorBrush)(self, color, brushProperties, solidColorBrush)
proc createGradientStopCollection*(self: ptr ID2d1RenderTarget; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32; colorInterpolationGamma: D2d1Gamma; extendMode: D2d1ExtendMode; gradientStopCollection: var ptr ID2d1GradientStopCollection): WinResult {.inline, raises: [].} =
  type PfnCreateGradientStopCollection = proc (self: pointer; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32; colorInterpolationGamma: D2d1Gamma; extendMode: D2d1ExtendMode; gradientStopCollection: var ptr ID2d1GradientStopCollection): WinResult {.w32callback.}
  cast[PfnCreateGradientStopCollection](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateGradientStopCollection)(self, gradientStops, gradientStopsCount, colorInterpolationGamma, extendMode, gradientStopCollection)
proc createLinearGradientBrush*(self: ptr ID2d1RenderTarget; linearGradientBrushProperties: D2d1LinearGradientBrushProperties; brushProperties: ptr D2d1BrushProperties; gradientStopCollection: ptr ID2d1GradientStopCollection; linearGradientBrush: var ptr ID2d1LinearGradientBrush): WinResult {.inline, raises: [].} =
  type PfnCreateLinearGradientBrush = proc (self: pointer; linearGradientBrushProperties: D2d1LinearGradientBrushProperties; brushProperties: ptr D2d1BrushProperties; gradientStopCollection: ptr ID2d1GradientStopCollection; linearGradientBrush: var ptr ID2d1LinearGradientBrush): WinResult {.w32callback.}
  cast[PfnCreateLinearGradientBrush](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateLinearGradientBrush)(self, linearGradientBrushProperties, brushProperties, gradientStopCollection, linearGradientBrush)
proc createRadialGradientBrush*(self: ptr ID2d1RenderTarget; radialGradientBrushProperties: D2d1RadialGradientBrushProperties; brushProperties: ptr D2d1BrushProperties; gradientStopCollection: ptr ID2d1GradientStopCollection; radialGradientBrush: var ptr ID2d1RadialGradientBrush): WinResult {.inline, raises: [].} =
  type PfnCreateRadialGradientBrush = proc (self: pointer; radialGradientBrushProperties: D2d1RadialGradientBrushProperties; brushProperties: ptr D2d1BrushProperties; gradientStopCollection: ptr ID2d1GradientStopCollection; radialGradientBrush: var ptr ID2d1RadialGradientBrush): WinResult {.w32callback.}
  cast[PfnCreateRadialGradientBrush](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateRadialGradientBrush)(self, radialGradientBrushProperties, brushProperties, gradientStopCollection, radialGradientBrush)
proc createCompatibleRenderTarget*(self: ptr ID2d1RenderTarget; desiredSize: ptr D2d1Size2f; desiredPixelSize: ptr D2d1Size2u; desiredFormat: ptr D2d1PixelFormat; options: D2d1CompatibleRenderTargetOptions; bitmapRenderTarget: var ptr ID2d1BitmapRenderTarget): WinResult {.inline, raises: [].} =
  type PfnCreateCompatibleRenderTarget = proc (self: pointer; desiredSize: ptr D2d1Size2f; desiredPixelSize: ptr D2d1Size2u; desiredFormat: ptr D2d1PixelFormat; options: D2d1CompatibleRenderTargetOptions; bitmapRenderTarget: var ptr ID2d1BitmapRenderTarget): WinResult {.w32callback.}
  cast[PfnCreateCompatibleRenderTarget](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateCompatibleRenderTarget)(self, desiredSize, desiredPixelSize, desiredFormat, options, bitmapRenderTarget)
proc createLayer*(self: ptr ID2d1RenderTarget; size: ptr D2d1Size2f; layer: var ptr ID2d1Layer): WinResult {.inline, raises: [].} =
  type PfnCreateLayer = proc (self: pointer; size: ptr D2d1Size2f; layer: var ptr ID2d1Layer): WinResult {.w32callback.}
  cast[PfnCreateLayer](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateLayer)(self, size, layer)
proc createMesh*(self: ptr ID2d1RenderTarget; mesh: var ptr ID2d1Mesh): WinResult {.inline, raises: [].} =
  type PfnCreateMesh = proc (self: pointer; mesh: var ptr ID2d1Mesh): WinResult {.w32callback.}
  cast[PfnCreateMesh](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).CreateMesh)(self, mesh)
proc drawLine*(self: ptr ID2d1RenderTarget; point0: D2d1Vec2f; point1: D2d1Vec2f; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.inline, raises: [].} =
  type PfnDrawLine = proc (self: pointer; point0: D2d1Vec2f; point1: D2d1Vec2f; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
  cast[PfnDrawLine](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawLine)(self, point0, point1, brush, strokeWidth, strokeStyle)
proc drawRectangle*(self: ptr ID2d1RenderTarget; rect: D2d1Rectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.inline, raises: [].} =
  type PfnDrawRectangle = proc (self: pointer; rect: D2d1Rectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
  cast[PfnDrawRectangle](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawRectangle)(self, rect, brush, strokeWidth, strokeStyle)
proc fillRectangle*(self: ptr ID2d1RenderTarget; rect: D2d1Rectf; brush: ptr ID2d1Brush): void {.inline, raises: [].} =
  type PfnFillRectangle = proc (self: pointer; rect: D2d1Rectf; brush: ptr ID2d1Brush): void {.w32callback.}
  cast[PfnFillRectangle](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).FillRectangle)(self, rect, brush)
proc drawRoundedRectangle*(self: ptr ID2d1RenderTarget; roundedRect: D2d1RoundedRectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.inline, raises: [].} =
  type PfnDrawRoundedRectangle = proc (self: pointer; roundedRect: D2d1RoundedRectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
  cast[PfnDrawRoundedRectangle](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawRoundedRectangle)(self, roundedRect, brush, strokeWidth, strokeStyle)
proc fillRoundedRectangle*(self: ptr ID2d1RenderTarget; roundedRect: D2d1RoundedRectf; brush: ptr ID2d1Brush): void {.inline, raises: [].} =
  type PfnFillRoundedRectangle = proc (self: pointer; roundedRect: D2d1RoundedRectf; brush: ptr ID2d1Brush): void {.w32callback.}
  cast[PfnFillRoundedRectangle](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).FillRoundedRectangle)(self, roundedRect, brush)
proc drawEllipse*(self: ptr ID2d1RenderTarget; ellipse: D2d1Ellipse; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.inline, raises: [].} =
  type PfnDrawEllipse = proc (self: pointer; ellipse: D2d1Ellipse; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
  cast[PfnDrawEllipse](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawEllipse)(self, ellipse, brush, strokeWidth, strokeStyle)
proc fillEllipse*(self: ptr ID2d1RenderTarget; ellipse: D2d1Ellipse; brush: ptr ID2d1Brush): void {.inline, raises: [].} =
  type PfnFillEllipse = proc (self: pointer; ellipse: D2d1Ellipse; brush: ptr ID2d1Brush): void {.w32callback.}
  cast[PfnFillEllipse](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).FillEllipse)(self, ellipse, brush)
proc drawGeometry*(self: ptr ID2d1RenderTarget; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.inline, raises: [].} =
  type PfnDrawGeometry = proc (self: pointer; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): void {.w32callback.}
  cast[PfnDrawGeometry](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawGeometry)(self, geometry, brush, strokeWidth, strokeStyle)
proc fillGeometry*(self: ptr ID2d1RenderTarget; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; opacityBrush: ptr ID2d1Brush): void {.inline, raises: [].} =
  type PfnFillGeometry = proc (self: pointer; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; opacityBrush: ptr ID2d1Brush): void {.w32callback.}
  cast[PfnFillGeometry](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).FillGeometry)(self, geometry, brush, opacityBrush)
proc fillMesh*(self: ptr ID2d1RenderTarget; mesh: ptr ID2d1Mesh; brush: ptr ID2d1Brush): void {.inline, raises: [].} =
  type PfnFillMesh = proc (self: pointer; mesh: ptr ID2d1Mesh; brush: ptr ID2d1Brush): void {.w32callback.}
  cast[PfnFillMesh](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).FillMesh)(self, mesh, brush)
proc fillOpacityMask*(self: ptr ID2d1RenderTarget; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; content: D2d1OpacityMaskContent; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.inline, raises: [].} =
  type PfnFillOpacityMask = proc (self: pointer; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; content: D2d1OpacityMaskContent; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
  cast[PfnFillOpacityMask](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).FillOpacityMask)(self, opacityMask, brush, content, destinationRectangle, sourceRectangle)
proc drawBitmap*(self: ptr ID2d1RenderTarget; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1BitmapInterpolationMode; sourceRectangle: ptr D2d1Rectf): void {.inline, raises: [].} =
  type PfnDrawBitmap = proc (self: pointer; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1BitmapInterpolationMode; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
  cast[PfnDrawBitmap](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawBitmap)(self, bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle)
proc drawText*(self: ptr ID2d1RenderTarget; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDWriteTextFormat; layoutRect: D2d1Rectf; defaultFillBrush: ptr ID2d1Brush; options: D2d1DrawTextOptions; measuringMode: DwriteMeasuringMode): void {.inline, raises: [].} =
  type PfnDrawText = proc (self: pointer; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDWriteTextFormat; layoutRect: D2d1Rectf; defaultFillBrush: ptr ID2d1Brush; options: D2d1DrawTextOptions; measuringMode: DwriteMeasuringMode): void {.w32callback.}
  cast[PfnDrawText](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawText)(self, string, stringLength, textFormat, layoutRect, defaultFillBrush, options, measuringMode)
proc drawTextLayout*(self: ptr ID2d1RenderTarget; origin: D2d1Vec2f; textLayout: ptr IDWriteTextLayout; defaultFillBrush: ptr ID2d1Brush; options: D2d1DrawTextOptions): void {.inline, raises: [].} =
  type PfnDrawTextLayout = proc (self: pointer; origin: D2d1Vec2f; textLayout: ptr IDWriteTextLayout; defaultFillBrush: ptr ID2d1Brush; options: D2d1DrawTextOptions): void {.w32callback.}
  cast[PfnDrawTextLayout](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawTextLayout)(self, origin, textLayout, defaultFillBrush, options)
proc drawGlyphRun*(self: ptr ID2d1RenderTarget; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): void {.inline, raises: [].} =
  type PfnDrawGlyphRun = proc (self: pointer; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): void {.w32callback.}
  cast[PfnDrawGlyphRun](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).DrawGlyphRun)(self, baselineOrigin, glyphRun, foregroundBrush, measuringMode)
proc setTransform*(self: ptr ID2d1RenderTarget; transform: D2d1Affine2f): void {.inline, raises: [].} =
  type PfnSetTransform = proc (self: pointer; transform: D2d1Affine2f): void {.w32callback.}
  cast[PfnSetTransform](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).SetTransform)(self, transform)
proc getTransform*(self: ptr ID2d1RenderTarget; transform: var D2d1Affine2f): void {.inline, raises: [].} =
  type PfnGetTransform = proc (self: pointer; transform: var D2d1Affine2f): void {.w32callback.}
  cast[PfnGetTransform](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetTransform)(self, transform)
proc setAntialiasMode*(self: ptr ID2d1RenderTarget; antialiasMode: D2d1AntialiasMode): void {.inline, raises: [].} =
  type PfnSetAntialiasMode = proc (self: pointer; antialiasMode: D2d1AntialiasMode): void {.w32callback.}
  cast[PfnSetAntialiasMode](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).SetAntialiasMode)(self, antialiasMode)
proc getAntialiasMode*(self: ptr ID2d1RenderTarget): D2d1AntialiasMode {.inline, raises: [].} =
  type PfnGetAntialiasMode = proc (self: pointer): D2d1AntialiasMode {.w32callback.}
  cast[PfnGetAntialiasMode](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetAntialiasMode)(self)
proc setTextAntialiasMode*(self: ptr ID2d1RenderTarget; textAntialiasMode: D2d1TextAntialiasMode): void {.inline, raises: [].} =
  type PfnSetTextAntialiasMode = proc (self: pointer; textAntialiasMode: D2d1TextAntialiasMode): void {.w32callback.}
  cast[PfnSetTextAntialiasMode](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).SetTextAntialiasMode)(self, textAntialiasMode)
proc getTextAntialiasMode*(self: ptr ID2d1RenderTarget): D2d1TextAntialiasMode {.inline, raises: [].} =
  type PfnGetTextAntialiasMode = proc (self: pointer): D2d1TextAntialiasMode {.w32callback.}
  cast[PfnGetTextAntialiasMode](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetTextAntialiasMode)(self)
proc setTextRenderingParams*(self: ptr ID2d1RenderTarget; textRenderingParams: ptr IDWriteRenderingParams): void {.inline, raises: [].} =
  type PfnSetTextRenderingParams = proc (self: pointer; textRenderingParams: ptr IDWriteRenderingParams): void {.w32callback.}
  cast[PfnSetTextRenderingParams](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).SetTextRenderingParams)(self, textRenderingParams)
proc getTextRenderingParams*(self: ptr ID2d1RenderTarget; textRenderingParams: ptr ptr IDWriteRenderingParams): void {.inline, raises: [].} =
  type PfnGetTextRenderingParams = proc (self: pointer; textRenderingParams: ptr ptr IDWriteRenderingParams): void {.w32callback.}
  cast[PfnGetTextRenderingParams](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetTextRenderingParams)(self, textRenderingParams)
proc setTags*(self: ptr ID2d1RenderTarget; tag1: uint64; tag2: uint64): void {.inline, raises: [].} =
  type PfnSetTags = proc (self: pointer; tag1: uint64; tag2: uint64): void {.w32callback.}
  cast[PfnSetTags](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).SetTags)(self, tag1, tag2)
proc getTags*(self: ptr ID2d1RenderTarget; tag1: ptr uint64; tag2: ptr uint64): void {.inline, raises: [].} =
  type PfnGetTags = proc (self: pointer; tag1: ptr uint64; tag2: ptr uint64): void {.w32callback.}
  cast[PfnGetTags](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetTags)(self, tag1, tag2)
proc pushLayer*(self: ptr ID2d1RenderTarget; layerParameters: D2d1LayerParameters; layer: ptr ID2d1Layer): void {.inline, raises: [].} =
  type PfnPushLayer = proc (self: pointer; layerParameters: D2d1LayerParameters; layer: ptr ID2d1Layer): void {.w32callback.}
  cast[PfnPushLayer](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).PushLayer)(self, layerParameters, layer)
proc popLayer*(self: ptr ID2d1RenderTarget): void {.inline, raises: [].} =
  type PfnPopLayer = proc (self: pointer): void {.w32callback.}
  cast[PfnPopLayer](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).PopLayer)(self)
proc flush*(self: ptr ID2d1RenderTarget; tag1: ptr uint64; tag2: ptr uint64): WinResult {.inline, raises: [].} =
  type PfnFlush = proc (self: pointer; tag1: ptr uint64; tag2: ptr uint64): WinResult {.w32callback.}
  cast[PfnFlush](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).Flush)(self, tag1, tag2)
proc saveDrawingState*(self: ptr ID2d1RenderTarget; drawingStateBlock: ptr ID2d1DrawingStateBlock): void {.inline, raises: [].} =
  type PfnSaveDrawingState = proc (self: pointer; drawingStateBlock: ptr ID2d1DrawingStateBlock): void {.w32callback.}
  cast[PfnSaveDrawingState](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).SaveDrawingState)(self, drawingStateBlock)
proc restoreDrawingState*(self: ptr ID2d1RenderTarget; drawingStateBlock: ptr ID2d1DrawingStateBlock): void {.inline, raises: [].} =
  type PfnRestoreDrawingState = proc (self: pointer; drawingStateBlock: ptr ID2d1DrawingStateBlock): void {.w32callback.}
  cast[PfnRestoreDrawingState](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).RestoreDrawingState)(self, drawingStateBlock)
proc pushAxisAlignedClip*(self: ptr ID2d1RenderTarget; clipRect: D2d1Rectf; antialiasMode: D2d1AntialiasMode): void {.inline, raises: [].} =
  type PfnPushAxisAlignedClip = proc (self: pointer; clipRect: D2d1Rectf; antialiasMode: D2d1AntialiasMode): void {.w32callback.}
  cast[PfnPushAxisAlignedClip](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).PushAxisAlignedClip)(self, clipRect, antialiasMode)
proc popAxisAlignedClip*(self: ptr ID2d1RenderTarget): void {.inline, raises: [].} =
  type PfnPopAxisAlignedClip = proc (self: pointer): void {.w32callback.}
  cast[PfnPopAxisAlignedClip](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).PopAxisAlignedClip)(self)
proc clear*(self: ptr ID2d1RenderTarget; clearColor: ptr D2d1Rgbaf): void {.inline, raises: [].} =
  type PfnClear = proc (self: pointer; clearColor: ptr D2d1Rgbaf): void {.w32callback.}
  cast[PfnClear](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).Clear)(self, clearColor)
proc beginDraw*(self: ptr ID2d1RenderTarget): void {.inline, raises: [].} =
  type PfnBeginDraw = proc (self: pointer): void {.w32callback.}
  cast[PfnBeginDraw](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).BeginDraw)(self)
proc endDraw*(self: ptr ID2d1RenderTarget; tag1: ptr uint64; tag2: ptr uint64): WinResult {.inline, raises: [].} =
  type PfnEndDraw = proc (self: pointer; tag1: ptr uint64; tag2: ptr uint64): WinResult {.w32callback.}
  cast[PfnEndDraw](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).EndDraw)(self, tag1, tag2)
proc getPixelFormat*(self: ptr ID2d1RenderTarget): D2d1PixelFormat {.inline, raises: [].} =
  type PfnGetPixelFormat = proc (self: pointer; implicitRet: var D2d1PixelFormat): void {.w32callback.}
  cast[PfnGetPixelFormat](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetPixelFormat)(self, result)
proc setDpi*(self: ptr ID2d1RenderTarget; dpiX: float32; dpiY: float32): void {.inline, raises: [].} =
  type PfnSetDpi = proc (self: pointer; dpiX: float32; dpiY: float32): void {.w32callback.}
  cast[PfnSetDpi](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).SetDpi)(self, dpiX, dpiY)
proc getDpi*(self: ptr ID2d1RenderTarget; dpiX: var float32; dpiY: var float32): void {.inline, raises: [].} =
  type PfnGetDpi = proc (self: pointer; dpiX: var float32; dpiY: var float32): void {.w32callback.}
  cast[PfnGetDpi](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetDpi)(self, dpiX, dpiY)
proc getSize*(self: ptr ID2d1RenderTarget): D2d1Size2f {.inline, raises: [].} =
  type PfnGetSize = proc (self: pointer; implicitRet: var D2d1Size2f): void {.w32callback.}
  cast[PfnGetSize](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetSize)(self, result)
proc getPixelSize*(self: ptr ID2d1RenderTarget): D2d1Size2u {.inline, raises: [].} =
  type PfnGetPixelSize = proc (self: pointer; implicitRet: var D2d1Size2u): void {.w32callback.}
  cast[PfnGetPixelSize](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetPixelSize)(self, result)
proc getMaximumBitmapSize*(self: ptr ID2d1RenderTarget): uint32 {.inline, raises: [].} =
  type PfnGetMaximumBitmapSize = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetMaximumBitmapSize](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).GetMaximumBitmapSize)(self)
proc isSupported*(self: ptr ID2d1RenderTarget; renderTargetProperties: D2d1RenderTargetProperties): WtBOOL {.inline, raises: [].} =
  type PfnIsSupported = proc (self: pointer; renderTargetProperties: D2d1RenderTargetProperties): WtBOOL {.w32callback.}
  cast[PfnIsSupported](cast[ptr ID2d1RenderTargetVtbl](self.vtbl).IsSupported)(self, renderTargetProperties)
proc checkWindowState*(self: ptr ID2d1HwndRenderTarget): D2d1WindowState {.inline, raises: [].} =
  type PfnCheckWindowState = proc (self: pointer): D2d1WindowState {.w32callback.}
  cast[PfnCheckWindowState](cast[ptr ID2d1HwndRenderTargetVtbl](self.vtbl).CheckWindowState)(self)
proc resize*(self: ptr ID2d1HwndRenderTarget; pixelSize: ptr D2d1Size2u): WinResult {.inline, raises: [].} =
  type PfnResize = proc (self: pointer; pixelSize: ptr D2d1Size2u): WinResult {.w32callback.}
  cast[PfnResize](cast[ptr ID2d1HwndRenderTargetVtbl](self.vtbl).Resize)(self, pixelSize)
proc getHwnd*(self: ptr ID2d1HwndRenderTarget): WtHWND {.inline, raises: [].} =
  type PfnGetHwnd = proc (self: pointer): WtHWND {.w32callback.}
  cast[PfnGetHwnd](cast[ptr ID2d1HwndRenderTargetVtbl](self.vtbl).GetHwnd)(self)
proc bindDC*(self: ptr ID2d1DCRenderTarget; hDC: WtHDC; pSubRect: ptr D2d1Recti): WinResult {.inline, raises: [].} =
  type PfnBindDC = proc (self: pointer; hDC: WtHDC; pSubRect: ptr D2d1Recti): WinResult {.w32callback.}
  cast[PfnBindDC](cast[ptr ID2d1DCRenderTargetVtbl](self.vtbl).BindDC)(self, hDC, pSubRect)
proc reloadSystemMetrics*(self: ptr ID2d1Factory): WinResult {.inline, raises: [].} =
  type PfnReloadSystemMetrics = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnReloadSystemMetrics](cast[ptr ID2d1FactoryVtbl](self.vtbl).ReloadSystemMetrics)(self)
proc getDesktopDpi*(self: ptr ID2d1Factory; dpiX: var float32; dpiY: var float32): void {.inline, raises: [].} =
  type PfnGetDesktopDpi = proc (self: pointer; dpiX: var float32; dpiY: var float32): void {.w32callback.}
  cast[PfnGetDesktopDpi](cast[ptr ID2d1FactoryVtbl](self.vtbl).GetDesktopDpi)(self, dpiX, dpiY)
proc createRectangleGeometry*(self: ptr ID2d1Factory; rectangle: D2d1Rectf; rectangleGeometry: var ptr ID2d1RectangleGeometry): WinResult {.inline, raises: [].} =
  type PfnCreateRectangleGeometry = proc (self: pointer; rectangle: D2d1Rectf; rectangleGeometry: var ptr ID2d1RectangleGeometry): WinResult {.w32callback.}
  cast[PfnCreateRectangleGeometry](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateRectangleGeometry)(self, rectangle, rectangleGeometry)
proc createRoundedRectangleGeometry*(self: ptr ID2d1Factory; roundedRectangle: D2d1RoundedRectf; roundedRectangleGeometry: var ptr ID2d1RoundedRectangleGeometry): WinResult {.inline, raises: [].} =
  type PfnCreateRoundedRectangleGeometry = proc (self: pointer; roundedRectangle: D2d1RoundedRectf; roundedRectangleGeometry: var ptr ID2d1RoundedRectangleGeometry): WinResult {.w32callback.}
  cast[PfnCreateRoundedRectangleGeometry](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateRoundedRectangleGeometry)(self, roundedRectangle, roundedRectangleGeometry)
proc createEllipseGeometry*(self: ptr ID2d1Factory; ellipse: D2d1Ellipse; ellipseGeometry: var ptr ID2d1EllipseGeometry): WinResult {.inline, raises: [].} =
  type PfnCreateEllipseGeometry = proc (self: pointer; ellipse: D2d1Ellipse; ellipseGeometry: var ptr ID2d1EllipseGeometry): WinResult {.w32callback.}
  cast[PfnCreateEllipseGeometry](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateEllipseGeometry)(self, ellipse, ellipseGeometry)
proc createGeometryGroup*(self: ptr ID2d1Factory; fillMode: D2d1FillMode; geometries: ptr UncheckedArray[ptr ID2d1Geometry]; geometriesCount: uint32; geometryGroup: var ptr ID2d1GeometryGroup): WinResult {.inline, raises: [].} =
  type PfnCreateGeometryGroup = proc (self: pointer; fillMode: D2d1FillMode; geometries: ptr UncheckedArray[ptr ID2d1Geometry]; geometriesCount: uint32; geometryGroup: var ptr ID2d1GeometryGroup): WinResult {.w32callback.}
  cast[PfnCreateGeometryGroup](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateGeometryGroup)(self, fillMode, geometries, geometriesCount, geometryGroup)
proc createTransformedGeometry*(self: ptr ID2d1Factory; sourceGeometry: ptr ID2d1Geometry; transform: D2d1Affine2f; transformedGeometry: var ptr ID2d1TransformedGeometry): WinResult {.inline, raises: [].} =
  type PfnCreateTransformedGeometry = proc (self: pointer; sourceGeometry: ptr ID2d1Geometry; transform: D2d1Affine2f; transformedGeometry: var ptr ID2d1TransformedGeometry): WinResult {.w32callback.}
  cast[PfnCreateTransformedGeometry](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateTransformedGeometry)(self, sourceGeometry, transform, transformedGeometry)
proc createPathGeometry*(self: ptr ID2d1Factory; pathGeometry: var ptr ID2d1PathGeometry): WinResult {.inline, raises: [].} =
  type PfnCreatePathGeometry = proc (self: pointer; pathGeometry: var ptr ID2d1PathGeometry): WinResult {.w32callback.}
  cast[PfnCreatePathGeometry](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreatePathGeometry)(self, pathGeometry)
proc createStrokeStyle*(self: ptr ID2d1Factory; strokeStyleProperties: D2d1StrokeStyleProperties; dashes: ptr UncheckedArray[float32]; dashesCount: uint32; strokeStyle: var ptr ID2d1StrokeStyle): WinResult {.inline, raises: [].} =
  type PfnCreateStrokeStyle = proc (self: pointer; strokeStyleProperties: D2d1StrokeStyleProperties; dashes: ptr UncheckedArray[float32]; dashesCount: uint32; strokeStyle: var ptr ID2d1StrokeStyle): WinResult {.w32callback.}
  cast[PfnCreateStrokeStyle](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateStrokeStyle)(self, strokeStyleProperties, dashes, dashesCount, strokeStyle)
proc createDrawingStateBlock*(self: ptr ID2d1Factory; drawingStateDescription: ptr D2d1DrawingStateDescription; textRenderingParams: ptr IDWriteRenderingParams; drawingStateBlock: var ptr ID2d1DrawingStateBlock): WinResult {.inline, raises: [].} =
  type PfnCreateDrawingStateBlock = proc (self: pointer; drawingStateDescription: ptr D2d1DrawingStateDescription; textRenderingParams: ptr IDWriteRenderingParams; drawingStateBlock: var ptr ID2d1DrawingStateBlock): WinResult {.w32callback.}
  cast[PfnCreateDrawingStateBlock](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateDrawingStateBlock)(self, drawingStateDescription, textRenderingParams, drawingStateBlock)
proc createWicBitmapRenderTarget*(self: ptr ID2d1Factory; target: ptr IWicBitmap; renderTargetProperties: D2d1RenderTargetProperties; renderTarget: var ptr ID2d1RenderTarget): WinResult {.inline, raises: [].} =
  type PfnCreateWicBitmapRenderTarget = proc (self: pointer; target: ptr IWicBitmap; renderTargetProperties: D2d1RenderTargetProperties; renderTarget: var ptr ID2d1RenderTarget): WinResult {.w32callback.}
  cast[PfnCreateWicBitmapRenderTarget](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateWicBitmapRenderTarget)(self, target, renderTargetProperties, renderTarget)
proc createHwndRenderTarget*(self: ptr ID2d1Factory; renderTargetProperties: D2d1RenderTargetProperties; hwndRenderTargetProperties: D2d1HwndRenderTargetProperties; hwndRenderTarget: var ptr ID2d1HwndRenderTarget): WinResult {.inline, raises: [].} =
  type PfnCreateHwndRenderTarget = proc (self: pointer; renderTargetProperties: D2d1RenderTargetProperties; hwndRenderTargetProperties: D2d1HwndRenderTargetProperties; hwndRenderTarget: var ptr ID2d1HwndRenderTarget): WinResult {.w32callback.}
  cast[PfnCreateHwndRenderTarget](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateHwndRenderTarget)(self, renderTargetProperties, hwndRenderTargetProperties, hwndRenderTarget)
# skipped: ID2d1Factory CreateDxgiSurfaceRenderTarget
proc createDCRenderTarget*(self: ptr ID2d1Factory; renderTargetProperties: D2d1RenderTargetProperties; dcRenderTarget: var ptr ID2d1DCRenderTarget): WinResult {.inline, raises: [].} =
  type PfnCreateDCRenderTarget = proc (self: pointer; renderTargetProperties: D2d1RenderTargetProperties; dcRenderTarget: var ptr ID2d1DCRenderTarget): WinResult {.w32callback.}
  cast[PfnCreateDCRenderTarget](cast[ptr ID2d1FactoryVtbl](self.vtbl).CreateDCRenderTarget)(self, renderTargetProperties, dcRenderTarget)
proc getSize*(self: ptr ID2d1Bitmap): D2d1Size2f {.inline, raises: [].} =
  type PfnGetSize = proc (self: pointer; implicitRet: var D2d1Size2f): void {.w32callback.}
  cast[PfnGetSize](cast[ptr ID2d1BitmapVtbl](self.vtbl).GetSize)(self, result)
proc getPixelSize*(self: ptr ID2d1Bitmap): D2d1Size2u {.inline, raises: [].} =
  type PfnGetPixelSize = proc (self: pointer; implicitRet: var D2d1Size2u): void {.w32callback.}
  cast[PfnGetPixelSize](cast[ptr ID2d1BitmapVtbl](self.vtbl).GetPixelSize)(self, result)
proc getPixelFormat*(self: ptr ID2d1Bitmap): D2d1PixelFormat {.inline, raises: [].} =
  type PfnGetPixelFormat = proc (self: pointer; implicitRet: var D2d1PixelFormat): void {.w32callback.}
  cast[PfnGetPixelFormat](cast[ptr ID2d1BitmapVtbl](self.vtbl).GetPixelFormat)(self, result)
proc getDpi*(self: ptr ID2d1Bitmap; dpiX: var float32; dpiY: var float32): void {.inline, raises: [].} =
  type PfnGetDpi = proc (self: pointer; dpiX: var float32; dpiY: var float32): void {.w32callback.}
  cast[PfnGetDpi](cast[ptr ID2d1BitmapVtbl](self.vtbl).GetDpi)(self, dpiX, dpiY)
proc copyFromBitmap*(self: ptr ID2d1Bitmap; destPoint: ptr D2d1Vec2u; bitmap: ptr ID2d1Bitmap; srcRect: ptr D2d1Rectu): WinResult {.inline, raises: [].} =
  type PfnCopyFromBitmap = proc (self: pointer; destPoint: ptr D2d1Vec2u; bitmap: ptr ID2d1Bitmap; srcRect: ptr D2d1Rectu): WinResult {.w32callback.}
  cast[PfnCopyFromBitmap](cast[ptr ID2d1BitmapVtbl](self.vtbl).CopyFromBitmap)(self, destPoint, bitmap, srcRect)
proc copyFromRenderTarget*(self: ptr ID2d1Bitmap; destPoint: ptr D2d1Vec2u; renderTarget: ptr ID2d1RenderTarget; srcRect: ptr D2d1Rectu): WinResult {.inline, raises: [].} =
  type PfnCopyFromRenderTarget = proc (self: pointer; destPoint: ptr D2d1Vec2u; renderTarget: ptr ID2d1RenderTarget; srcRect: ptr D2d1Rectu): WinResult {.w32callback.}
  cast[PfnCopyFromRenderTarget](cast[ptr ID2d1BitmapVtbl](self.vtbl).CopyFromRenderTarget)(self, destPoint, renderTarget, srcRect)
proc copyFromMemory*(self: ptr ID2d1Bitmap; dstRect: ptr D2d1Rectu; srcData: pointer; pitch: uint32): WinResult {.inline, raises: [].} =
  type PfnCopyFromMemory = proc (self: pointer; dstRect: ptr D2d1Rectu; srcData: pointer; pitch: uint32): WinResult {.w32callback.}
  cast[PfnCopyFromMemory](cast[ptr ID2d1BitmapVtbl](self.vtbl).CopyFromMemory)(self, dstRect, srcData, pitch)
proc setOpacity*(self: ptr ID2d1Brush; opacity: float32): void {.inline, raises: [].} =
  type PfnSetOpacity = proc (self: pointer; opacity: float32): void {.w32callback.}
  cast[PfnSetOpacity](cast[ptr ID2d1BrushVtbl](self.vtbl).SetOpacity)(self, opacity)
proc setTransform*(self: ptr ID2d1Brush; transform: D2d1Affine2f): void {.inline, raises: [].} =
  type PfnSetTransform = proc (self: pointer; transform: D2d1Affine2f): void {.w32callback.}
  cast[PfnSetTransform](cast[ptr ID2d1BrushVtbl](self.vtbl).SetTransform)(self, transform)
proc getOpacity*(self: ptr ID2d1Brush): float32 {.inline, raises: [].} =
  type PfnGetOpacity = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetOpacity](cast[ptr ID2d1BrushVtbl](self.vtbl).GetOpacity)(self)
proc getTransform*(self: ptr ID2d1Brush; transform: var D2d1Affine2f): void {.inline, raises: [].} =
  type PfnGetTransform = proc (self: pointer; transform: var D2d1Affine2f): void {.w32callback.}
  cast[PfnGetTransform](cast[ptr ID2d1BrushVtbl](self.vtbl).GetTransform)(self, transform)
proc setExtendModeX*(self: ptr ID2d1BitmapBrush; extendModeX: D2d1ExtendMode): void {.inline, raises: [].} =
  type PfnSetExtendModeX = proc (self: pointer; extendModeX: D2d1ExtendMode): void {.w32callback.}
  cast[PfnSetExtendModeX](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).SetExtendModeX)(self, extendModeX)
proc setExtendModeY*(self: ptr ID2d1BitmapBrush; extendModeY: D2d1ExtendMode): void {.inline, raises: [].} =
  type PfnSetExtendModeY = proc (self: pointer; extendModeY: D2d1ExtendMode): void {.w32callback.}
  cast[PfnSetExtendModeY](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).SetExtendModeY)(self, extendModeY)
proc setInterpolationMode*(self: ptr ID2d1BitmapBrush; interpolationMode: D2d1BitmapInterpolationMode): void {.inline, raises: [].} =
  type PfnSetInterpolationMode = proc (self: pointer; interpolationMode: D2d1BitmapInterpolationMode): void {.w32callback.}
  cast[PfnSetInterpolationMode](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).SetInterpolationMode)(self, interpolationMode)
proc setBitmap*(self: ptr ID2d1BitmapBrush; bitmap: ptr ID2d1Bitmap): void {.inline, raises: [].} =
  type PfnSetBitmap = proc (self: pointer; bitmap: ptr ID2d1Bitmap): void {.w32callback.}
  cast[PfnSetBitmap](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).SetBitmap)(self, bitmap)
proc getExtendModeX*(self: ptr ID2d1BitmapBrush): D2d1ExtendMode {.inline, raises: [].} =
  type PfnGetExtendModeX = proc (self: pointer): D2d1ExtendMode {.w32callback.}
  cast[PfnGetExtendModeX](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).GetExtendModeX)(self)
proc getExtendModeY*(self: ptr ID2d1BitmapBrush): D2d1ExtendMode {.inline, raises: [].} =
  type PfnGetExtendModeY = proc (self: pointer): D2d1ExtendMode {.w32callback.}
  cast[PfnGetExtendModeY](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).GetExtendModeY)(self)
proc getInterpolationMode*(self: ptr ID2d1BitmapBrush): D2d1BitmapInterpolationMode {.inline, raises: [].} =
  type PfnGetInterpolationMode = proc (self: pointer): D2d1BitmapInterpolationMode {.w32callback.}
  cast[PfnGetInterpolationMode](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).GetInterpolationMode)(self)
proc getBitmap*(self: ptr ID2d1BitmapBrush; bitmap: ptr ptr ID2d1Bitmap): void {.inline, raises: [].} =
  type PfnGetBitmap = proc (self: pointer; bitmap: ptr ptr ID2d1Bitmap): void {.w32callback.}
  cast[PfnGetBitmap](cast[ptr ID2d1BitmapBrushVtbl](self.vtbl).GetBitmap)(self, bitmap)
proc setColor*(self: ptr ID2d1SolidColorBrush; color: D2d1Rgbaf): void {.inline, raises: [].} =
  type PfnSetColor = proc (self: pointer; color: D2d1Rgbaf): void {.w32callback.}
  cast[PfnSetColor](cast[ptr ID2d1SolidColorBrushVtbl](self.vtbl).SetColor)(self, color)
proc getColor*(self: ptr ID2d1SolidColorBrush): D2d1Rgbaf {.inline, raises: [].} =
  type PfnGetColor = proc (self: pointer; implicitRet: var D2d1Rgbaf): void {.w32callback.}
  cast[PfnGetColor](cast[ptr ID2d1SolidColorBrushVtbl](self.vtbl).GetColor)(self, result)
proc getGradientStopCount*(self: ptr ID2d1GradientStopCollection): uint32 {.inline, raises: [].} =
  type PfnGetGradientStopCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetGradientStopCount](cast[ptr ID2d1GradientStopCollectionVtbl](self.vtbl).GetGradientStopCount)(self)
proc getGradientStops*(self: ptr ID2d1GradientStopCollection; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32): void {.inline, raises: [].} =
  type PfnGetGradientStops = proc (self: pointer; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32): void {.w32callback.}
  cast[PfnGetGradientStops](cast[ptr ID2d1GradientStopCollectionVtbl](self.vtbl).GetGradientStops)(self, gradientStops, gradientStopsCount)
proc getColorInterpolationGamma*(self: ptr ID2d1GradientStopCollection): D2d1Gamma {.inline, raises: [].} =
  type PfnGetColorInterpolationGamma = proc (self: pointer): D2d1Gamma {.w32callback.}
  cast[PfnGetColorInterpolationGamma](cast[ptr ID2d1GradientStopCollectionVtbl](self.vtbl).GetColorInterpolationGamma)(self)
proc getExtendMode*(self: ptr ID2d1GradientStopCollection): D2d1ExtendMode {.inline, raises: [].} =
  type PfnGetExtendMode = proc (self: pointer): D2d1ExtendMode {.w32callback.}
  cast[PfnGetExtendMode](cast[ptr ID2d1GradientStopCollectionVtbl](self.vtbl).GetExtendMode)(self)
proc setStartPoint*(self: ptr ID2d1LinearGradientBrush; startPoint: D2d1Vec2f): void {.inline, raises: [].} =
  type PfnSetStartPoint = proc (self: pointer; startPoint: D2d1Vec2f): void {.w32callback.}
  cast[PfnSetStartPoint](cast[ptr ID2d1LinearGradientBrushVtbl](self.vtbl).SetStartPoint)(self, startPoint)
proc setEndPoint*(self: ptr ID2d1LinearGradientBrush; endPoint: D2d1Vec2f): void {.inline, raises: [].} =
  type PfnSetEndPoint = proc (self: pointer; endPoint: D2d1Vec2f): void {.w32callback.}
  cast[PfnSetEndPoint](cast[ptr ID2d1LinearGradientBrushVtbl](self.vtbl).SetEndPoint)(self, endPoint)
proc getStartPoint*(self: ptr ID2d1LinearGradientBrush): D2d1Vec2f {.inline, raises: [].} =
  type PfnGetStartPoint = proc (self: pointer; implicitRet: var D2d1Vec2f): void {.w32callback.}
  cast[PfnGetStartPoint](cast[ptr ID2d1LinearGradientBrushVtbl](self.vtbl).GetStartPoint)(self, result)
proc getEndPoint*(self: ptr ID2d1LinearGradientBrush): D2d1Vec2f {.inline, raises: [].} =
  type PfnGetEndPoint = proc (self: pointer; implicitRet: var D2d1Vec2f): void {.w32callback.}
  cast[PfnGetEndPoint](cast[ptr ID2d1LinearGradientBrushVtbl](self.vtbl).GetEndPoint)(self, result)
proc getGradientStopCollection*(self: ptr ID2d1LinearGradientBrush; gradientStopCollection: var ptr ID2d1GradientStopCollection): void {.inline, raises: [].} =
  type PfnGetGradientStopCollection = proc (self: pointer; gradientStopCollection: var ptr ID2d1GradientStopCollection): void {.w32callback.}
  cast[PfnGetGradientStopCollection](cast[ptr ID2d1LinearGradientBrushVtbl](self.vtbl).GetGradientStopCollection)(self, gradientStopCollection)
proc setCenter*(self: ptr ID2d1RadialGradientBrush; center: D2d1Vec2f): void {.inline, raises: [].} =
  type PfnSetCenter = proc (self: pointer; center: D2d1Vec2f): void {.w32callback.}
  cast[PfnSetCenter](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).SetCenter)(self, center)
proc setGradientOriginOffset*(self: ptr ID2d1RadialGradientBrush; gradientOriginOffset: D2d1Vec2f): void {.inline, raises: [].} =
  type PfnSetGradientOriginOffset = proc (self: pointer; gradientOriginOffset: D2d1Vec2f): void {.w32callback.}
  cast[PfnSetGradientOriginOffset](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).SetGradientOriginOffset)(self, gradientOriginOffset)
proc setRadiusX*(self: ptr ID2d1RadialGradientBrush; radiusX: float32): void {.inline, raises: [].} =
  type PfnSetRadiusX = proc (self: pointer; radiusX: float32): void {.w32callback.}
  cast[PfnSetRadiusX](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).SetRadiusX)(self, radiusX)
proc setRadiusY*(self: ptr ID2d1RadialGradientBrush; radiusY: float32): void {.inline, raises: [].} =
  type PfnSetRadiusY = proc (self: pointer; radiusY: float32): void {.w32callback.}
  cast[PfnSetRadiusY](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).SetRadiusY)(self, radiusY)
proc getCenter*(self: ptr ID2d1RadialGradientBrush): D2d1Vec2f {.inline, raises: [].} =
  type PfnGetCenter = proc (self: pointer; implicitRet: var D2d1Vec2f): void {.w32callback.}
  cast[PfnGetCenter](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).GetCenter)(self, result)
proc getGradientOriginOffset*(self: ptr ID2d1RadialGradientBrush): D2d1Vec2f {.inline, raises: [].} =
  type PfnGetGradientOriginOffset = proc (self: pointer; implicitRet: var D2d1Vec2f): void {.w32callback.}
  cast[PfnGetGradientOriginOffset](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).GetGradientOriginOffset)(self, result)
proc getRadiusX*(self: ptr ID2d1RadialGradientBrush): float32 {.inline, raises: [].} =
  type PfnGetRadiusX = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetRadiusX](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).GetRadiusX)(self)
proc getRadiusY*(self: ptr ID2d1RadialGradientBrush): float32 {.inline, raises: [].} =
  type PfnGetRadiusY = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetRadiusY](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).GetRadiusY)(self)
proc getGradientStopCollection*(self: ptr ID2d1RadialGradientBrush; gradientStopCollection: var ptr ID2d1GradientStopCollection): void {.inline, raises: [].} =
  type PfnGetGradientStopCollection = proc (self: pointer; gradientStopCollection: var ptr ID2d1GradientStopCollection): void {.w32callback.}
  cast[PfnGetGradientStopCollection](cast[ptr ID2d1RadialGradientBrushVtbl](self.vtbl).GetGradientStopCollection)(self, gradientStopCollection)
proc getSize*(self: ptr ID2d1Layer): D2d1Size2f {.inline, raises: [].} =
  type PfnGetSize = proc (self: pointer; implicitRet: var D2d1Size2f): void {.w32callback.}
  cast[PfnGetSize](cast[ptr ID2d1LayerVtbl](self.vtbl).GetSize)(self, result)
proc open*(self: ptr ID2d1Mesh; tessellationSink: var ptr ID2d1TessellationSink): WinResult {.inline, raises: [].} =
  type PfnOpen = proc (self: pointer; tessellationSink: var ptr ID2d1TessellationSink): WinResult {.w32callback.}
  cast[PfnOpen](cast[ptr ID2d1MeshVtbl](self.vtbl).Open)(self, tessellationSink)
proc getBitmap*(self: ptr ID2d1BitmapRenderTarget; bitmap: var ptr ID2d1Bitmap): WinResult {.inline, raises: [].} =
  type PfnGetBitmap = proc (self: pointer; bitmap: var ptr ID2d1Bitmap): WinResult {.w32callback.}
  cast[PfnGetBitmap](cast[ptr ID2d1BitmapRenderTargetVtbl](self.vtbl).GetBitmap)(self, bitmap)
proc getColorSpace*(self: ptr ID2d1ColorContext): D2d1ColorSpace {.inline, raises: [].} =
  type PfnGetColorSpace = proc (self: pointer): D2d1ColorSpace {.w32callback.}
  cast[PfnGetColorSpace](cast[ptr ID2d1ColorContextVtbl](self.vtbl).GetColorSpace)(self)
proc getProfileSize*(self: ptr ID2d1ColorContext): uint32 {.inline, raises: [].} =
  type PfnGetProfileSize = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetProfileSize](cast[ptr ID2d1ColorContextVtbl](self.vtbl).GetProfileSize)(self)
proc getProfile*(self: ptr ID2d1ColorContext; profile: ptr UncheckedArray[uint8]; profileSize: uint32): WinResult {.inline, raises: [].} =
  type PfnGetProfile = proc (self: pointer; profile: ptr UncheckedArray[uint8]; profileSize: uint32): WinResult {.w32callback.}
  cast[PfnGetProfile](cast[ptr ID2d1ColorContextVtbl](self.vtbl).GetProfile)(self, profile, profileSize)
proc getColorContext*(self: ptr ID2d1Bitmap1; colorContext: ptr ptr ID2d1ColorContext): void {.inline, raises: [].} =
  type PfnGetColorContext = proc (self: pointer; colorContext: ptr ptr ID2d1ColorContext): void {.w32callback.}
  cast[PfnGetColorContext](cast[ptr ID2d1Bitmap1Vtbl](self.vtbl).GetColorContext)(self, colorContext)
proc getOptions*(self: ptr ID2d1Bitmap1): D2d1BitmapOptions {.inline, raises: [].} =
  type PfnGetOptions = proc (self: pointer): D2d1BitmapOptions {.w32callback.}
  cast[PfnGetOptions](cast[ptr ID2d1Bitmap1Vtbl](self.vtbl).GetOptions)(self)
# skipped: ID2d1Bitmap1 GetSurface
proc map*(self: ptr ID2d1Bitmap1; options: D2d1MapOptions; mappedRect: var D2d1MappedRect): WinResult {.inline, raises: [].} =
  type PfnMap = proc (self: pointer; options: D2d1MapOptions; mappedRect: var D2d1MappedRect): WinResult {.w32callback.}
  cast[PfnMap](cast[ptr ID2d1Bitmap1Vtbl](self.vtbl).Map)(self, options, mappedRect)
proc unmap*(self: ptr ID2d1Bitmap1): WinResult {.inline, raises: [].} =
  type PfnUnmap = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnUnmap](cast[ptr ID2d1Bitmap1Vtbl](self.vtbl).Unmap)(self)
proc getPropertyCount*(self: ptr ID2d1Properties): uint32 {.inline, raises: [].} =
  type PfnGetPropertyCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetPropertyCount](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetPropertyCount)(self)
proc getPropertyName*(self: ptr ID2d1Properties; index: uint32; name: ptr UncheckedArray[uint16]; nameCount: uint32): WinResult {.inline, raises: [].} =
  type PfnGetPropertyName = proc (self: pointer; index: uint32; name: ptr UncheckedArray[uint16]; nameCount: uint32): WinResult {.w32callback.}
  cast[PfnGetPropertyName](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetPropertyName)(self, index, name, nameCount)
proc getPropertyNameLength*(self: ptr ID2d1Properties; index: uint32): uint32 {.inline, raises: [].} =
  type PfnGetPropertyNameLength = proc (self: pointer; index: uint32): uint32 {.w32callback.}
  cast[PfnGetPropertyNameLength](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetPropertyNameLength)(self, index)
proc getType*(self: ptr ID2d1Properties; index: uint32): D2d1PropertyType {.inline, raises: [].} =
  type PfnGetType = proc (self: pointer; index: uint32): D2d1PropertyType {.w32callback.}
  cast[PfnGetType](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetType)(self, index)
proc getPropertyIndex*(self: ptr ID2d1Properties; name: WtPWSTR): uint32 {.inline, raises: [].} =
  type PfnGetPropertyIndex = proc (self: pointer; name: WtPWSTR): uint32 {.w32callback.}
  cast[PfnGetPropertyIndex](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetPropertyIndex)(self, name)
proc setValueByName*(self: ptr ID2d1Properties; name: WtPWSTR; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.inline, raises: [].} =
  type PfnSetValueByName = proc (self: pointer; name: WtPWSTR; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
  cast[PfnSetValueByName](cast[ptr ID2d1PropertiesVtbl](self.vtbl).SetValueByName)(self, name, `type`, data, dataSize)
proc setValue*(self: ptr ID2d1Properties; index: uint32; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.inline, raises: [].} =
  type PfnSetValue = proc (self: pointer; index: uint32; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
  cast[PfnSetValue](cast[ptr ID2d1PropertiesVtbl](self.vtbl).SetValue)(self, index, `type`, data, dataSize)
proc getValueByName*(self: ptr ID2d1Properties; name: WtPWSTR; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.inline, raises: [].} =
  type PfnGetValueByName = proc (self: pointer; name: WtPWSTR; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
  cast[PfnGetValueByName](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetValueByName)(self, name, `type`, data, dataSize)
proc getValue*(self: ptr ID2d1Properties; index: uint32; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.inline, raises: [].} =
  type PfnGetValue = proc (self: pointer; index: uint32; `type`: D2d1PropertyType; data: ptr UncheckedArray[uint8]; dataSize: uint32): WinResult {.w32callback.}
  cast[PfnGetValue](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetValue)(self, index, `type`, data, dataSize)
proc getValueSize*(self: ptr ID2d1Properties; index: uint32): uint32 {.inline, raises: [].} =
  type PfnGetValueSize = proc (self: pointer; index: uint32): uint32 {.w32callback.}
  cast[PfnGetValueSize](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetValueSize)(self, index)
proc getSubProperties*(self: ptr ID2d1Properties; index: uint32; subProperties: ptr ptr ID2d1Properties): WinResult {.inline, raises: [].} =
  type PfnGetSubProperties = proc (self: pointer; index: uint32; subProperties: ptr ptr ID2d1Properties): WinResult {.w32callback.}
  cast[PfnGetSubProperties](cast[ptr ID2d1PropertiesVtbl](self.vtbl).GetSubProperties)(self, index, subProperties)
proc setInput*(self: ptr ID2d1Effect; index: uint32; input: ptr ID2d1Image; invalidate: WtBOOL): void {.inline, raises: [].} =
  type PfnSetInput = proc (self: pointer; index: uint32; input: ptr ID2d1Image; invalidate: WtBOOL): void {.w32callback.}
  cast[PfnSetInput](cast[ptr ID2d1EffectVtbl](self.vtbl).SetInput)(self, index, input, invalidate)
proc setInputCount*(self: ptr ID2d1Effect; inputCount: uint32): WinResult {.inline, raises: [].} =
  type PfnSetInputCount = proc (self: pointer; inputCount: uint32): WinResult {.w32callback.}
  cast[PfnSetInputCount](cast[ptr ID2d1EffectVtbl](self.vtbl).SetInputCount)(self, inputCount)
proc getInput*(self: ptr ID2d1Effect; index: uint32; input: ptr ptr ID2d1Image): void {.inline, raises: [].} =
  type PfnGetInput = proc (self: pointer; index: uint32; input: ptr ptr ID2d1Image): void {.w32callback.}
  cast[PfnGetInput](cast[ptr ID2d1EffectVtbl](self.vtbl).GetInput)(self, index, input)
proc getInputCount*(self: ptr ID2d1Effect): uint32 {.inline, raises: [].} =
  type PfnGetInputCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetInputCount](cast[ptr ID2d1EffectVtbl](self.vtbl).GetInputCount)(self)
proc getOutput*(self: ptr ID2d1Effect; outputImage: var ptr ID2d1Image): void {.inline, raises: [].} =
  type PfnGetOutput = proc (self: pointer; outputImage: var ptr ID2d1Image): void {.w32callback.}
  cast[PfnGetOutput](cast[ptr ID2d1EffectVtbl](self.vtbl).GetOutput)(self, outputImage)
proc getGradientStops1*(self: ptr ID2d1GradientStopCollection1; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32): void {.inline, raises: [].} =
  type PfnGetGradientStops1 = proc (self: pointer; gradientStops: ptr UncheckedArray[D2d1GradientStop]; gradientStopsCount: uint32): void {.w32callback.}
  cast[PfnGetGradientStops1](cast[ptr ID2d1GradientStopCollection1Vtbl](self.vtbl).GetGradientStops1)(self, gradientStops, gradientStopsCount)
proc getPreInterpolationSpace*(self: ptr ID2d1GradientStopCollection1): D2d1ColorSpace {.inline, raises: [].} =
  type PfnGetPreInterpolationSpace = proc (self: pointer): D2d1ColorSpace {.w32callback.}
  cast[PfnGetPreInterpolationSpace](cast[ptr ID2d1GradientStopCollection1Vtbl](self.vtbl).GetPreInterpolationSpace)(self)
proc getPostInterpolationSpace*(self: ptr ID2d1GradientStopCollection1): D2d1ColorSpace {.inline, raises: [].} =
  type PfnGetPostInterpolationSpace = proc (self: pointer): D2d1ColorSpace {.w32callback.}
  cast[PfnGetPostInterpolationSpace](cast[ptr ID2d1GradientStopCollection1Vtbl](self.vtbl).GetPostInterpolationSpace)(self)
proc getBufferPrecision*(self: ptr ID2d1GradientStopCollection1): D2d1BufferPrecision {.inline, raises: [].} =
  type PfnGetBufferPrecision = proc (self: pointer): D2d1BufferPrecision {.w32callback.}
  cast[PfnGetBufferPrecision](cast[ptr ID2d1GradientStopCollection1Vtbl](self.vtbl).GetBufferPrecision)(self)
proc getColorInterpolationMode*(self: ptr ID2d1GradientStopCollection1): D2d1ColorInterpolationMode {.inline, raises: [].} =
  type PfnGetColorInterpolationMode = proc (self: pointer): D2d1ColorInterpolationMode {.w32callback.}
  cast[PfnGetColorInterpolationMode](cast[ptr ID2d1GradientStopCollection1Vtbl](self.vtbl).GetColorInterpolationMode)(self)
proc setImage*(self: ptr ID2d1ImageBrush; image: ptr ID2d1Image): void {.inline, raises: [].} =
  type PfnSetImage = proc (self: pointer; image: ptr ID2d1Image): void {.w32callback.}
  cast[PfnSetImage](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).SetImage)(self, image)
proc setExtendModeX*(self: ptr ID2d1ImageBrush; extendModeX: D2d1ExtendMode): void {.inline, raises: [].} =
  type PfnSetExtendModeX = proc (self: pointer; extendModeX: D2d1ExtendMode): void {.w32callback.}
  cast[PfnSetExtendModeX](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).SetExtendModeX)(self, extendModeX)
proc setExtendModeY*(self: ptr ID2d1ImageBrush; extendModeY: D2d1ExtendMode): void {.inline, raises: [].} =
  type PfnSetExtendModeY = proc (self: pointer; extendModeY: D2d1ExtendMode): void {.w32callback.}
  cast[PfnSetExtendModeY](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).SetExtendModeY)(self, extendModeY)
proc setInterpolationMode*(self: ptr ID2d1ImageBrush; interpolationMode: D2d1InterpolationMode): void {.inline, raises: [].} =
  type PfnSetInterpolationMode = proc (self: pointer; interpolationMode: D2d1InterpolationMode): void {.w32callback.}
  cast[PfnSetInterpolationMode](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).SetInterpolationMode)(self, interpolationMode)
proc setSourceRectangle*(self: ptr ID2d1ImageBrush; sourceRectangle: D2d1Rectf): void {.inline, raises: [].} =
  type PfnSetSourceRectangle = proc (self: pointer; sourceRectangle: D2d1Rectf): void {.w32callback.}
  cast[PfnSetSourceRectangle](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).SetSourceRectangle)(self, sourceRectangle)
proc getImage*(self: ptr ID2d1ImageBrush; image: ptr ptr ID2d1Image): void {.inline, raises: [].} =
  type PfnGetImage = proc (self: pointer; image: ptr ptr ID2d1Image): void {.w32callback.}
  cast[PfnGetImage](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).GetImage)(self, image)
proc getExtendModeX*(self: ptr ID2d1ImageBrush): D2d1ExtendMode {.inline, raises: [].} =
  type PfnGetExtendModeX = proc (self: pointer): D2d1ExtendMode {.w32callback.}
  cast[PfnGetExtendModeX](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).GetExtendModeX)(self)
proc getExtendModeY*(self: ptr ID2d1ImageBrush): D2d1ExtendMode {.inline, raises: [].} =
  type PfnGetExtendModeY = proc (self: pointer): D2d1ExtendMode {.w32callback.}
  cast[PfnGetExtendModeY](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).GetExtendModeY)(self)
proc getInterpolationMode*(self: ptr ID2d1ImageBrush): D2d1InterpolationMode {.inline, raises: [].} =
  type PfnGetInterpolationMode = proc (self: pointer): D2d1InterpolationMode {.w32callback.}
  cast[PfnGetInterpolationMode](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).GetInterpolationMode)(self)
proc getSourceRectangle*(self: ptr ID2d1ImageBrush; sourceRectangle: var D2d1Rectf): void {.inline, raises: [].} =
  type PfnGetSourceRectangle = proc (self: pointer; sourceRectangle: var D2d1Rectf): void {.w32callback.}
  cast[PfnGetSourceRectangle](cast[ptr ID2d1ImageBrushVtbl](self.vtbl).GetSourceRectangle)(self, sourceRectangle)
proc setInterpolationMode1*(self: ptr ID2d1BitmapBrush1; interpolationMode: D2d1InterpolationMode): void {.inline, raises: [].} =
  type PfnSetInterpolationMode1 = proc (self: pointer; interpolationMode: D2d1InterpolationMode): void {.w32callback.}
  cast[PfnSetInterpolationMode1](cast[ptr ID2d1BitmapBrush1Vtbl](self.vtbl).SetInterpolationMode1)(self, interpolationMode)
proc getInterpolationMode1*(self: ptr ID2d1BitmapBrush1): D2d1InterpolationMode {.inline, raises: [].} =
  type PfnGetInterpolationMode1 = proc (self: pointer): D2d1InterpolationMode {.w32callback.}
  cast[PfnGetInterpolationMode1](cast[ptr ID2d1BitmapBrush1Vtbl](self.vtbl).GetInterpolationMode1)(self)
proc processRecord*(self: ptr ID2d1GdiMetafileSink; recordType: uint32; recordData: pointer; recordDataSize: uint32): WinResult {.inline, raises: [].} =
  type PfnProcessRecord = proc (self: pointer; recordType: uint32; recordData: pointer; recordDataSize: uint32): WinResult {.w32callback.}
  cast[PfnProcessRecord](cast[ptr ID2d1GdiMetafileSinkVtbl](self.vtbl).ProcessRecord)(self, recordType, recordData, recordDataSize)
proc stream*(self: ptr ID2d1GdiMetafile; sink: ptr ID2d1GdiMetafileSink): WinResult {.inline, raises: [].} =
  type PfnStream = proc (self: pointer; sink: ptr ID2d1GdiMetafileSink): WinResult {.w32callback.}
  cast[PfnStream](cast[ptr ID2d1GdiMetafileVtbl](self.vtbl).Stream)(self, sink)
proc getBounds*(self: ptr ID2d1GdiMetafile; bounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetBounds = proc (self: pointer; bounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetBounds](cast[ptr ID2d1GdiMetafileVtbl](self.vtbl).GetBounds)(self, bounds)
proc beginDraw*(self: ptr ID2d1CommandSink): WinResult {.inline, raises: [].} =
  type PfnBeginDraw = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnBeginDraw](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).BeginDraw)(self)
proc endDraw*(self: ptr ID2d1CommandSink): WinResult {.inline, raises: [].} =
  type PfnEndDraw = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnEndDraw](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).EndDraw)(self)
proc setAntialiasMode*(self: ptr ID2d1CommandSink; antialiasMode: D2d1AntialiasMode): WinResult {.inline, raises: [].} =
  type PfnSetAntialiasMode = proc (self: pointer; antialiasMode: D2d1AntialiasMode): WinResult {.w32callback.}
  cast[PfnSetAntialiasMode](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).SetAntialiasMode)(self, antialiasMode)
proc setTags*(self: ptr ID2d1CommandSink; tag1: uint64; tag2: uint64): WinResult {.inline, raises: [].} =
  type PfnSetTags = proc (self: pointer; tag1: uint64; tag2: uint64): WinResult {.w32callback.}
  cast[PfnSetTags](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).SetTags)(self, tag1, tag2)
proc setTextAntialiasMode*(self: ptr ID2d1CommandSink; textAntialiasMode: D2d1TextAntialiasMode): WinResult {.inline, raises: [].} =
  type PfnSetTextAntialiasMode = proc (self: pointer; textAntialiasMode: D2d1TextAntialiasMode): WinResult {.w32callback.}
  cast[PfnSetTextAntialiasMode](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).SetTextAntialiasMode)(self, textAntialiasMode)
proc setTextRenderingParams*(self: ptr ID2d1CommandSink; textRenderingParams: ptr IDWriteRenderingParams): WinResult {.inline, raises: [].} =
  type PfnSetTextRenderingParams = proc (self: pointer; textRenderingParams: ptr IDWriteRenderingParams): WinResult {.w32callback.}
  cast[PfnSetTextRenderingParams](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).SetTextRenderingParams)(self, textRenderingParams)
proc setTransform*(self: ptr ID2d1CommandSink; transform: D2d1Affine2f): WinResult {.inline, raises: [].} =
  type PfnSetTransform = proc (self: pointer; transform: D2d1Affine2f): WinResult {.w32callback.}
  cast[PfnSetTransform](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).SetTransform)(self, transform)
proc setPrimitiveBlend*(self: ptr ID2d1CommandSink; primitiveBlend: D2d1PrimitiveBlend): WinResult {.inline, raises: [].} =
  type PfnSetPrimitiveBlend = proc (self: pointer; primitiveBlend: D2d1PrimitiveBlend): WinResult {.w32callback.}
  cast[PfnSetPrimitiveBlend](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).SetPrimitiveBlend)(self, primitiveBlend)
proc setUnitMode*(self: ptr ID2d1CommandSink; unitMode: D2d1UnitMode): WinResult {.inline, raises: [].} =
  type PfnSetUnitMode = proc (self: pointer; unitMode: D2d1UnitMode): WinResult {.w32callback.}
  cast[PfnSetUnitMode](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).SetUnitMode)(self, unitMode)
proc clear*(self: ptr ID2d1CommandSink; color: ptr D2d1Rgbaf): WinResult {.inline, raises: [].} =
  type PfnClear = proc (self: pointer; color: ptr D2d1Rgbaf): WinResult {.w32callback.}
  cast[PfnClear](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).Clear)(self, color)
proc drawGlyphRun*(self: ptr ID2d1CommandSink; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; glyphRunDescription: ptr DwriteGlyphRunDescription; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): WinResult {.inline, raises: [].} =
  type PfnDrawGlyphRun = proc (self: pointer; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; glyphRunDescription: ptr DwriteGlyphRunDescription; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): WinResult {.w32callback.}
  cast[PfnDrawGlyphRun](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).DrawGlyphRun)(self, baselineOrigin, glyphRun, glyphRunDescription, foregroundBrush, measuringMode)
proc drawLine*(self: ptr ID2d1CommandSink; point0: D2d1Vec2f; point1: D2d1Vec2f; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.inline, raises: [].} =
  type PfnDrawLine = proc (self: pointer; point0: D2d1Vec2f; point1: D2d1Vec2f; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.w32callback.}
  cast[PfnDrawLine](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).DrawLine)(self, point0, point1, brush, strokeWidth, strokeStyle)
proc drawGeometry*(self: ptr ID2d1CommandSink; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.inline, raises: [].} =
  type PfnDrawGeometry = proc (self: pointer; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.w32callback.}
  cast[PfnDrawGeometry](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).DrawGeometry)(self, geometry, brush, strokeWidth, strokeStyle)
proc drawRectangle*(self: ptr ID2d1CommandSink; rect: D2d1Rectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.inline, raises: [].} =
  type PfnDrawRectangle = proc (self: pointer; rect: D2d1Rectf; brush: ptr ID2d1Brush; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle): WinResult {.w32callback.}
  cast[PfnDrawRectangle](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).DrawRectangle)(self, rect, brush, strokeWidth, strokeStyle)
proc drawBitmap*(self: ptr ID2d1CommandSink; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1InterpolationMode; sourceRectangle: ptr D2d1Rectf; perspectiveTransform: ptr D2d1Mat4f): WinResult {.inline, raises: [].} =
  type PfnDrawBitmap = proc (self: pointer; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1InterpolationMode; sourceRectangle: ptr D2d1Rectf; perspectiveTransform: ptr D2d1Mat4f): WinResult {.w32callback.}
  cast[PfnDrawBitmap](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).DrawBitmap)(self, bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle, perspectiveTransform)
proc drawImage*(self: ptr ID2d1CommandSink; image: ptr ID2d1Image; targetOffset: ptr D2d1Vec2f; imageRectangle: ptr D2d1Rectf; interpolationMode: D2d1InterpolationMode; compositeMode: D2d1CompositeMode): WinResult {.inline, raises: [].} =
  type PfnDrawImage = proc (self: pointer; image: ptr ID2d1Image; targetOffset: ptr D2d1Vec2f; imageRectangle: ptr D2d1Rectf; interpolationMode: D2d1InterpolationMode; compositeMode: D2d1CompositeMode): WinResult {.w32callback.}
  cast[PfnDrawImage](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).DrawImage)(self, image, targetOffset, imageRectangle, interpolationMode, compositeMode)
proc drawGdiMetafile*(self: ptr ID2d1CommandSink; gdiMetafile: ptr ID2d1GdiMetafile; targetOffset: ptr D2d1Vec2f): WinResult {.inline, raises: [].} =
  type PfnDrawGdiMetafile = proc (self: pointer; gdiMetafile: ptr ID2d1GdiMetafile; targetOffset: ptr D2d1Vec2f): WinResult {.w32callback.}
  cast[PfnDrawGdiMetafile](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).DrawGdiMetafile)(self, gdiMetafile, targetOffset)
proc fillMesh*(self: ptr ID2d1CommandSink; mesh: ptr ID2d1Mesh; brush: ptr ID2d1Brush): WinResult {.inline, raises: [].} =
  type PfnFillMesh = proc (self: pointer; mesh: ptr ID2d1Mesh; brush: ptr ID2d1Brush): WinResult {.w32callback.}
  cast[PfnFillMesh](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).FillMesh)(self, mesh, brush)
proc fillOpacityMask*(self: ptr ID2d1CommandSink; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnFillOpacityMask = proc (self: pointer; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): WinResult {.w32callback.}
  cast[PfnFillOpacityMask](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).FillOpacityMask)(self, opacityMask, brush, destinationRectangle, sourceRectangle)
proc fillGeometry*(self: ptr ID2d1CommandSink; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; opacityBrush: ptr ID2d1Brush): WinResult {.inline, raises: [].} =
  type PfnFillGeometry = proc (self: pointer; geometry: ptr ID2d1Geometry; brush: ptr ID2d1Brush; opacityBrush: ptr ID2d1Brush): WinResult {.w32callback.}
  cast[PfnFillGeometry](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).FillGeometry)(self, geometry, brush, opacityBrush)
proc fillRectangle*(self: ptr ID2d1CommandSink; rect: D2d1Rectf; brush: ptr ID2d1Brush): WinResult {.inline, raises: [].} =
  type PfnFillRectangle = proc (self: pointer; rect: D2d1Rectf; brush: ptr ID2d1Brush): WinResult {.w32callback.}
  cast[PfnFillRectangle](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).FillRectangle)(self, rect, brush)
proc pushAxisAlignedClip*(self: ptr ID2d1CommandSink; clipRect: D2d1Rectf; antialiasMode: D2d1AntialiasMode): WinResult {.inline, raises: [].} =
  type PfnPushAxisAlignedClip = proc (self: pointer; clipRect: D2d1Rectf; antialiasMode: D2d1AntialiasMode): WinResult {.w32callback.}
  cast[PfnPushAxisAlignedClip](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).PushAxisAlignedClip)(self, clipRect, antialiasMode)
proc pushLayer*(self: ptr ID2d1CommandSink; layerParameters1: D2d1LayerParameters1; layer: ptr ID2d1Layer): WinResult {.inline, raises: [].} =
  type PfnPushLayer = proc (self: pointer; layerParameters1: D2d1LayerParameters1; layer: ptr ID2d1Layer): WinResult {.w32callback.}
  cast[PfnPushLayer](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).PushLayer)(self, layerParameters1, layer)
proc popAxisAlignedClip*(self: ptr ID2d1CommandSink): WinResult {.inline, raises: [].} =
  type PfnPopAxisAlignedClip = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnPopAxisAlignedClip](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).PopAxisAlignedClip)(self)
proc popLayer*(self: ptr ID2d1CommandSink): WinResult {.inline, raises: [].} =
  type PfnPopLayer = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnPopLayer](cast[ptr ID2d1CommandSinkVtbl](self.vtbl).PopLayer)(self)
proc stream*(self: ptr ID2d1CommandList; sink: ptr ID2d1CommandSink): WinResult {.inline, raises: [].} =
  type PfnStream = proc (self: pointer; sink: ptr ID2d1CommandSink): WinResult {.w32callback.}
  cast[PfnStream](cast[ptr ID2d1CommandListVtbl](self.vtbl).Stream)(self, sink)
proc close*(self: ptr ID2d1CommandList): WinResult {.inline, raises: [].} =
  type PfnClose = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnClose](cast[ptr ID2d1CommandListVtbl](self.vtbl).Close)(self)
proc addPage*(self: ptr ID2d1PrintControl; commandList: ptr ID2d1CommandList; pageSize: D2d1Size2f; pagePrintTicketStream: ptr IStream; tag1: ptr uint64; tag2: ptr uint64): WinResult {.inline, raises: [].} =
  type PfnAddPage = proc (self: pointer; commandList: ptr ID2d1CommandList; pageSize: D2d1Size2f; pagePrintTicketStream: ptr IStream; tag1: ptr uint64; tag2: ptr uint64): WinResult {.w32callback.}
  cast[PfnAddPage](cast[ptr ID2d1PrintControlVtbl](self.vtbl).AddPage)(self, commandList, pageSize, pagePrintTicketStream, tag1, tag2)
proc close*(self: ptr ID2d1PrintControl): WinResult {.inline, raises: [].} =
  type PfnClose = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnClose](cast[ptr ID2d1PrintControlVtbl](self.vtbl).Close)(self)
proc createDeviceContext*(self: ptr ID2d1Device; options: D2d1DeviceContextOptions; deviceContext: var ptr ID2d1DeviceContext): WinResult {.inline, raises: [].} =
  type PfnCreateDeviceContext = proc (self: pointer; options: D2d1DeviceContextOptions; deviceContext: var ptr ID2d1DeviceContext): WinResult {.w32callback.}
  cast[PfnCreateDeviceContext](cast[ptr ID2d1DeviceVtbl](self.vtbl).CreateDeviceContext)(self, options, deviceContext)
# skipped: ID2d1Device CreatePrintControl
proc setMaximumTextureMemory*(self: ptr ID2d1Device; maximumInBytes: uint64): void {.inline, raises: [].} =
  type PfnSetMaximumTextureMemory = proc (self: pointer; maximumInBytes: uint64): void {.w32callback.}
  cast[PfnSetMaximumTextureMemory](cast[ptr ID2d1DeviceVtbl](self.vtbl).SetMaximumTextureMemory)(self, maximumInBytes)
proc getMaximumTextureMemory*(self: ptr ID2d1Device): uint64 {.inline, raises: [].} =
  type PfnGetMaximumTextureMemory = proc (self: pointer): uint64 {.w32callback.}
  cast[PfnGetMaximumTextureMemory](cast[ptr ID2d1DeviceVtbl](self.vtbl).GetMaximumTextureMemory)(self)
proc clearResources*(self: ptr ID2d1Device; millisecondsSinceUse: uint32): void {.inline, raises: [].} =
  type PfnClearResources = proc (self: pointer; millisecondsSinceUse: uint32): void {.w32callback.}
  cast[PfnClearResources](cast[ptr ID2d1DeviceVtbl](self.vtbl).ClearResources)(self, millisecondsSinceUse)
proc createBitmap*(self: ptr ID2d1DeviceContext; size: D2d1Size2u; sourceData: pointer; pitch: uint32; bitmapProperties: D2d1BitmapProperties1; bitmap: var ptr ID2d1Bitmap1): WinResult {.inline, raises: [].} =
  type PfnCreateBitmap = proc (self: pointer; size: D2d1Size2u; sourceData: pointer; pitch: uint32; bitmapProperties: D2d1BitmapProperties1; bitmap: var ptr ID2d1Bitmap1): WinResult {.w32callback.}
  cast[PfnCreateBitmap](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateBitmap)(self, size, sourceData, pitch, bitmapProperties, bitmap)
proc createBitmapFromWicBitmap*(self: ptr ID2d1DeviceContext; wicBitmapSource: ptr IWicBitmapSource; bitmapProperties: ptr D2d1BitmapProperties1; bitmap: var ptr ID2d1Bitmap1): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFromWicBitmap = proc (self: pointer; wicBitmapSource: ptr IWicBitmapSource; bitmapProperties: ptr D2d1BitmapProperties1; bitmap: var ptr ID2d1Bitmap1): WinResult {.w32callback.}
  cast[PfnCreateBitmapFromWicBitmap](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateBitmapFromWicBitmap)(self, wicBitmapSource, bitmapProperties, bitmap)
proc createColorContext*(self: ptr ID2d1DeviceContext; space: D2d1ColorSpace; profile: ptr UncheckedArray[uint8]; profileSize: uint32; colorContext: var ptr ID2d1ColorContext): WinResult {.inline, raises: [].} =
  type PfnCreateColorContext = proc (self: pointer; space: D2d1ColorSpace; profile: ptr UncheckedArray[uint8]; profileSize: uint32; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
  cast[PfnCreateColorContext](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateColorContext)(self, space, profile, profileSize, colorContext)
proc createColorContextFromFilename*(self: ptr ID2d1DeviceContext; filename: WtPWSTR; colorContext: var ptr ID2d1ColorContext): WinResult {.inline, raises: [].} =
  type PfnCreateColorContextFromFilename = proc (self: pointer; filename: WtPWSTR; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
  cast[PfnCreateColorContextFromFilename](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateColorContextFromFilename)(self, filename, colorContext)
proc createColorContextFromWicColorContext*(self: ptr ID2d1DeviceContext; wicColorContext: ptr IWicColorContext; colorContext: var ptr ID2d1ColorContext): WinResult {.inline, raises: [].} =
  type PfnCreateColorContextFromWicColorContext = proc (self: pointer; wicColorContext: ptr IWicColorContext; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
  cast[PfnCreateColorContextFromWicColorContext](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateColorContextFromWicColorContext)(self, wicColorContext, colorContext)
# skipped: ID2d1DeviceContext CreateBitmapFromDxgiSurface
proc createEffect*(self: ptr ID2d1DeviceContext; effectId: WinGuid; effect: var ptr ID2d1Effect): WinResult {.inline, raises: [].} =
  type PfnCreateEffect = proc (self: pointer; effectId: ptr WinGuid; effect: var ptr ID2d1Effect): WinResult {.w32callback.}
  cast[PfnCreateEffect](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateEffect)(self, effectId.unsafeAddr, effect)
proc createGradientStopCollection*(self: ptr ID2d1DeviceContext; straightAlphaGradientStops: ptr UncheckedArray[D2d1GradientStop]; straightAlphaGradientStopsCount: uint32; preInterpolationSpace: D2d1ColorSpace; postInterpolationSpace: D2d1ColorSpace; bufferPrecision: D2d1BufferPrecision; extendMode: D2d1ExtendMode; colorInterpolationMode: D2d1ColorInterpolationMode; gradientStopCollection1: var ptr ID2d1GradientStopCollection1): WinResult {.inline, raises: [].} =
  type PfnCreateGradientStopCollection = proc (self: pointer; straightAlphaGradientStops: ptr UncheckedArray[D2d1GradientStop]; straightAlphaGradientStopsCount: uint32; preInterpolationSpace: D2d1ColorSpace; postInterpolationSpace: D2d1ColorSpace; bufferPrecision: D2d1BufferPrecision; extendMode: D2d1ExtendMode; colorInterpolationMode: D2d1ColorInterpolationMode; gradientStopCollection1: var ptr ID2d1GradientStopCollection1): WinResult {.w32callback.}
  cast[PfnCreateGradientStopCollection](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateGradientStopCollection)(self, straightAlphaGradientStops, straightAlphaGradientStopsCount, preInterpolationSpace, postInterpolationSpace, bufferPrecision, extendMode, colorInterpolationMode, gradientStopCollection1)
proc createImageBrush*(self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; imageBrushProperties: D2d1ImageBrushProperties; brushProperties: ptr D2d1BrushProperties; imageBrush: var ptr ID2d1ImageBrush): WinResult {.inline, raises: [].} =
  type PfnCreateImageBrush = proc (self: pointer; image: ptr ID2d1Image; imageBrushProperties: D2d1ImageBrushProperties; brushProperties: ptr D2d1BrushProperties; imageBrush: var ptr ID2d1ImageBrush): WinResult {.w32callback.}
  cast[PfnCreateImageBrush](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateImageBrush)(self, image, imageBrushProperties, brushProperties, imageBrush)
proc createBitmapBrush*(self: ptr ID2d1DeviceContext; bitmap: ptr ID2d1Bitmap; bitmapBrushProperties: ptr D2d1BitmapBrushProperties1; brushProperties: ptr D2d1BrushProperties; bitmapBrush: var ptr ID2d1BitmapBrush1): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapBrush = proc (self: pointer; bitmap: ptr ID2d1Bitmap; bitmapBrushProperties: ptr D2d1BitmapBrushProperties1; brushProperties: ptr D2d1BrushProperties; bitmapBrush: var ptr ID2d1BitmapBrush1): WinResult {.w32callback.}
  cast[PfnCreateBitmapBrush](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateBitmapBrush)(self, bitmap, bitmapBrushProperties, brushProperties, bitmapBrush)
proc createCommandList*(self: ptr ID2d1DeviceContext; commandList: var ptr ID2d1CommandList): WinResult {.inline, raises: [].} =
  type PfnCreateCommandList = proc (self: pointer; commandList: var ptr ID2d1CommandList): WinResult {.w32callback.}
  cast[PfnCreateCommandList](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).CreateCommandList)(self, commandList)
proc isDxgiFormatSupported*(self: ptr ID2d1DeviceContext; format: DxgiFormat): WtBOOL {.inline, raises: [].} =
  type PfnIsDxgiFormatSupported = proc (self: pointer; format: DxgiFormat): WtBOOL {.w32callback.}
  cast[PfnIsDxgiFormatSupported](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).IsDxgiFormatSupported)(self, format)
proc isBufferPrecisionSupported*(self: ptr ID2d1DeviceContext; bufferPrecision: D2d1BufferPrecision): WtBOOL {.inline, raises: [].} =
  type PfnIsBufferPrecisionSupported = proc (self: pointer; bufferPrecision: D2d1BufferPrecision): WtBOOL {.w32callback.}
  cast[PfnIsBufferPrecisionSupported](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).IsBufferPrecisionSupported)(self, bufferPrecision)
proc getImageLocalBounds*(self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; localBounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetImageLocalBounds = proc (self: pointer; image: ptr ID2d1Image; localBounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetImageLocalBounds](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetImageLocalBounds)(self, image, localBounds)
proc getImageWorldBounds*(self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; worldBounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetImageWorldBounds = proc (self: pointer; image: ptr ID2d1Image; worldBounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetImageWorldBounds](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetImageWorldBounds)(self, image, worldBounds)
proc getGlyphRunWorldBounds*(self: ptr ID2d1DeviceContext; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; measuringMode: DwriteMeasuringMode; bounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetGlyphRunWorldBounds = proc (self: pointer; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; measuringMode: DwriteMeasuringMode; bounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetGlyphRunWorldBounds](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetGlyphRunWorldBounds)(self, baselineOrigin, glyphRun, measuringMode, bounds)
proc getDevice*(self: ptr ID2d1DeviceContext; device: var ptr ID2d1Device): void {.inline, raises: [].} =
  type PfnGetDevice = proc (self: pointer; device: var ptr ID2d1Device): void {.w32callback.}
  cast[PfnGetDevice](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetDevice)(self, device)
proc setTarget*(self: ptr ID2d1DeviceContext; image: ptr ID2d1Image): void {.inline, raises: [].} =
  type PfnSetTarget = proc (self: pointer; image: ptr ID2d1Image): void {.w32callback.}
  cast[PfnSetTarget](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).SetTarget)(self, image)
proc getTarget*(self: ptr ID2d1DeviceContext; image: ptr ptr ID2d1Image): void {.inline, raises: [].} =
  type PfnGetTarget = proc (self: pointer; image: ptr ptr ID2d1Image): void {.w32callback.}
  cast[PfnGetTarget](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetTarget)(self, image)
proc setRenderingControls*(self: ptr ID2d1DeviceContext; renderingControls: D2d1RenderingControls): void {.inline, raises: [].} =
  type PfnSetRenderingControls = proc (self: pointer; renderingControls: D2d1RenderingControls): void {.w32callback.}
  cast[PfnSetRenderingControls](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).SetRenderingControls)(self, renderingControls)
proc getRenderingControls*(self: ptr ID2d1DeviceContext; renderingControls: var D2d1RenderingControls): void {.inline, raises: [].} =
  type PfnGetRenderingControls = proc (self: pointer; renderingControls: var D2d1RenderingControls): void {.w32callback.}
  cast[PfnGetRenderingControls](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetRenderingControls)(self, renderingControls)
proc setPrimitiveBlend*(self: ptr ID2d1DeviceContext; primitiveBlend: D2d1PrimitiveBlend): void {.inline, raises: [].} =
  type PfnSetPrimitiveBlend = proc (self: pointer; primitiveBlend: D2d1PrimitiveBlend): void {.w32callback.}
  cast[PfnSetPrimitiveBlend](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).SetPrimitiveBlend)(self, primitiveBlend)
proc getPrimitiveBlend*(self: ptr ID2d1DeviceContext): D2d1PrimitiveBlend {.inline, raises: [].} =
  type PfnGetPrimitiveBlend = proc (self: pointer): D2d1PrimitiveBlend {.w32callback.}
  cast[PfnGetPrimitiveBlend](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetPrimitiveBlend)(self)
proc setUnitMode*(self: ptr ID2d1DeviceContext; unitMode: D2d1UnitMode): void {.inline, raises: [].} =
  type PfnSetUnitMode = proc (self: pointer; unitMode: D2d1UnitMode): void {.w32callback.}
  cast[PfnSetUnitMode](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).SetUnitMode)(self, unitMode)
proc getUnitMode*(self: ptr ID2d1DeviceContext): D2d1UnitMode {.inline, raises: [].} =
  type PfnGetUnitMode = proc (self: pointer): D2d1UnitMode {.w32callback.}
  cast[PfnGetUnitMode](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetUnitMode)(self)
proc drawGlyphRun*(self: ptr ID2d1DeviceContext; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; glyphRunDescription: ptr DwriteGlyphRunDescription; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): void {.inline, raises: [].} =
  type PfnDrawGlyphRun = proc (self: pointer; baselineOrigin: D2d1Vec2f; glyphRun: DwriteGlyphRun; glyphRunDescription: ptr DwriteGlyphRunDescription; foregroundBrush: ptr ID2d1Brush; measuringMode: DwriteMeasuringMode): void {.w32callback.}
  cast[PfnDrawGlyphRun](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).DrawGlyphRun)(self, baselineOrigin, glyphRun, glyphRunDescription, foregroundBrush, measuringMode)
proc drawImage*(self: ptr ID2d1DeviceContext; image: ptr ID2d1Image; targetOffset: ptr D2d1Vec2f; imageRectangle: ptr D2d1Rectf; interpolationMode: D2d1InterpolationMode; compositeMode: D2d1CompositeMode): void {.inline, raises: [].} =
  type PfnDrawImage = proc (self: pointer; image: ptr ID2d1Image; targetOffset: ptr D2d1Vec2f; imageRectangle: ptr D2d1Rectf; interpolationMode: D2d1InterpolationMode; compositeMode: D2d1CompositeMode): void {.w32callback.}
  cast[PfnDrawImage](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).DrawImage)(self, image, targetOffset, imageRectangle, interpolationMode, compositeMode)
proc drawGdiMetafile*(self: ptr ID2d1DeviceContext; gdiMetafile: ptr ID2d1GdiMetafile; targetOffset: ptr D2d1Vec2f): void {.inline, raises: [].} =
  type PfnDrawGdiMetafile = proc (self: pointer; gdiMetafile: ptr ID2d1GdiMetafile; targetOffset: ptr D2d1Vec2f): void {.w32callback.}
  cast[PfnDrawGdiMetafile](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).DrawGdiMetafile)(self, gdiMetafile, targetOffset)
proc drawBitmap*(self: ptr ID2d1DeviceContext; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1InterpolationMode; sourceRectangle: ptr D2d1Rectf; perspectiveTransform: ptr D2d1Mat4f): void {.inline, raises: [].} =
  type PfnDrawBitmap = proc (self: pointer; bitmap: ptr ID2d1Bitmap; destinationRectangle: ptr D2d1Rectf; opacity: float32; interpolationMode: D2d1InterpolationMode; sourceRectangle: ptr D2d1Rectf; perspectiveTransform: ptr D2d1Mat4f): void {.w32callback.}
  cast[PfnDrawBitmap](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).DrawBitmap)(self, bitmap, destinationRectangle, opacity, interpolationMode, sourceRectangle, perspectiveTransform)
proc pushLayer*(self: ptr ID2d1DeviceContext; layerParameters: D2d1LayerParameters1; layer: ptr ID2d1Layer): void {.inline, raises: [].} =
  type PfnPushLayer = proc (self: pointer; layerParameters: D2d1LayerParameters1; layer: ptr ID2d1Layer): void {.w32callback.}
  cast[PfnPushLayer](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).PushLayer)(self, layerParameters, layer)
proc invalidateEffectInputRectangle*(self: ptr ID2d1DeviceContext; effect: ptr ID2d1Effect; input: uint32; inputRectangle: D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnInvalidateEffectInputRectangle = proc (self: pointer; effect: ptr ID2d1Effect; input: uint32; inputRectangle: D2d1Rectf): WinResult {.w32callback.}
  cast[PfnInvalidateEffectInputRectangle](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).InvalidateEffectInputRectangle)(self, effect, input, inputRectangle)
proc getEffectInvalidRectangleCount*(self: ptr ID2d1DeviceContext; effect: ptr ID2d1Effect; rectangleCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetEffectInvalidRectangleCount = proc (self: pointer; effect: ptr ID2d1Effect; rectangleCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetEffectInvalidRectangleCount](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetEffectInvalidRectangleCount)(self, effect, rectangleCount)
proc getEffectInvalidRectangles*(self: ptr ID2d1DeviceContext; effect: ptr ID2d1Effect; rectangles: ptr UncheckedArray[D2d1Rectf]; rectanglesCount: uint32): WinResult {.inline, raises: [].} =
  type PfnGetEffectInvalidRectangles = proc (self: pointer; effect: ptr ID2d1Effect; rectangles: ptr UncheckedArray[D2d1Rectf]; rectanglesCount: uint32): WinResult {.w32callback.}
  cast[PfnGetEffectInvalidRectangles](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetEffectInvalidRectangles)(self, effect, rectangles, rectanglesCount)
proc getEffectRequiredInputRectangles*(self: ptr ID2d1DeviceContext; renderEffect: ptr ID2d1Effect; renderImageRectangle: ptr D2d1Rectf; inputDescriptions: ptr UncheckedArray[D2d1EffectInputDescription]; requiredInputRects: ptr UncheckedArray[D2d1Rectf]; inputCount: uint32): WinResult {.inline, raises: [].} =
  type PfnGetEffectRequiredInputRectangles = proc (self: pointer; renderEffect: ptr ID2d1Effect; renderImageRectangle: ptr D2d1Rectf; inputDescriptions: ptr UncheckedArray[D2d1EffectInputDescription]; requiredInputRects: ptr UncheckedArray[D2d1Rectf]; inputCount: uint32): WinResult {.w32callback.}
  cast[PfnGetEffectRequiredInputRectangles](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).GetEffectRequiredInputRectangles)(self, renderEffect, renderImageRectangle, inputDescriptions, requiredInputRects, inputCount)
proc fillOpacityMask*(self: ptr ID2d1DeviceContext; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.inline, raises: [].} =
  type PfnFillOpacityMask = proc (self: pointer; opacityMask: ptr ID2d1Bitmap; brush: ptr ID2d1Brush; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
  cast[PfnFillOpacityMask](cast[ptr ID2d1DeviceContextVtbl](self.vtbl).FillOpacityMask)(self, opacityMask, brush, destinationRectangle, sourceRectangle)
proc setInputDescription*(self: ptr ID2d1RenderInfo; inputIndex: uint32; inputDescription: D2d1InputDescription): WinResult {.inline, raises: [].} =
  type PfnSetInputDescription = proc (self: pointer; inputIndex: uint32; inputDescription: D2d1InputDescription): WinResult {.w32callback.}
  cast[PfnSetInputDescription](cast[ptr ID2d1RenderInfoVtbl](self.vtbl).SetInputDescription)(self, inputIndex, inputDescription)
proc setOutputBuffer*(self: ptr ID2d1RenderInfo; bufferPrecision: D2d1BufferPrecision; channelDepth: D2d1ChannelDepth): WinResult {.inline, raises: [].} =
  type PfnSetOutputBuffer = proc (self: pointer; bufferPrecision: D2d1BufferPrecision; channelDepth: D2d1ChannelDepth): WinResult {.w32callback.}
  cast[PfnSetOutputBuffer](cast[ptr ID2d1RenderInfoVtbl](self.vtbl).SetOutputBuffer)(self, bufferPrecision, channelDepth)
proc setCached*(self: ptr ID2d1RenderInfo; isCached: WtBOOL): void {.inline, raises: [].} =
  type PfnSetCached = proc (self: pointer; isCached: WtBOOL): void {.w32callback.}
  cast[PfnSetCached](cast[ptr ID2d1RenderInfoVtbl](self.vtbl).SetCached)(self, isCached)
proc setInstructionCountHint*(self: ptr ID2d1RenderInfo; instructionCount: uint32): void {.inline, raises: [].} =
  type PfnSetInstructionCountHint = proc (self: pointer; instructionCount: uint32): void {.w32callback.}
  cast[PfnSetInstructionCountHint](cast[ptr ID2d1RenderInfoVtbl](self.vtbl).SetInstructionCountHint)(self, instructionCount)
proc update*(self: ptr ID2d1ResourceTexture; minimumExtents: ptr UncheckedArray[uint32]; maximimumExtents: ptr UncheckedArray[uint32]; strides: ptr uint32; dimensions: uint32; data: ptr UncheckedArray[uint8]; dataCount: uint32): WinResult {.inline, raises: [].} =
  type PfnUpdate = proc (self: pointer; minimumExtents: ptr UncheckedArray[uint32]; maximimumExtents: ptr UncheckedArray[uint32]; strides: ptr uint32; dimensions: uint32; data: ptr UncheckedArray[uint8]; dataCount: uint32): WinResult {.w32callback.}
  cast[PfnUpdate](cast[ptr ID2d1ResourceTextureVtbl](self.vtbl).Update)(self, minimumExtents, maximimumExtents, strides, dimensions, data, dataCount)
proc map*(self: ptr ID2d1VertexBuffer; data: var ptr uint8; bufferSize: uint32): WinResult {.inline, raises: [].} =
  type PfnMap = proc (self: pointer; data: var ptr uint8; bufferSize: uint32): WinResult {.w32callback.}
  cast[PfnMap](cast[ptr ID2d1VertexBufferVtbl](self.vtbl).Map)(self, data, bufferSize)
proc unmap*(self: ptr ID2d1VertexBuffer): WinResult {.inline, raises: [].} =
  type PfnUnmap = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnUnmap](cast[ptr ID2d1VertexBufferVtbl](self.vtbl).Unmap)(self)
proc setPixelShaderConstantBuffer*(self: ptr ID2d1DrawInfo; buffer: ptr UncheckedArray[uint8]; bufferCount: uint32): WinResult {.inline, raises: [].} =
  type PfnSetPixelShaderConstantBuffer = proc (self: pointer; buffer: ptr UncheckedArray[uint8]; bufferCount: uint32): WinResult {.w32callback.}
  cast[PfnSetPixelShaderConstantBuffer](cast[ptr ID2d1DrawInfoVtbl](self.vtbl).SetPixelShaderConstantBuffer)(self, buffer, bufferCount)
proc setResourceTexture*(self: ptr ID2d1DrawInfo; textureIndex: uint32; resourceTexture: ptr ID2d1ResourceTexture): WinResult {.inline, raises: [].} =
  type PfnSetResourceTexture = proc (self: pointer; textureIndex: uint32; resourceTexture: ptr ID2d1ResourceTexture): WinResult {.w32callback.}
  cast[PfnSetResourceTexture](cast[ptr ID2d1DrawInfoVtbl](self.vtbl).SetResourceTexture)(self, textureIndex, resourceTexture)
proc setVertexShaderConstantBuffer*(self: ptr ID2d1DrawInfo; buffer: ptr UncheckedArray[uint8]; bufferCount: uint32): WinResult {.inline, raises: [].} =
  type PfnSetVertexShaderConstantBuffer = proc (self: pointer; buffer: ptr UncheckedArray[uint8]; bufferCount: uint32): WinResult {.w32callback.}
  cast[PfnSetVertexShaderConstantBuffer](cast[ptr ID2d1DrawInfoVtbl](self.vtbl).SetVertexShaderConstantBuffer)(self, buffer, bufferCount)
proc setPixelShader*(self: ptr ID2d1DrawInfo; shaderId: WinGuid; pixelOptions: D2d1PixelOptions): WinResult {.inline, raises: [].} =
  type PfnSetPixelShader = proc (self: pointer; shaderId: ptr WinGuid; pixelOptions: D2d1PixelOptions): WinResult {.w32callback.}
  cast[PfnSetPixelShader](cast[ptr ID2d1DrawInfoVtbl](self.vtbl).SetPixelShader)(self, shaderId.unsafeAddr, pixelOptions)
proc setVertexProcessing*(self: ptr ID2d1DrawInfo; vertexBuffer: ptr ID2d1VertexBuffer; vertexOptions: D2d1VertexOptions; blendDescription: ptr D2d1BlendDescription; vertexRange: ptr D2d1VertexRange; vertexShader: ptr WinGuid): WinResult {.inline, raises: [].} =
  type PfnSetVertexProcessing = proc (self: pointer; vertexBuffer: ptr ID2d1VertexBuffer; vertexOptions: D2d1VertexOptions; blendDescription: ptr D2d1BlendDescription; vertexRange: ptr D2d1VertexRange; vertexShader: ptr WinGuid): WinResult {.w32callback.}
  cast[PfnSetVertexProcessing](cast[ptr ID2d1DrawInfoVtbl](self.vtbl).SetVertexProcessing)(self, vertexBuffer, vertexOptions, blendDescription, vertexRange, vertexShader)
proc getInputCount*(self: ptr ID2d1TransformNode): uint32 {.inline, raises: [].} =
  type PfnGetInputCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetInputCount](cast[ptr ID2d1TransformNodeVtbl](self.vtbl).GetInputCount)(self)
proc setOutputBuffer*(self: ptr ID2d1ConcreteTransform; bufferPrecision: D2d1BufferPrecision; channelDepth: D2d1ChannelDepth): WinResult {.inline, raises: [].} =
  type PfnSetOutputBuffer = proc (self: pointer; bufferPrecision: D2d1BufferPrecision; channelDepth: D2d1ChannelDepth): WinResult {.w32callback.}
  cast[PfnSetOutputBuffer](cast[ptr ID2d1ConcreteTransformVtbl](self.vtbl).SetOutputBuffer)(self, bufferPrecision, channelDepth)
proc setCached*(self: ptr ID2d1ConcreteTransform; isCached: WtBOOL): void {.inline, raises: [].} =
  type PfnSetCached = proc (self: pointer; isCached: WtBOOL): void {.w32callback.}
  cast[PfnSetCached](cast[ptr ID2d1ConcreteTransformVtbl](self.vtbl).SetCached)(self, isCached)
proc setDescription*(self: ptr ID2d1BlendTransform; description: D2d1BlendDescription): void {.inline, raises: [].} =
  type PfnSetDescription = proc (self: pointer; description: D2d1BlendDescription): void {.w32callback.}
  cast[PfnSetDescription](cast[ptr ID2d1BlendTransformVtbl](self.vtbl).SetDescription)(self, description)
proc getDescription*(self: ptr ID2d1BlendTransform; description: var D2d1BlendDescription): void {.inline, raises: [].} =
  type PfnGetDescription = proc (self: pointer; description: var D2d1BlendDescription): void {.w32callback.}
  cast[PfnGetDescription](cast[ptr ID2d1BlendTransformVtbl](self.vtbl).GetDescription)(self, description)
proc setExtendModeX*(self: ptr ID2d1BorderTransform; extendMode: D2d1ExtendMode): void {.inline, raises: [].} =
  type PfnSetExtendModeX = proc (self: pointer; extendMode: D2d1ExtendMode): void {.w32callback.}
  cast[PfnSetExtendModeX](cast[ptr ID2d1BorderTransformVtbl](self.vtbl).SetExtendModeX)(self, extendMode)
proc setExtendModeY*(self: ptr ID2d1BorderTransform; extendMode: D2d1ExtendMode): void {.inline, raises: [].} =
  type PfnSetExtendModeY = proc (self: pointer; extendMode: D2d1ExtendMode): void {.w32callback.}
  cast[PfnSetExtendModeY](cast[ptr ID2d1BorderTransformVtbl](self.vtbl).SetExtendModeY)(self, extendMode)
proc getExtendModeX*(self: ptr ID2d1BorderTransform): D2d1ExtendMode {.inline, raises: [].} =
  type PfnGetExtendModeX = proc (self: pointer): D2d1ExtendMode {.w32callback.}
  cast[PfnGetExtendModeX](cast[ptr ID2d1BorderTransformVtbl](self.vtbl).GetExtendModeX)(self)
proc getExtendModeY*(self: ptr ID2d1BorderTransform): D2d1ExtendMode {.inline, raises: [].} =
  type PfnGetExtendModeY = proc (self: pointer): D2d1ExtendMode {.w32callback.}
  cast[PfnGetExtendModeY](cast[ptr ID2d1BorderTransformVtbl](self.vtbl).GetExtendModeY)(self)
proc setOffset*(self: ptr ID2d1OffsetTransform; offset: D2d1Vec2i): void {.inline, raises: [].} =
  type PfnSetOffset = proc (self: pointer; offset: D2d1Vec2i): void {.w32callback.}
  cast[PfnSetOffset](cast[ptr ID2d1OffsetTransformVtbl](self.vtbl).SetOffset)(self, offset)
proc getOffset*(self: ptr ID2d1OffsetTransform): D2d1Vec2i {.inline, raises: [].} =
  type PfnGetOffset = proc (self: pointer; implicitRet: var D2d1Vec2i): void {.w32callback.}
  cast[PfnGetOffset](cast[ptr ID2d1OffsetTransformVtbl](self.vtbl).GetOffset)(self, result)
proc setOutputBounds*(self: ptr ID2d1BoundsAdjustmentTransform; outputBounds: ptr D2d1Recti): void {.inline, raises: [].} =
  type PfnSetOutputBounds = proc (self: pointer; outputBounds: ptr D2d1Recti): void {.w32callback.}
  cast[PfnSetOutputBounds](cast[ptr ID2d1BoundsAdjustmentTransformVtbl](self.vtbl).SetOutputBounds)(self, outputBounds)
proc getOutputBounds*(self: ptr ID2d1BoundsAdjustmentTransform; outputBounds: var D2d1Recti): void {.inline, raises: [].} =
  type PfnGetOutputBounds = proc (self: pointer; outputBounds: var D2d1Recti): void {.w32callback.}
  cast[PfnGetOutputBounds](cast[ptr ID2d1BoundsAdjustmentTransformVtbl](self.vtbl).GetOutputBounds)(self, outputBounds)
proc getDpi*(self: ptr ID2d1EffectContext; dpiX: var float32; dpiY: var float32): void {.inline, raises: [].} =
  type PfnGetDpi = proc (self: pointer; dpiX: var float32; dpiY: var float32): void {.w32callback.}
  cast[PfnGetDpi](cast[ptr ID2d1EffectContextVtbl](self.vtbl).GetDpi)(self, dpiX, dpiY)
proc createEffect*(self: ptr ID2d1EffectContext; effectId: WinGuid; effect: var ptr ID2d1Effect): WinResult {.inline, raises: [].} =
  type PfnCreateEffect = proc (self: pointer; effectId: ptr WinGuid; effect: var ptr ID2d1Effect): WinResult {.w32callback.}
  cast[PfnCreateEffect](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateEffect)(self, effectId.unsafeAddr, effect)
# skipped: ID2d1EffectContext GetMaximumSupportedFeatureLevel
proc createTransformNodeFromEffect*(self: ptr ID2d1EffectContext; effect: ptr ID2d1Effect; transformNode: var ptr ID2d1TransformNode): WinResult {.inline, raises: [].} =
  type PfnCreateTransformNodeFromEffect = proc (self: pointer; effect: ptr ID2d1Effect; transformNode: var ptr ID2d1TransformNode): WinResult {.w32callback.}
  cast[PfnCreateTransformNodeFromEffect](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateTransformNodeFromEffect)(self, effect, transformNode)
proc createBlendTransform*(self: ptr ID2d1EffectContext; numInputs: uint32; blendDescription: D2d1BlendDescription; transform: var ptr ID2d1BlendTransform): WinResult {.inline, raises: [].} =
  type PfnCreateBlendTransform = proc (self: pointer; numInputs: uint32; blendDescription: D2d1BlendDescription; transform: var ptr ID2d1BlendTransform): WinResult {.w32callback.}
  cast[PfnCreateBlendTransform](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateBlendTransform)(self, numInputs, blendDescription, transform)
proc createBorderTransform*(self: ptr ID2d1EffectContext; extendModeX: D2d1ExtendMode; extendModeY: D2d1ExtendMode; transform: var ptr ID2d1BorderTransform): WinResult {.inline, raises: [].} =
  type PfnCreateBorderTransform = proc (self: pointer; extendModeX: D2d1ExtendMode; extendModeY: D2d1ExtendMode; transform: var ptr ID2d1BorderTransform): WinResult {.w32callback.}
  cast[PfnCreateBorderTransform](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateBorderTransform)(self, extendModeX, extendModeY, transform)
proc createOffsetTransform*(self: ptr ID2d1EffectContext; offset: D2d1Vec2i; transform: var ptr ID2d1OffsetTransform): WinResult {.inline, raises: [].} =
  type PfnCreateOffsetTransform = proc (self: pointer; offset: D2d1Vec2i; transform: var ptr ID2d1OffsetTransform): WinResult {.w32callback.}
  cast[PfnCreateOffsetTransform](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateOffsetTransform)(self, offset, transform)
proc createBoundsAdjustmentTransform*(self: ptr ID2d1EffectContext; outputRectangle: ptr D2d1Recti; transform: var ptr ID2d1BoundsAdjustmentTransform): WinResult {.inline, raises: [].} =
  type PfnCreateBoundsAdjustmentTransform = proc (self: pointer; outputRectangle: ptr D2d1Recti; transform: var ptr ID2d1BoundsAdjustmentTransform): WinResult {.w32callback.}
  cast[PfnCreateBoundsAdjustmentTransform](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateBoundsAdjustmentTransform)(self, outputRectangle, transform)
proc loadPixelShader*(self: ptr ID2d1EffectContext; shaderId: WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.inline, raises: [].} =
  type PfnLoadPixelShader = proc (self: pointer; shaderId: ptr WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.w32callback.}
  cast[PfnLoadPixelShader](cast[ptr ID2d1EffectContextVtbl](self.vtbl).LoadPixelShader)(self, shaderId.unsafeAddr, shaderBuffer, shaderBufferCount)
proc loadVertexShader*(self: ptr ID2d1EffectContext; resourceId: WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.inline, raises: [].} =
  type PfnLoadVertexShader = proc (self: pointer; resourceId: ptr WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.w32callback.}
  cast[PfnLoadVertexShader](cast[ptr ID2d1EffectContextVtbl](self.vtbl).LoadVertexShader)(self, resourceId.unsafeAddr, shaderBuffer, shaderBufferCount)
proc loadComputeShader*(self: ptr ID2d1EffectContext; resourceId: WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.inline, raises: [].} =
  type PfnLoadComputeShader = proc (self: pointer; resourceId: ptr WinGuid; shaderBuffer: ptr UncheckedArray[uint8]; shaderBufferCount: uint32): WinResult {.w32callback.}
  cast[PfnLoadComputeShader](cast[ptr ID2d1EffectContextVtbl](self.vtbl).LoadComputeShader)(self, resourceId.unsafeAddr, shaderBuffer, shaderBufferCount)
proc isShaderLoaded*(self: ptr ID2d1EffectContext; shaderId: WinGuid): WtBOOL {.inline, raises: [].} =
  type PfnIsShaderLoaded = proc (self: pointer; shaderId: ptr WinGuid): WtBOOL {.w32callback.}
  cast[PfnIsShaderLoaded](cast[ptr ID2d1EffectContextVtbl](self.vtbl).IsShaderLoaded)(self, shaderId.unsafeAddr)
proc createResourceTexture*(self: ptr ID2d1EffectContext; resourceId: ptr WinGuid; resourceTextureProperties: D2d1ResourceTextureProperties; data: ptr UncheckedArray[uint8]; strides: ptr uint32; dataSize: uint32; resourceTexture: var ptr ID2d1ResourceTexture): WinResult {.inline, raises: [].} =
  type PfnCreateResourceTexture = proc (self: pointer; resourceId: ptr WinGuid; resourceTextureProperties: D2d1ResourceTextureProperties; data: ptr UncheckedArray[uint8]; strides: ptr uint32; dataSize: uint32; resourceTexture: var ptr ID2d1ResourceTexture): WinResult {.w32callback.}
  cast[PfnCreateResourceTexture](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateResourceTexture)(self, resourceId, resourceTextureProperties, data, strides, dataSize, resourceTexture)
proc findResourceTexture*(self: ptr ID2d1EffectContext; resourceId: WinGuid; resourceTexture: var ptr ID2d1ResourceTexture): WinResult {.inline, raises: [].} =
  type PfnFindResourceTexture = proc (self: pointer; resourceId: ptr WinGuid; resourceTexture: var ptr ID2d1ResourceTexture): WinResult {.w32callback.}
  cast[PfnFindResourceTexture](cast[ptr ID2d1EffectContextVtbl](self.vtbl).FindResourceTexture)(self, resourceId.unsafeAddr, resourceTexture)
proc createVertexBuffer*(self: ptr ID2d1EffectContext; vertexBufferProperties: D2d1VertexBufferProperties; resourceId: ptr WinGuid; customVertexBufferProperties: ptr D2d1CustomVertexBufferProperties; buffer: var ptr ID2d1VertexBuffer): WinResult {.inline, raises: [].} =
  type PfnCreateVertexBuffer = proc (self: pointer; vertexBufferProperties: D2d1VertexBufferProperties; resourceId: ptr WinGuid; customVertexBufferProperties: ptr D2d1CustomVertexBufferProperties; buffer: var ptr ID2d1VertexBuffer): WinResult {.w32callback.}
  cast[PfnCreateVertexBuffer](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateVertexBuffer)(self, vertexBufferProperties, resourceId, customVertexBufferProperties, buffer)
proc findVertexBuffer*(self: ptr ID2d1EffectContext; resourceId: WinGuid; buffer: var ptr ID2d1VertexBuffer): WinResult {.inline, raises: [].} =
  type PfnFindVertexBuffer = proc (self: pointer; resourceId: ptr WinGuid; buffer: var ptr ID2d1VertexBuffer): WinResult {.w32callback.}
  cast[PfnFindVertexBuffer](cast[ptr ID2d1EffectContextVtbl](self.vtbl).FindVertexBuffer)(self, resourceId.unsafeAddr, buffer)
proc createColorContext*(self: ptr ID2d1EffectContext; space: D2d1ColorSpace; profile: ptr UncheckedArray[uint8]; profileSize: uint32; colorContext: var ptr ID2d1ColorContext): WinResult {.inline, raises: [].} =
  type PfnCreateColorContext = proc (self: pointer; space: D2d1ColorSpace; profile: ptr UncheckedArray[uint8]; profileSize: uint32; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
  cast[PfnCreateColorContext](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateColorContext)(self, space, profile, profileSize, colorContext)
proc createColorContextFromFilename*(self: ptr ID2d1EffectContext; filename: WtPWSTR; colorContext: var ptr ID2d1ColorContext): WinResult {.inline, raises: [].} =
  type PfnCreateColorContextFromFilename = proc (self: pointer; filename: WtPWSTR; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
  cast[PfnCreateColorContextFromFilename](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateColorContextFromFilename)(self, filename, colorContext)
proc createColorContextFromWicColorContext*(self: ptr ID2d1EffectContext; wicColorContext: ptr IWicColorContext; colorContext: var ptr ID2d1ColorContext): WinResult {.inline, raises: [].} =
  type PfnCreateColorContextFromWicColorContext = proc (self: pointer; wicColorContext: ptr IWicColorContext; colorContext: var ptr ID2d1ColorContext): WinResult {.w32callback.}
  cast[PfnCreateColorContextFromWicColorContext](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CreateColorContextFromWicColorContext)(self, wicColorContext, colorContext)
proc checkFeatureSupport*(self: ptr ID2d1EffectContext; feature: D2d1Feature; featureSupportData: pointer; featureSupportDataSize: uint32): WinResult {.inline, raises: [].} =
  type PfnCheckFeatureSupport = proc (self: pointer; feature: D2d1Feature; featureSupportData: pointer; featureSupportDataSize: uint32): WinResult {.w32callback.}
  cast[PfnCheckFeatureSupport](cast[ptr ID2d1EffectContextVtbl](self.vtbl).CheckFeatureSupport)(self, feature, featureSupportData, featureSupportDataSize)
proc isBufferPrecisionSupported*(self: ptr ID2d1EffectContext; bufferPrecision: D2d1BufferPrecision): WtBOOL {.inline, raises: [].} =
  type PfnIsBufferPrecisionSupported = proc (self: pointer; bufferPrecision: D2d1BufferPrecision): WtBOOL {.w32callback.}
  cast[PfnIsBufferPrecisionSupported](cast[ptr ID2d1EffectContextVtbl](self.vtbl).IsBufferPrecisionSupported)(self, bufferPrecision)
proc getInputCount*(self: ptr ID2d1TransformGraph): uint32 {.inline, raises: [].} =
  type PfnGetInputCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetInputCount](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).GetInputCount)(self)
proc setSingleTransformNode*(self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.inline, raises: [].} =
  type PfnSetSingleTransformNode = proc (self: pointer; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
  cast[PfnSetSingleTransformNode](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).SetSingleTransformNode)(self, node)
proc addNode*(self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.inline, raises: [].} =
  type PfnAddNode = proc (self: pointer; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
  cast[PfnAddNode](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).AddNode)(self, node)
proc removeNode*(self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.inline, raises: [].} =
  type PfnRemoveNode = proc (self: pointer; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
  cast[PfnRemoveNode](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).RemoveNode)(self, node)
proc setOutputNode*(self: ptr ID2d1TransformGraph; node: ptr ID2d1TransformNode): WinResult {.inline, raises: [].} =
  type PfnSetOutputNode = proc (self: pointer; node: ptr ID2d1TransformNode): WinResult {.w32callback.}
  cast[PfnSetOutputNode](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).SetOutputNode)(self, node)
proc connectNode*(self: ptr ID2d1TransformGraph; fromNode: ptr ID2d1TransformNode; toNode: ptr ID2d1TransformNode; toNodeInputIndex: uint32): WinResult {.inline, raises: [].} =
  type PfnConnectNode = proc (self: pointer; fromNode: ptr ID2d1TransformNode; toNode: ptr ID2d1TransformNode; toNodeInputIndex: uint32): WinResult {.w32callback.}
  cast[PfnConnectNode](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).ConnectNode)(self, fromNode, toNode, toNodeInputIndex)
proc connectToEffectInput*(self: ptr ID2d1TransformGraph; toEffectInputIndex: uint32; node: ptr ID2d1TransformNode; toNodeInputIndex: uint32): WinResult {.inline, raises: [].} =
  type PfnConnectToEffectInput = proc (self: pointer; toEffectInputIndex: uint32; node: ptr ID2d1TransformNode; toNodeInputIndex: uint32): WinResult {.w32callback.}
  cast[PfnConnectToEffectInput](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).ConnectToEffectInput)(self, toEffectInputIndex, node, toNodeInputIndex)
proc clear*(self: ptr ID2d1TransformGraph): void {.inline, raises: [].} =
  type PfnClear = proc (self: pointer): void {.w32callback.}
  cast[PfnClear](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).Clear)(self)
proc setPassthroughGraph*(self: ptr ID2d1TransformGraph; effectInputIndex: uint32): WinResult {.inline, raises: [].} =
  type PfnSetPassthroughGraph = proc (self: pointer; effectInputIndex: uint32): WinResult {.w32callback.}
  cast[PfnSetPassthroughGraph](cast[ptr ID2d1TransformGraphVtbl](self.vtbl).SetPassthroughGraph)(self, effectInputIndex)
proc getStrokeTransformType*(self: ptr ID2d1StrokeStyle1): D2d1StrokeTransformType {.inline, raises: [].} =
  type PfnGetStrokeTransformType = proc (self: pointer): D2d1StrokeTransformType {.w32callback.}
  cast[PfnGetStrokeTransformType](cast[ptr ID2d1StrokeStyle1Vtbl](self.vtbl).GetStrokeTransformType)(self)
proc computePointAndSegmentAtLength*(self: ptr ID2d1PathGeometry1; length: float32; startSegment: uint32; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; pointDescription: var D2d1PointDescription): WinResult {.inline, raises: [].} =
  type PfnComputePointAndSegmentAtLength = proc (self: pointer; length: float32; startSegment: uint32; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; pointDescription: var D2d1PointDescription): WinResult {.w32callback.}
  cast[PfnComputePointAndSegmentAtLength](cast[ptr ID2d1PathGeometry1Vtbl](self.vtbl).ComputePointAndSegmentAtLength)(self, length, startSegment, worldTransform, flatteningTolerance, pointDescription)
proc getDescription*(self: ptr ID2d1DrawingStateBlock1; stateDescription: var D2d1DrawingStateDescription1): void {.inline, raises: [].} =
  type PfnGetDescription = proc (self: pointer; stateDescription: var D2d1DrawingStateDescription1): void {.w32callback.}
  cast[PfnGetDescription](cast[ptr ID2d1DrawingStateBlock1Vtbl](self.vtbl).GetDescription)(self, stateDescription)
proc setDescription*(self: ptr ID2d1DrawingStateBlock1; stateDescription: D2d1DrawingStateDescription1): void {.inline, raises: [].} =
  type PfnSetDescription = proc (self: pointer; stateDescription: D2d1DrawingStateDescription1): void {.w32callback.}
  cast[PfnSetDescription](cast[ptr ID2d1DrawingStateBlock1Vtbl](self.vtbl).SetDescription)(self, stateDescription)
# skipped: ID2d1Factory1 CreateDevice
proc createStrokeStyle*(self: ptr ID2d1Factory1; strokeStyleProperties: D2d1StrokeStyleProperties1; dashes: ptr UncheckedArray[float32]; dashesCount: uint32; strokeStyle: var ptr ID2d1StrokeStyle1): WinResult {.inline, raises: [].} =
  type PfnCreateStrokeStyle = proc (self: pointer; strokeStyleProperties: D2d1StrokeStyleProperties1; dashes: ptr UncheckedArray[float32]; dashesCount: uint32; strokeStyle: var ptr ID2d1StrokeStyle1): WinResult {.w32callback.}
  cast[PfnCreateStrokeStyle](cast[ptr ID2d1Factory1Vtbl](self.vtbl).CreateStrokeStyle)(self, strokeStyleProperties, dashes, dashesCount, strokeStyle)
proc createPathGeometry*(self: ptr ID2d1Factory1; pathGeometry: var ptr ID2d1PathGeometry1): WinResult {.inline, raises: [].} =
  type PfnCreatePathGeometry = proc (self: pointer; pathGeometry: var ptr ID2d1PathGeometry1): WinResult {.w32callback.}
  cast[PfnCreatePathGeometry](cast[ptr ID2d1Factory1Vtbl](self.vtbl).CreatePathGeometry)(self, pathGeometry)
proc createDrawingStateBlock*(self: ptr ID2d1Factory1; drawingStateDescription: ptr D2d1DrawingStateDescription1; textRenderingParams: ptr IDWriteRenderingParams; drawingStateBlock: var ptr ID2d1DrawingStateBlock1): WinResult {.inline, raises: [].} =
  type PfnCreateDrawingStateBlock = proc (self: pointer; drawingStateDescription: ptr D2d1DrawingStateDescription1; textRenderingParams: ptr IDWriteRenderingParams; drawingStateBlock: var ptr ID2d1DrawingStateBlock1): WinResult {.w32callback.}
  cast[PfnCreateDrawingStateBlock](cast[ptr ID2d1Factory1Vtbl](self.vtbl).CreateDrawingStateBlock)(self, drawingStateDescription, textRenderingParams, drawingStateBlock)
proc createGdiMetafile*(self: ptr ID2d1Factory1; metafileStream: ptr IStream; metafile: var ptr ID2d1GdiMetafile): WinResult {.inline, raises: [].} =
  type PfnCreateGdiMetafile = proc (self: pointer; metafileStream: ptr IStream; metafile: var ptr ID2d1GdiMetafile): WinResult {.w32callback.}
  cast[PfnCreateGdiMetafile](cast[ptr ID2d1Factory1Vtbl](self.vtbl).CreateGdiMetafile)(self, metafileStream, metafile)
proc registerEffectFromStream*(self: ptr ID2d1Factory1; classId: WinGuid; propertyXml: ptr IStream; bindings: ptr UncheckedArray[D2d1PropertyBinding]; bindingsCount: uint32; effectFactory: WtPD2D1_EFFECT_FACTORY): WinResult {.inline, raises: [].} =
  type PfnRegisterEffectFromStream = proc (self: pointer; classId: ptr WinGuid; propertyXml: ptr IStream; bindings: ptr UncheckedArray[D2d1PropertyBinding]; bindingsCount: uint32; effectFactory: WtPD2D1_EFFECT_FACTORY): WinResult {.w32callback.}
  cast[PfnRegisterEffectFromStream](cast[ptr ID2d1Factory1Vtbl](self.vtbl).RegisterEffectFromStream)(self, classId.unsafeAddr, propertyXml, bindings, bindingsCount, effectFactory)
proc registerEffectFromString*(self: ptr ID2d1Factory1; classId: WinGuid; propertyXml: WtPWSTR; bindings: ptr UncheckedArray[D2d1PropertyBinding]; bindingsCount: uint32; effectFactory: WtPD2D1_EFFECT_FACTORY): WinResult {.inline, raises: [].} =
  type PfnRegisterEffectFromString = proc (self: pointer; classId: ptr WinGuid; propertyXml: WtPWSTR; bindings: ptr UncheckedArray[D2d1PropertyBinding]; bindingsCount: uint32; effectFactory: WtPD2D1_EFFECT_FACTORY): WinResult {.w32callback.}
  cast[PfnRegisterEffectFromString](cast[ptr ID2d1Factory1Vtbl](self.vtbl).RegisterEffectFromString)(self, classId.unsafeAddr, propertyXml, bindings, bindingsCount, effectFactory)
proc unregisterEffect*(self: ptr ID2d1Factory1; classId: WinGuid): WinResult {.inline, raises: [].} =
  type PfnUnregisterEffect = proc (self: pointer; classId: ptr WinGuid): WinResult {.w32callback.}
  cast[PfnUnregisterEffect](cast[ptr ID2d1Factory1Vtbl](self.vtbl).UnregisterEffect)(self, classId.unsafeAddr)
proc getRegisteredEffects*(self: ptr ID2d1Factory1; effects: ptr UncheckedArray[WinGuid]; effectsCount: uint32; effectsReturned: ptr uint32; effectsRegistered: ptr uint32): WinResult {.inline, raises: [].} =
  type PfnGetRegisteredEffects = proc (self: pointer; effects: ptr UncheckedArray[WinGuid]; effectsCount: uint32; effectsReturned: ptr uint32; effectsRegistered: ptr uint32): WinResult {.w32callback.}
  cast[PfnGetRegisteredEffects](cast[ptr ID2d1Factory1Vtbl](self.vtbl).GetRegisteredEffects)(self, effects, effectsCount, effectsReturned, effectsRegistered)
proc getEffectProperties*(self: ptr ID2d1Factory1; effectId: WinGuid; properties: var ptr ID2d1Properties): WinResult {.inline, raises: [].} =
  type PfnGetEffectProperties = proc (self: pointer; effectId: ptr WinGuid; properties: var ptr ID2d1Properties): WinResult {.w32callback.}
  cast[PfnGetEffectProperties](cast[ptr ID2d1Factory1Vtbl](self.vtbl).GetEffectProperties)(self, effectId.unsafeAddr, properties)
proc createFilledGeometryRealization*(self: ptr ID2d1DeviceContext1; geometry: ptr ID2d1Geometry; flatteningTolerance: float32; geometryRealization: var ptr ID2d1GeometryRealization): WinResult {.inline, raises: [].} =
  type PfnCreateFilledGeometryRealization = proc (self: pointer; geometry: ptr ID2d1Geometry; flatteningTolerance: float32; geometryRealization: var ptr ID2d1GeometryRealization): WinResult {.w32callback.}
  cast[PfnCreateFilledGeometryRealization](cast[ptr ID2d1DeviceContext1Vtbl](self.vtbl).CreateFilledGeometryRealization)(self, geometry, flatteningTolerance, geometryRealization)
proc createStrokedGeometryRealization*(self: ptr ID2d1DeviceContext1; geometry: ptr ID2d1Geometry; flatteningTolerance: float32; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; geometryRealization: var ptr ID2d1GeometryRealization): WinResult {.inline, raises: [].} =
  type PfnCreateStrokedGeometryRealization = proc (self: pointer; geometry: ptr ID2d1Geometry; flatteningTolerance: float32; strokeWidth: float32; strokeStyle: ptr ID2d1StrokeStyle; geometryRealization: var ptr ID2d1GeometryRealization): WinResult {.w32callback.}
  cast[PfnCreateStrokedGeometryRealization](cast[ptr ID2d1DeviceContext1Vtbl](self.vtbl).CreateStrokedGeometryRealization)(self, geometry, flatteningTolerance, strokeWidth, strokeStyle, geometryRealization)
proc drawGeometryRealization*(self: ptr ID2d1DeviceContext1; geometryRealization: ptr ID2d1GeometryRealization; brush: ptr ID2d1Brush): void {.inline, raises: [].} =
  type PfnDrawGeometryRealization = proc (self: pointer; geometryRealization: ptr ID2d1GeometryRealization; brush: ptr ID2d1Brush): void {.w32callback.}
  cast[PfnDrawGeometryRealization](cast[ptr ID2d1DeviceContext1Vtbl](self.vtbl).DrawGeometryRealization)(self, geometryRealization, brush)
proc setNibTransform*(self: ptr ID2d1InkStyle; transform: D2d1Affine2f): void {.inline, raises: [].} =
  type PfnSetNibTransform = proc (self: pointer; transform: D2d1Affine2f): void {.w32callback.}
  cast[PfnSetNibTransform](cast[ptr ID2d1InkStyleVtbl](self.vtbl).SetNibTransform)(self, transform)
proc getNibTransform*(self: ptr ID2d1InkStyle; transform: var D2d1Affine2f): void {.inline, raises: [].} =
  type PfnGetNibTransform = proc (self: pointer; transform: var D2d1Affine2f): void {.w32callback.}
  cast[PfnGetNibTransform](cast[ptr ID2d1InkStyleVtbl](self.vtbl).GetNibTransform)(self, transform)
proc setNibShape*(self: ptr ID2d1InkStyle; nibShape: D2d1InkNibShape): void {.inline, raises: [].} =
  type PfnSetNibShape = proc (self: pointer; nibShape: D2d1InkNibShape): void {.w32callback.}
  cast[PfnSetNibShape](cast[ptr ID2d1InkStyleVtbl](self.vtbl).SetNibShape)(self, nibShape)
proc getNibShape*(self: ptr ID2d1InkStyle): D2d1InkNibShape {.inline, raises: [].} =
  type PfnGetNibShape = proc (self: pointer): D2d1InkNibShape {.w32callback.}
  cast[PfnGetNibShape](cast[ptr ID2d1InkStyleVtbl](self.vtbl).GetNibShape)(self)
proc setStartPoint*(self: ptr ID2d1Ink; startPoint: D2d1InkPoint): void {.inline, raises: [].} =
  type PfnSetStartPoint = proc (self: pointer; startPoint: D2d1InkPoint): void {.w32callback.}
  cast[PfnSetStartPoint](cast[ptr ID2d1InkVtbl](self.vtbl).SetStartPoint)(self, startPoint)
proc getStartPoint*(self: ptr ID2d1Ink): D2d1InkPoint {.inline, raises: [].} =
  type PfnGetStartPoint = proc (self: pointer; implicitRet: var D2d1InkPoint): void {.w32callback.}
  cast[PfnGetStartPoint](cast[ptr ID2d1InkVtbl](self.vtbl).GetStartPoint)(self, result)
proc addSegments*(self: ptr ID2d1Ink; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.inline, raises: [].} =
  type PfnAddSegments = proc (self: pointer; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.w32callback.}
  cast[PfnAddSegments](cast[ptr ID2d1InkVtbl](self.vtbl).AddSegments)(self, segments, segmentsCount)
proc removeSegmentsAtEnd*(self: ptr ID2d1Ink; segmentsCount: uint32): WinResult {.inline, raises: [].} =
  type PfnRemoveSegmentsAtEnd = proc (self: pointer; segmentsCount: uint32): WinResult {.w32callback.}
  cast[PfnRemoveSegmentsAtEnd](cast[ptr ID2d1InkVtbl](self.vtbl).RemoveSegmentsAtEnd)(self, segmentsCount)
proc setSegments*(self: ptr ID2d1Ink; startSegment: uint32; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.inline, raises: [].} =
  type PfnSetSegments = proc (self: pointer; startSegment: uint32; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.w32callback.}
  cast[PfnSetSegments](cast[ptr ID2d1InkVtbl](self.vtbl).SetSegments)(self, startSegment, segments, segmentsCount)
proc setSegmentAtEnd*(self: ptr ID2d1Ink; segment: D2d1InkBezierSegment): WinResult {.inline, raises: [].} =
  type PfnSetSegmentAtEnd = proc (self: pointer; segment: D2d1InkBezierSegment): WinResult {.w32callback.}
  cast[PfnSetSegmentAtEnd](cast[ptr ID2d1InkVtbl](self.vtbl).SetSegmentAtEnd)(self, segment)
proc getSegmentCount*(self: ptr ID2d1Ink): uint32 {.inline, raises: [].} =
  type PfnGetSegmentCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetSegmentCount](cast[ptr ID2d1InkVtbl](self.vtbl).GetSegmentCount)(self)
proc getSegments*(self: ptr ID2d1Ink; startSegment: uint32; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.inline, raises: [].} =
  type PfnGetSegments = proc (self: pointer; startSegment: uint32; segments: ptr UncheckedArray[D2d1InkBezierSegment]; segmentsCount: uint32): WinResult {.w32callback.}
  cast[PfnGetSegments](cast[ptr ID2d1InkVtbl](self.vtbl).GetSegments)(self, startSegment, segments, segmentsCount)
proc streamAsGeometry*(self: ptr ID2d1Ink; inkStyle: ptr ID2d1InkStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.inline, raises: [].} =
  type PfnStreamAsGeometry = proc (self: pointer; inkStyle: ptr ID2d1InkStyle; worldTransform: ptr D2d1Affine2f; flatteningTolerance: float32; geometrySink: ptr ID2d1SimplifiedGeometrySink): WinResult {.w32callback.}
  cast[PfnStreamAsGeometry](cast[ptr ID2d1InkVtbl](self.vtbl).StreamAsGeometry)(self, inkStyle, worldTransform, flatteningTolerance, geometrySink)
proc getBounds*(self: ptr ID2d1Ink; inkStyle: ptr ID2d1InkStyle; worldTransform: ptr D2d1Affine2f; bounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetBounds = proc (self: pointer; inkStyle: ptr ID2d1InkStyle; worldTransform: ptr D2d1Affine2f; bounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetBounds](cast[ptr ID2d1InkVtbl](self.vtbl).GetBounds)(self, inkStyle, worldTransform, bounds)
proc getPatchCount*(self: ptr ID2d1GradientMesh): uint32 {.inline, raises: [].} =
  type PfnGetPatchCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetPatchCount](cast[ptr ID2d1GradientMeshVtbl](self.vtbl).GetPatchCount)(self)
proc getPatches*(self: ptr ID2d1GradientMesh; startIndex: uint32; patches: ptr UncheckedArray[D2d1GradientMeshPatch]; patchesCount: uint32): WinResult {.inline, raises: [].} =
  type PfnGetPatches = proc (self: pointer; startIndex: uint32; patches: ptr UncheckedArray[D2d1GradientMeshPatch]; patchesCount: uint32): WinResult {.w32callback.}
  cast[PfnGetPatches](cast[ptr ID2d1GradientMeshVtbl](self.vtbl).GetPatches)(self, startIndex, patches, patchesCount)
proc offerResources*(self: ptr ID2d1ImageSource): WinResult {.inline, raises: [].} =
  type PfnOfferResources = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnOfferResources](cast[ptr ID2d1ImageSourceVtbl](self.vtbl).OfferResources)(self)
proc tryReclaimResources*(self: ptr ID2d1ImageSource; resourcesDiscarded: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnTryReclaimResources = proc (self: pointer; resourcesDiscarded: var WtBOOL): WinResult {.w32callback.}
  cast[PfnTryReclaimResources](cast[ptr ID2d1ImageSourceVtbl](self.vtbl).TryReclaimResources)(self, resourcesDiscarded)
proc ensureCached*(self: ptr ID2d1ImageSourceFromWic; rectangleToFill: ptr D2d1Rectu): WinResult {.inline, raises: [].} =
  type PfnEnsureCached = proc (self: pointer; rectangleToFill: ptr D2d1Rectu): WinResult {.w32callback.}
  cast[PfnEnsureCached](cast[ptr ID2d1ImageSourceFromWicVtbl](self.vtbl).EnsureCached)(self, rectangleToFill)
proc trimCache*(self: ptr ID2d1ImageSourceFromWic; rectangleToPreserve: ptr D2d1Rectu): WinResult {.inline, raises: [].} =
  type PfnTrimCache = proc (self: pointer; rectangleToPreserve: ptr D2d1Rectu): WinResult {.w32callback.}
  cast[PfnTrimCache](cast[ptr ID2d1ImageSourceFromWicVtbl](self.vtbl).TrimCache)(self, rectangleToPreserve)
proc getSource*(self: ptr ID2d1ImageSourceFromWic; wicBitmapSource: ptr ptr IWicBitmapSource): void {.inline, raises: [].} =
  type PfnGetSource = proc (self: pointer; wicBitmapSource: ptr ptr IWicBitmapSource): void {.w32callback.}
  cast[PfnGetSource](cast[ptr ID2d1ImageSourceFromWicVtbl](self.vtbl).GetSource)(self, wicBitmapSource)
proc getSource*(self: ptr ID2d1TransformedImageSource; imageSource: ptr ptr ID2d1ImageSource): void {.inline, raises: [].} =
  type PfnGetSource = proc (self: pointer; imageSource: ptr ptr ID2d1ImageSource): void {.w32callback.}
  cast[PfnGetSource](cast[ptr ID2d1TransformedImageSourceVtbl](self.vtbl).GetSource)(self, imageSource)
proc getProperties*(self: ptr ID2d1TransformedImageSource; properties: var D2d1TransformedImageSourceProperties): void {.inline, raises: [].} =
  type PfnGetProperties = proc (self: pointer; properties: var D2d1TransformedImageSourceProperties): void {.w32callback.}
  cast[PfnGetProperties](cast[ptr ID2d1TransformedImageSourceVtbl](self.vtbl).GetProperties)(self, properties)
proc createInk*(self: ptr ID2d1DeviceContext2; startPoint: D2d1InkPoint; ink: var ptr ID2d1Ink): WinResult {.inline, raises: [].} =
  type PfnCreateInk = proc (self: pointer; startPoint: D2d1InkPoint; ink: var ptr ID2d1Ink): WinResult {.w32callback.}
  cast[PfnCreateInk](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).CreateInk)(self, startPoint, ink)
proc createInkStyle*(self: ptr ID2d1DeviceContext2; inkStyleProperties: ptr D2d1InkStyleProperties; inkStyle: var ptr ID2d1InkStyle): WinResult {.inline, raises: [].} =
  type PfnCreateInkStyle = proc (self: pointer; inkStyleProperties: ptr D2d1InkStyleProperties; inkStyle: var ptr ID2d1InkStyle): WinResult {.w32callback.}
  cast[PfnCreateInkStyle](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).CreateInkStyle)(self, inkStyleProperties, inkStyle)
proc createGradientMesh*(self: ptr ID2d1DeviceContext2; patches: ptr UncheckedArray[D2d1GradientMeshPatch]; patchesCount: uint32; gradientMesh: var ptr ID2d1GradientMesh): WinResult {.inline, raises: [].} =
  type PfnCreateGradientMesh = proc (self: pointer; patches: ptr UncheckedArray[D2d1GradientMeshPatch]; patchesCount: uint32; gradientMesh: var ptr ID2d1GradientMesh): WinResult {.w32callback.}
  cast[PfnCreateGradientMesh](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).CreateGradientMesh)(self, patches, patchesCount, gradientMesh)
proc createImageSourceFromWic*(self: ptr ID2d1DeviceContext2; wicBitmapSource: ptr IWicBitmapSource; loadingOptions: D2d1ImageSourceLoadingOptions; alphaMode: D2d1AlphaMode; imageSource: var ptr ID2d1ImageSourceFromWic): WinResult {.inline, raises: [].} =
  type PfnCreateImageSourceFromWic = proc (self: pointer; wicBitmapSource: ptr IWicBitmapSource; loadingOptions: D2d1ImageSourceLoadingOptions; alphaMode: D2d1AlphaMode; imageSource: var ptr ID2d1ImageSourceFromWic): WinResult {.w32callback.}
  cast[PfnCreateImageSourceFromWic](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).CreateImageSourceFromWic)(self, wicBitmapSource, loadingOptions, alphaMode, imageSource)
proc createLookupTable3D*(self: ptr ID2d1DeviceContext2; precision: D2d1BufferPrecision; extents: ptr UncheckedArray[uint32]; data: ptr UncheckedArray[uint8]; dataCount: uint32; strides: ptr UncheckedArray[uint32]; lookupTable: var ptr ID2d1LookupTable3D): WinResult {.inline, raises: [].} =
  type PfnCreateLookupTable3D = proc (self: pointer; precision: D2d1BufferPrecision; extents: ptr UncheckedArray[uint32]; data: ptr UncheckedArray[uint8]; dataCount: uint32; strides: ptr UncheckedArray[uint32]; lookupTable: var ptr ID2d1LookupTable3D): WinResult {.w32callback.}
  cast[PfnCreateLookupTable3D](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).CreateLookupTable3D)(self, precision, extents, data, dataCount, strides, lookupTable)
# skipped: ID2d1DeviceContext2 CreateImageSourceFromDxgi
proc getGradientMeshWorldBounds*(self: ptr ID2d1DeviceContext2; gradientMesh: ptr ID2d1GradientMesh; pBounds: var D2d1Rectf): WinResult {.inline, raises: [].} =
  type PfnGetGradientMeshWorldBounds = proc (self: pointer; gradientMesh: ptr ID2d1GradientMesh; pBounds: var D2d1Rectf): WinResult {.w32callback.}
  cast[PfnGetGradientMeshWorldBounds](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).GetGradientMeshWorldBounds)(self, gradientMesh, pBounds)
proc drawInk*(self: ptr ID2d1DeviceContext2; ink: ptr ID2d1Ink; brush: ptr ID2d1Brush; inkStyle: ptr ID2d1InkStyle): void {.inline, raises: [].} =
  type PfnDrawInk = proc (self: pointer; ink: ptr ID2d1Ink; brush: ptr ID2d1Brush; inkStyle: ptr ID2d1InkStyle): void {.w32callback.}
  cast[PfnDrawInk](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).DrawInk)(self, ink, brush, inkStyle)
proc drawGradientMesh*(self: ptr ID2d1DeviceContext2; gradientMesh: ptr ID2d1GradientMesh): void {.inline, raises: [].} =
  type PfnDrawGradientMesh = proc (self: pointer; gradientMesh: ptr ID2d1GradientMesh): void {.w32callback.}
  cast[PfnDrawGradientMesh](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).DrawGradientMesh)(self, gradientMesh)
proc drawGdiMetafile*(self: ptr ID2d1DeviceContext2; gdiMetafile: ptr ID2d1GdiMetafile; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.inline, raises: [].} =
  type PfnDrawGdiMetafile = proc (self: pointer; gdiMetafile: ptr ID2d1GdiMetafile; destinationRectangle: ptr D2d1Rectf; sourceRectangle: ptr D2d1Rectf): void {.w32callback.}
  cast[PfnDrawGdiMetafile](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).DrawGdiMetafile)(self, gdiMetafile, destinationRectangle, sourceRectangle)
proc createTransformedImageSource*(self: ptr ID2d1DeviceContext2; imageSource: ptr ID2d1ImageSource; properties: D2d1TransformedImageSourceProperties; transformedImageSource: var ptr ID2d1TransformedImageSource): WinResult {.inline, raises: [].} =
  type PfnCreateTransformedImageSource = proc (self: pointer; imageSource: ptr ID2d1ImageSource; properties: D2d1TransformedImageSourceProperties; transformedImageSource: var ptr ID2d1TransformedImageSource): WinResult {.w32callback.}
  cast[PfnCreateTransformedImageSource](cast[ptr ID2d1DeviceContext2Vtbl](self.vtbl).CreateTransformedImageSource)(self, imageSource, properties, transformedImageSource)
proc addSprites*(self: ptr ID2d1SpriteBatch; spriteCount: uint32; destinationRectangles: ptr UncheckedArray[D2d1Rectf]; sourceRectangles: ptr UncheckedArray[D2d1Rectu]; colors: ptr UncheckedArray[D2d1Rgbaf]; transforms: ptr UncheckedArray[D2d1Affine2f]; destinationRectanglesStride: uint32; sourceRectanglesStride: uint32; colorsStride: uint32; transformsStride: uint32): WinResult {.inline, raises: [].} =
  type PfnAddSprites = proc (self: pointer; spriteCount: uint32; destinationRectangles: ptr UncheckedArray[D2d1Rectf]; sourceRectangles: ptr UncheckedArray[D2d1Rectu]; colors: ptr UncheckedArray[D2d1Rgbaf]; transforms: ptr UncheckedArray[D2d1Affine2f]; destinationRectanglesStride: uint32; sourceRectanglesStride: uint32; colorsStride: uint32; transformsStride: uint32): WinResult {.w32callback.}
  cast[PfnAddSprites](cast[ptr ID2d1SpriteBatchVtbl](self.vtbl).AddSprites)(self, spriteCount, destinationRectangles, sourceRectangles, colors, transforms, destinationRectanglesStride, sourceRectanglesStride, colorsStride, transformsStride)
proc setSprites*(self: ptr ID2d1SpriteBatch; startIndex: uint32; spriteCount: uint32; destinationRectangles: ptr D2d1Rectf; sourceRectangles: ptr D2d1Rectu; colors: ptr D2d1Rgbaf; transforms: ptr D2d1Affine2f; destinationRectanglesStride: uint32; sourceRectanglesStride: uint32; colorsStride: uint32; transformsStride: uint32): WinResult {.inline, raises: [].} =
  type PfnSetSprites = proc (self: pointer; startIndex: uint32; spriteCount: uint32; destinationRectangles: ptr D2d1Rectf; sourceRectangles: ptr D2d1Rectu; colors: ptr D2d1Rgbaf; transforms: ptr D2d1Affine2f; destinationRectanglesStride: uint32; sourceRectanglesStride: uint32; colorsStride: uint32; transformsStride: uint32): WinResult {.w32callback.}
  cast[PfnSetSprites](cast[ptr ID2d1SpriteBatchVtbl](self.vtbl).SetSprites)(self, startIndex, spriteCount, destinationRectangles, sourceRectangles, colors, transforms, destinationRectanglesStride, sourceRectanglesStride, colorsStride, transformsStride)
proc getSprites*(self: ptr ID2d1SpriteBatch; startIndex: uint32; spriteCount: uint32; destinationRectangles: ptr UncheckedArray[D2d1Rectf]; sourceRectangles: ptr UncheckedArray[D2d1Rectu]; colors: ptr UncheckedArray[D2d1Rgbaf]; transforms: ptr UncheckedArray[D2d1Affine2f]): WinResult {.inline, raises: [].} =
  type PfnGetSprites = proc (self: pointer; startIndex: uint32; spriteCount: uint32; destinationRectangles: ptr UncheckedArray[D2d1Rectf]; sourceRectangles: ptr UncheckedArray[D2d1Rectu]; colors: ptr UncheckedArray[D2d1Rgbaf]; transforms: ptr UncheckedArray[D2d1Affine2f]): WinResult {.w32callback.}
  cast[PfnGetSprites](cast[ptr ID2d1SpriteBatchVtbl](self.vtbl).GetSprites)(self, startIndex, spriteCount, destinationRectangles, sourceRectangles, colors, transforms)
proc getSpriteCount*(self: ptr ID2d1SpriteBatch): uint32 {.inline, raises: [].} =
  type PfnGetSpriteCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetSpriteCount](cast[ptr ID2d1SpriteBatchVtbl](self.vtbl).GetSpriteCount)(self)
proc clear*(self: ptr ID2d1SpriteBatch): void {.inline, raises: [].} =
  type PfnClear = proc (self: pointer): void {.w32callback.}
  cast[PfnClear](cast[ptr ID2d1SpriteBatchVtbl](self.vtbl).Clear)(self)
proc createSpriteBatch*(self: ptr ID2d1DeviceContext3; spriteBatch: var ptr ID2d1SpriteBatch): WinResult {.inline, raises: [].} =
  type PfnCreateSpriteBatch = proc (self: pointer; spriteBatch: var ptr ID2d1SpriteBatch): WinResult {.w32callback.}
  cast[PfnCreateSpriteBatch](cast[ptr ID2d1DeviceContext3Vtbl](self.vtbl).CreateSpriteBatch)(self, spriteBatch)
proc drawSpriteBatch*(self: ptr ID2d1DeviceContext3; spriteBatch: ptr ID2d1SpriteBatch; startIndex: uint32; spriteCount: uint32; bitmap: ptr ID2d1Bitmap; interpolationMode: D2d1BitmapInterpolationMode; spriteOptions: D2d1SpriteOptions): void {.inline, raises: [].} =
  type PfnDrawSpriteBatch = proc (self: pointer; spriteBatch: ptr ID2d1SpriteBatch; startIndex: uint32; spriteCount: uint32; bitmap: ptr ID2d1Bitmap; interpolationMode: D2d1BitmapInterpolationMode; spriteOptions: D2d1SpriteOptions): void {.w32callback.}
  cast[PfnDrawSpriteBatch](cast[ptr ID2d1DeviceContext3Vtbl](self.vtbl).DrawSpriteBatch)(self, spriteBatch, startIndex, spriteCount, bitmap, interpolationMode, spriteOptions)
template winGuid*(t: typedesc[ID2d1Resource]): WinGuid =
  WinGuid(Data1: 0x2cd90691'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1StrokeStyle]): WinGuid =
  WinGuid(Data1: 0x2cd9069d'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1SimplifiedGeometrySink]): WinGuid =
  WinGuid(Data1: 0x2cd9069e'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1TessellationSink]): WinGuid =
  WinGuid(Data1: 0x2cd906c1'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1Geometry]): WinGuid =
  WinGuid(Data1: 0x2cd906a1'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1RectangleGeometry]): WinGuid =
  WinGuid(Data1: 0x2cd906a2'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1RoundedRectangleGeometry]): WinGuid =
  WinGuid(Data1: 0x2cd906a3'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1EllipseGeometry]): WinGuid =
  WinGuid(Data1: 0x2cd906a4'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1GeometryGroup]): WinGuid =
  WinGuid(Data1: 0x2cd906a6'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1TransformedGeometry]): WinGuid =
  WinGuid(Data1: 0x2cd906bb'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1GeometrySink]): WinGuid =
  WinGuid(Data1: 0x2cd9069f'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1PathGeometry]): WinGuid =
  WinGuid(Data1: 0x2cd906a5'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1DrawingStateBlock]): WinGuid =
  WinGuid(Data1: 0x28506e39'u32, Data2: 0xebf6'u16, Data3: 0x46a1'u16, Data4: [0xbb'u8, 0x47'u8, 0xfd'u8, 0x85'u8, 0x56'u8, 0x5a'u8, 0xb9'u8, 0x57'u8])
template winGuid*(t: typedesc[ID2d1RenderTarget]): WinGuid =
  WinGuid(Data1: 0x2cd90694'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1HwndRenderTarget]): WinGuid =
  WinGuid(Data1: 0x2cd90698'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1DCRenderTarget]): WinGuid =
  WinGuid(Data1: 0x1c51bc64'u32, Data2: 0xde61'u16, Data3: 0x46fd'u16, Data4: [0x98'u8, 0x99'u8, 0x63'u8, 0xa5'u8, 0xd8'u8, 0xf0'u8, 0x39'u8, 0x50'u8])
template winGuid*(t: typedesc[ID2d1Factory]): WinGuid =
  WinGuid(Data1: 0x06152247'u32, Data2: 0x6f50'u16, Data3: 0x465a'u16, Data4: [0x92'u8, 0x45'u8, 0x11'u8, 0x8b'u8, 0xfd'u8, 0x3b'u8, 0x60'u8, 0x07'u8])
template winGuid*(t: typedesc[ID2d1Image]): WinGuid =
  WinGuid(Data1: 0x65019f75'u32, Data2: 0x8da2'u16, Data3: 0x497c'u16, Data4: [0xb3'u8, 0x2c'u8, 0xdf'u8, 0xa3'u8, 0x4e'u8, 0x48'u8, 0xed'u8, 0xe6'u8])
template winGuid*(t: typedesc[ID2d1Bitmap]): WinGuid =
  WinGuid(Data1: 0xa2296057'u32, Data2: 0xea42'u16, Data3: 0x4099'u16, Data4: [0x98'u8, 0x3b'u8, 0x53'u8, 0x9f'u8, 0xb6'u8, 0x50'u8, 0x54'u8, 0x26'u8])
template winGuid*(t: typedesc[ID2d1Brush]): WinGuid =
  WinGuid(Data1: 0x2cd906a8'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1BitmapBrush]): WinGuid =
  WinGuid(Data1: 0x2cd906aa'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1SolidColorBrush]): WinGuid =
  WinGuid(Data1: 0x2cd906a9'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1GradientStopCollection]): WinGuid =
  WinGuid(Data1: 0x2cd906a7'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1LinearGradientBrush]): WinGuid =
  WinGuid(Data1: 0x2cd906ab'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1RadialGradientBrush]): WinGuid =
  WinGuid(Data1: 0x2cd906ac'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1Layer]): WinGuid =
  WinGuid(Data1: 0x2cd9069b'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1Mesh]): WinGuid =
  WinGuid(Data1: 0x2cd906c2'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1BitmapRenderTarget]): WinGuid =
  WinGuid(Data1: 0x2cd90695'u32, Data2: 0x12e2'u16, Data3: 0x11dc'u16, Data4: [0x9f'u8, 0xed'u8, 0x00'u8, 0x11'u8, 0x43'u8, 0xa0'u8, 0x55'u8, 0xf9'u8])
template winGuid*(t: typedesc[ID2d1ColorContext]): WinGuid =
  WinGuid(Data1: 0x1c4820bb'u32, Data2: 0x5771'u16, Data3: 0x4518'u16, Data4: [0xa5'u8, 0x81'u8, 0x2f'u8, 0xe4'u8, 0xdd'u8, 0x0e'u8, 0xc6'u8, 0x57'u8])
template winGuid*(t: typedesc[ID2d1Bitmap1]): WinGuid =
  WinGuid(Data1: 0xa898a84c'u32, Data2: 0x3873'u16, Data3: 0x4588'u16, Data4: [0xb0'u8, 0x8b'u8, 0xeb'u8, 0xbf'u8, 0x97'u8, 0x8d'u8, 0xf0'u8, 0x41'u8])
template winGuid*(t: typedesc[ID2d1Properties]): WinGuid =
  WinGuid(Data1: 0x483473d7'u32, Data2: 0xcd46'u16, Data3: 0x4f9d'u16, Data4: [0x9d'u8, 0x3a'u8, 0x31'u8, 0x12'u8, 0xaa'u8, 0x80'u8, 0x15'u8, 0x9d'u8])
template winGuid*(t: typedesc[ID2d1Effect]): WinGuid =
  WinGuid(Data1: 0x28211a43'u32, Data2: 0x7d89'u16, Data3: 0x476f'u16, Data4: [0x81'u8, 0x81'u8, 0x2d'u8, 0x61'u8, 0x59'u8, 0xb2'u8, 0x20'u8, 0xad'u8])
template winGuid*(t: typedesc[ID2d1GradientStopCollection1]): WinGuid =
  WinGuid(Data1: 0xae1572f4'u32, Data2: 0x5dd0'u16, Data3: 0x4777'u16, Data4: [0x99'u8, 0x8b'u8, 0x92'u8, 0x79'u8, 0x47'u8, 0x2a'u8, 0xe6'u8, 0x3b'u8])
template winGuid*(t: typedesc[ID2d1ImageBrush]): WinGuid =
  WinGuid(Data1: 0xfe9e984d'u32, Data2: 0x3f95'u16, Data3: 0x407c'u16, Data4: [0xb5'u8, 0xdb'u8, 0xcb'u8, 0x94'u8, 0xd4'u8, 0xe8'u8, 0xf8'u8, 0x7c'u8])
template winGuid*(t: typedesc[ID2d1BitmapBrush1]): WinGuid =
  WinGuid(Data1: 0x41343a53'u32, Data2: 0xe41a'u16, Data3: 0x49a2'u16, Data4: [0x91'u8, 0xcd'u8, 0x21'u8, 0x79'u8, 0x3b'u8, 0xbb'u8, 0x62'u8, 0xe5'u8])
template winGuid*(t: typedesc[ID2d1GdiMetafileSink]): WinGuid =
  WinGuid(Data1: 0x82237326'u32, Data2: 0x8111'u16, Data3: 0x4f7c'u16, Data4: [0xbc'u8, 0xf4'u8, 0xb5'u8, 0xc1'u8, 0x17'u8, 0x55'u8, 0x64'u8, 0xfe'u8])
template winGuid*(t: typedesc[ID2d1GdiMetafile]): WinGuid =
  WinGuid(Data1: 0x2f543dc3'u32, Data2: 0xcfc1'u16, Data3: 0x4211'u16, Data4: [0x86'u8, 0x4f'u8, 0xcf'u8, 0xd9'u8, 0x1c'u8, 0x6f'u8, 0x33'u8, 0x95'u8])
template winGuid*(t: typedesc[ID2d1CommandSink]): WinGuid =
  WinGuid(Data1: 0x54d7898a'u32, Data2: 0xa061'u16, Data3: 0x40a7'u16, Data4: [0xbe'u8, 0xc7'u8, 0xe4'u8, 0x65'u8, 0xbc'u8, 0xba'u8, 0x2c'u8, 0x4f'u8])
template winGuid*(t: typedesc[ID2d1CommandList]): WinGuid =
  WinGuid(Data1: 0xb4f34a19'u32, Data2: 0x2383'u16, Data3: 0x4d76'u16, Data4: [0x94'u8, 0xf6'u8, 0xec'u8, 0x34'u8, 0x36'u8, 0x57'u8, 0xc3'u8, 0xdc'u8])
template winGuid*(t: typedesc[ID2d1PrintControl]): WinGuid =
  WinGuid(Data1: 0x2c1d867d'u32, Data2: 0xc290'u16, Data3: 0x41c8'u16, Data4: [0xae'u8, 0x7e'u8, 0x34'u8, 0xa9'u8, 0x87'u8, 0x02'u8, 0xe9'u8, 0xa5'u8])
template winGuid*(t: typedesc[ID2d1Device]): WinGuid =
  WinGuid(Data1: 0x47dd575d'u32, Data2: 0xac05'u16, Data3: 0x4cdd'u16, Data4: [0x80'u8, 0x49'u8, 0x9b'u8, 0x02'u8, 0xcd'u8, 0x16'u8, 0xf4'u8, 0x4c'u8])
template winGuid*(t: typedesc[ID2d1DeviceContext]): WinGuid =
  WinGuid(Data1: 0xe8f7fe7a'u32, Data2: 0x191c'u16, Data3: 0x466d'u16, Data4: [0xad'u8, 0x95'u8, 0x97'u8, 0x56'u8, 0x78'u8, 0xbd'u8, 0xa9'u8, 0x98'u8])
template winGuid*(t: typedesc[ID2d1RenderInfo]): WinGuid =
  WinGuid(Data1: 0x519ae1bd'u32, Data2: 0xd19a'u16, Data3: 0x420d'u16, Data4: [0xb8'u8, 0x49'u8, 0x36'u8, 0x4f'u8, 0x59'u8, 0x47'u8, 0x76'u8, 0xb7'u8])
template winGuid*(t: typedesc[ID2d1ResourceTexture]): WinGuid =
  WinGuid(Data1: 0x688d15c3'u32, Data2: 0x02b0'u16, Data3: 0x438d'u16, Data4: [0xb1'u8, 0x3a'u8, 0xd1'u8, 0xb4'u8, 0x4c'u8, 0x32'u8, 0xc3'u8, 0x9a'u8])
template winGuid*(t: typedesc[ID2d1VertexBuffer]): WinGuid =
  WinGuid(Data1: 0x9b8b1336'u32, Data2: 0x00a5'u16, Data3: 0x4668'u16, Data4: [0x92'u8, 0xb7'u8, 0xce'u8, 0xd5'u8, 0xd8'u8, 0xbf'u8, 0x9b'u8, 0x7b'u8])
template winGuid*(t: typedesc[ID2d1DrawInfo]): WinGuid =
  WinGuid(Data1: 0x693ce632'u32, Data2: 0x7f2f'u16, Data3: 0x45de'u16, Data4: [0x93'u8, 0xfe'u8, 0x18'u8, 0xd8'u8, 0x8b'u8, 0x37'u8, 0xaa'u8, 0x21'u8])
template winGuid*(t: typedesc[ID2d1TransformNode]): WinGuid =
  WinGuid(Data1: 0xb2efe1e7'u32, Data2: 0x729f'u16, Data3: 0x4102'u16, Data4: [0x94'u8, 0x9f'u8, 0x50'u8, 0x5f'u8, 0xa2'u8, 0x1b'u8, 0xf6'u8, 0x66'u8])
template winGuid*(t: typedesc[ID2d1ConcreteTransform]): WinGuid =
  WinGuid(Data1: 0x1a799d8a'u32, Data2: 0x69f7'u16, Data3: 0x4e4c'u16, Data4: [0x9f'u8, 0xed'u8, 0x43'u8, 0x7c'u8, 0xcc'u8, 0x66'u8, 0x84'u8, 0xcc'u8])
template winGuid*(t: typedesc[ID2d1BlendTransform]): WinGuid =
  WinGuid(Data1: 0x63ac0b32'u32, Data2: 0xba44'u16, Data3: 0x450f'u16, Data4: [0x88'u8, 0x06'u8, 0x7f'u8, 0x4c'u8, 0xa1'u8, 0xff'u8, 0x2f'u8, 0x1b'u8])
template winGuid*(t: typedesc[ID2d1BorderTransform]): WinGuid =
  WinGuid(Data1: 0x4998735c'u32, Data2: 0x3a19'u16, Data3: 0x473c'u16, Data4: [0x97'u8, 0x81'u8, 0x65'u8, 0x68'u8, 0x47'u8, 0xe3'u8, 0xa3'u8, 0x47'u8])
template winGuid*(t: typedesc[ID2d1OffsetTransform]): WinGuid =
  WinGuid(Data1: 0x3fe6adea'u32, Data2: 0x7643'u16, Data3: 0x4f53'u16, Data4: [0xbd'u8, 0x14'u8, 0xa0'u8, 0xce'u8, 0x63'u8, 0xf2'u8, 0x40'u8, 0x42'u8])
template winGuid*(t: typedesc[ID2d1BoundsAdjustmentTransform]): WinGuid =
  WinGuid(Data1: 0x90f732e2'u32, Data2: 0x5092'u16, Data3: 0x4606'u16, Data4: [0xa8'u8, 0x19'u8, 0x86'u8, 0x51'u8, 0x97'u8, 0x0b'u8, 0xac'u8, 0xcd'u8])
template winGuid*(t: typedesc[ID2d1EffectContext]): WinGuid =
  WinGuid(Data1: 0x3d9f916b'u32, Data2: 0x27dc'u16, Data3: 0x4ad7'u16, Data4: [0xb4'u8, 0xf1'u8, 0x64'u8, 0x94'u8, 0x53'u8, 0x40'u8, 0xf5'u8, 0x63'u8])
template winGuid*(t: typedesc[ID2d1TransformGraph]): WinGuid =
  WinGuid(Data1: 0x13d29038'u32, Data2: 0xc3e6'u16, Data3: 0x4034'u16, Data4: [0x90'u8, 0x81'u8, 0x13'u8, 0xb5'u8, 0x3a'u8, 0x41'u8, 0x79'u8, 0x92'u8])
template winGuid*(t: typedesc[ID2d1StrokeStyle1]): WinGuid =
  WinGuid(Data1: 0x10a72a66'u32, Data2: 0xe91c'u16, Data3: 0x43f4'u16, Data4: [0x99'u8, 0x3f'u8, 0xdd'u8, 0xf4'u8, 0xb8'u8, 0x2b'u8, 0x0b'u8, 0x4a'u8])
template winGuid*(t: typedesc[ID2d1PathGeometry1]): WinGuid =
  WinGuid(Data1: 0x62baa2d2'u32, Data2: 0xab54'u16, Data3: 0x41b7'u16, Data4: [0xb8'u8, 0x72'u8, 0x78'u8, 0x7e'u8, 0x01'u8, 0x06'u8, 0xa4'u8, 0x21'u8])
template winGuid*(t: typedesc[ID2d1DrawingStateBlock1]): WinGuid =
  WinGuid(Data1: 0x689f1f85'u32, Data2: 0xc72e'u16, Data3: 0x4e33'u16, Data4: [0x8f'u8, 0x19'u8, 0x85'u8, 0x75'u8, 0x4e'u8, 0xfd'u8, 0x5a'u8, 0xce'u8])
template winGuid*(t: typedesc[ID2d1Factory1]): WinGuid =
  WinGuid(Data1: 0xbb12d362'u32, Data2: 0xdaee'u16, Data3: 0x4b9a'u16, Data4: [0xaa'u8, 0x1d'u8, 0x14'u8, 0xba'u8, 0x40'u8, 0x1c'u8, 0xfa'u8, 0x1f'u8])
template winGuid*(t: typedesc[ID2d1GeometryRealization]): WinGuid =
  WinGuid(Data1: 0xa16907d7'u32, Data2: 0xbc02'u16, Data3: 0x4801'u16, Data4: [0x99'u8, 0xe8'u8, 0x8c'u8, 0xf7'u8, 0xf4'u8, 0x85'u8, 0xf7'u8, 0x74'u8])
template winGuid*(t: typedesc[ID2d1DeviceContext1]): WinGuid =
  WinGuid(Data1: 0xd37f57e4'u32, Data2: 0x6908'u16, Data3: 0x459f'u16, Data4: [0xa1'u8, 0x99'u8, 0xe7'u8, 0x2f'u8, 0x24'u8, 0xf7'u8, 0x99'u8, 0x87'u8])
template winGuid*(t: typedesc[ID2d1InkStyle]): WinGuid =
  WinGuid(Data1: 0xbae8b344'u32, Data2: 0x23fc'u16, Data3: 0x4071'u16, Data4: [0x8c'u8, 0xb5'u8, 0xd0'u8, 0x5d'u8, 0x6f'u8, 0x07'u8, 0x38'u8, 0x48'u8])
template winGuid*(t: typedesc[ID2d1Ink]): WinGuid =
  WinGuid(Data1: 0xb499923b'u32, Data2: 0x7029'u16, Data3: 0x478f'u16, Data4: [0xa8'u8, 0xb3'u8, 0x43'u8, 0x2c'u8, 0x7c'u8, 0x5f'u8, 0x53'u8, 0x12'u8])
template winGuid*(t: typedesc[ID2d1GradientMesh]): WinGuid =
  WinGuid(Data1: 0xf292e401'u32, Data2: 0xc050'u16, Data3: 0x4cde'u16, Data4: [0x83'u8, 0xd7'u8, 0x04'u8, 0x96'u8, 0x2d'u8, 0x3b'u8, 0x23'u8, 0xc2'u8])
template winGuid*(t: typedesc[ID2d1ImageSource]): WinGuid =
  WinGuid(Data1: 0xc9b664e5'u32, Data2: 0x74a1'u16, Data3: 0x4378'u16, Data4: [0x9a'u8, 0xc2'u8, 0xee'u8, 0xfc'u8, 0x37'u8, 0xa3'u8, 0xf4'u8, 0xd8'u8])
template winGuid*(t: typedesc[ID2d1ImageSourceFromWic]): WinGuid =
  WinGuid(Data1: 0x77395441'u32, Data2: 0x1c8f'u16, Data3: 0x4555'u16, Data4: [0x86'u8, 0x83'u8, 0xf5'u8, 0x0d'u8, 0xab'u8, 0x0f'u8, 0xe7'u8, 0x92'u8])
template winGuid*(t: typedesc[ID2d1LookupTable3D]): WinGuid =
  WinGuid(Data1: 0x53dd9855'u32, Data2: 0xa3b0'u16, Data3: 0x4d5b'u16, Data4: [0x82'u8, 0xe1'u8, 0x26'u8, 0xe2'u8, 0x5c'u8, 0x5e'u8, 0x57'u8, 0x97'u8])
template winGuid*(t: typedesc[ID2d1TransformedImageSource]): WinGuid =
  WinGuid(Data1: 0x7f1f79e5'u32, Data2: 0x2796'u16, Data3: 0x416c'u16, Data4: [0x8f'u8, 0x55'u8, 0x70'u8, 0x0f'u8, 0x91'u8, 0x14'u8, 0x45'u8, 0xe5'u8])
template winGuid*(t: typedesc[ID2d1DeviceContext2]): WinGuid =
  WinGuid(Data1: 0x394ea6a3'u32, Data2: 0x0c34'u16, Data3: 0x4321'u16, Data4: [0x95'u8, 0x0b'u8, 0x6c'u8, 0xa2'u8, 0x0f'u8, 0x0b'u8, 0xe6'u8, 0xc7'u8])
template winGuid*(t: typedesc[ID2d1SpriteBatch]): WinGuid =
  WinGuid(Data1: 0x4dc583bf'u32, Data2: 0x3a10'u16, Data3: 0x438a'u16, Data4: [0x87'u8, 0x22'u8, 0xe9'u8, 0x76'u8, 0x52'u8, 0x24'u8, 0xf1'u8, 0xf1'u8])
template winGuid*(t: typedesc[ID2d1DeviceContext3]): WinGuid =
  WinGuid(Data1: 0x235a7496'u32, Data2: 0x8351'u16, Data3: 0x414c'u16, Data4: [0xbc'u8, 0xd4'u8, 0x66'u8, 0x72'u8, 0xab'u8, 0x2d'u8, 0x8e'u8, 0x00'u8])

