type
  # DwriteFontWeight* = int32 # enum
  # DwriteFontStretch* = int32 # enum
  # DwriteFontStyle* = int32 # enum
  WtBOOL = int32
  WtPWSTR = ptr UncheckedArray[uint16]
  # DwriteInformationalStringId* = int32 # enum
  WtFILETIME {.pure, bycopy.} = object
    dwLowDateTime*: uint32
    dwHighDateTime*: uint32
  WtHMONITOR = int
  # DwriteTextAlignment* = int32 # enum
  # DwriteParagraphAlignment* = int32 # enum
  # DwriteWordWrapping* = int32 # enum
  # DwriteReadingDirection* = int32 # enum
  # DwriteFlowDirection* = int32 # enum
  # DwriteTrimmingGranularity* = int32 # enum
  DwriteTrimming* {.pure, byref.} = object
    granularity*: DwriteTrimmingGranularity
    delimiter*: uint32
    delimiterCount*: uint32
  DwriteUnderline* {.pure, byref.} = object
    width*: float32
    thickness*: float32
    offset*: float32
    runHeight*: float32
    readingDirection*: DwriteReadingDirection
    flowDirection*: DwriteFlowDirection
    localeName*: WtPWSTR
    measuringMode*: DwriteMeasuringMode
  DwriteStrikethrough* {.pure, byref.} = object
    width*: float32
    thickness*: float32
    offset*: float32
    readingDirection*: DwriteReadingDirection
    flowDirection*: DwriteFlowDirection
    localeName*: WtPWSTR
    measuringMode*: DwriteMeasuringMode
  DwriteInlineObjectMetrics* {.pure, byref.} = object
    width*: float32
    height*: float32
    baseline*: float32
    supportsSideways*: WtBOOL
  DwriteOverhangMetrics* {.pure, byref.} = object
    left*: float32
    top*: float32
    right*: float32
    bottom*: float32
  # DwriteBreakCondition* = int32 # enum
  # DwriteLineSpacingMethod* = int32 # enum
  # DwriteFontFeatureTag* = uint32 # enum
  DwriteFontFeature* {.pure, bycopy.} = object
    nameTag*: DwriteFontFeatureTag
    parameter*: uint32
  WtLOGFONTW {.pure, byref.} = object
    lfHeight*: int32
    lfWidth*: int32
    lfEscapement*: int32
    lfOrientation*: int32
    lfWeight*: int32
    lfItalic*: uint8
    lfUnderline*: uint8
    lfStrikeOut*: uint8
    lfCharSet*: uint8
    lfOutPrecision*: uint8
    lfClipPrecision*: uint8
    lfQuality*: uint8
    lfPitchAndFamily*: uint8
    lfFaceName*: array[32, uint16]
  WtHDC = int
  WtRECT {.pure, bycopy.} = object
    left*: int32
    top*: int32
    right*: int32
    bottom*: int32
  WtSIZE {.pure, bycopy.} = object
    cx*: int32
    cy*: int32
  DwriteTextRange* {.pure, bycopy.} = object
    startPosition*: uint32
    length*: uint32
  DwriteLineMetrics* {.pure, byref.} = object
    length*: uint32
    trailingWhitespaceLength*: uint32
    newlineLength*: uint32
    height*: float32
    baseline*: float32
    isTrimmed*: WtBOOL
  DwriteTextMetrics* {.pure, byref.} = object
    left*: float32
    top*: float32
    width*: float32
    widthIncludingTrailingWhitespace*: float32
    height*: float32
    layoutWidth*: float32
    layoutHeight*: float32
    maxBidiReorderingDepth*: uint32
    lineCount*: uint32
  DwriteClusterMetrics* {.pure, byref.} = object
    width*: float32
    length*: uint16
    `$bitfield`*: uint16
  DwriteHitTestMetrics* {.pure, byref.} = object
    textPosition*: uint32
    length*: uint32
    left*: float32
    top*: float32
    width*: float32
    height*: float32
    bidiLevel*: uint32
    isText*: WtBOOL
    isTrimmed*: WtBOOL
  # DwriteScriptShapes* = uint32 # enum
  DwriteScriptAnalysis* {.pure, bycopy.} = object
    script*: uint16
    shapes*: DwriteScriptShapes
  DwriteLineBreakpoint* {.pure, byref.} = object
    `$bitfield`*: uint8
  DwriteTypographicFeatures* {.pure, byref.} = object
    features*: ptr DwriteFontFeature
    featureCount*: uint32
  DwriteShapingTextProperties* {.pure, byref.} = object
    `$bitfield`*: uint16
  DwriteShapingGlyphProperties* {.pure, byref.} = object
    `$bitfield`*: uint16
  # DwriteNumberSubstitutionMethod* = int32 # enum
  # DwriteTextureType* = int32 # enum
  # DwriteFactoryType* = int32 # enum
  IDwriteLocalizedStringsVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetCount = proc (self: ptr IDwriteLocalizedStrings): uint32 {.w32callback.}
    GetCount*: FnPointer
    # PfnFindLocaleName = proc (self: ptr IDwriteLocalizedStrings; localeName: WtPWSTR; index: var uint32; exists: var WtBOOL): WinResult {.w32callback.}
    FindLocaleName*: FnPointer
    # PfnGetLocaleNameLength = proc (self: ptr IDwriteLocalizedStrings; index: uint32; length: var uint32): WinResult {.w32callback.}
    GetLocaleNameLength*: FnPointer
    # PfnGetLocaleName = proc (self: ptr IDwriteLocalizedStrings; index: uint32; localeName: ptr UncheckedArray[uint16]; size: uint32): WinResult {.w32callback.}
    GetLocaleName*: FnPointer
    # PfnGetStringLength = proc (self: ptr IDwriteLocalizedStrings; index: uint32; length: var uint32): WinResult {.w32callback.}
    GetStringLength*: FnPointer
    # PfnGetString = proc (self: ptr IDwriteLocalizedStrings; index: uint32; stringBuffer: ptr UncheckedArray[uint16]; size: uint32): WinResult {.w32callback.}
    GetString*: FnPointer
  IDwriteFontFileStreamVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnReadFileFragment = proc (self: ptr IDwriteFontFileStream; fragmentStart: var pointer; fileOffset: uint64; fragmentSize: uint64; fragmentContext: var pointer): WinResult {.w32callback.}
    ReadFileFragment*: FnPointer
    # PfnReleaseFileFragment = proc (self: ptr IDwriteFontFileStream; fragmentContext: pointer): void {.w32callback.}
    ReleaseFileFragment*: FnPointer
    # PfnGetFileSize = proc (self: ptr IDwriteFontFileStream; fileSize: var uint64): WinResult {.w32callback.}
    GetFileSize*: FnPointer
    # PfnGetLastWriteTime = proc (self: ptr IDwriteFontFileStream; lastWriteTime: var uint64): WinResult {.w32callback.}
    GetLastWriteTime*: FnPointer
  IDwriteFontFileLoaderVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnCreateStreamFromKey = proc (self: ptr IDwriteFontFileLoader; fontFileReferenceKey: pointer; fontFileReferenceKeySize: uint32; fontFileStream: var ptr IDwriteFontFileStream): WinResult {.w32callback.}
    CreateStreamFromKey*: FnPointer
  IDwriteFontFileVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetReferenceKey = proc (self: ptr IDwriteFontFile; fontFileReferenceKey: var pointer; fontFileReferenceKeySize: var uint32): WinResult {.w32callback.}
    GetReferenceKey*: FnPointer
    # PfnGetLoader = proc (self: ptr IDwriteFontFile; fontFileLoader: var ptr IDwriteFontFileLoader): WinResult {.w32callback.}
    GetLoader*: FnPointer
    # PfnAnalyze = proc (self: ptr IDwriteFontFile; isSupportedFontType: var WtBOOL; fontFileType: var DwriteFontFileType; fontFaceType: ptr DwriteFontFaceType; numberOfFaces: var uint32): WinResult {.w32callback.}
    Analyze*: FnPointer
  IDwriteRenderingParamsVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetGamma = proc (self: ptr IDwriteRenderingParams): float32 {.w32callback.}
    GetGamma*: FnPointer
    # PfnGetEnhancedContrast = proc (self: ptr IDwriteRenderingParams): float32 {.w32callback.}
    GetEnhancedContrast*: FnPointer
    # PfnGetClearTypeLevel = proc (self: ptr IDwriteRenderingParams): float32 {.w32callback.}
    GetClearTypeLevel*: FnPointer
    # PfnGetPixelGeometry = proc (self: ptr IDwriteRenderingParams): DwritePixelGeometry {.w32callback.}
    GetPixelGeometry*: FnPointer
    # PfnGetRenderingMode = proc (self: ptr IDwriteRenderingParams): DwriteRenderingMode {.w32callback.}
    GetRenderingMode*: FnPointer
  IDwriteFontFaceVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetType = proc (self: ptr IDwriteFontFace): DwriteFontFaceType {.w32callback.}
    GetType*: FnPointer
    # PfnGetFiles = proc (self: ptr IDwriteFontFace; numberOfFiles: var uint32; fontFiles: ptr UncheckedArray[ptr IDwriteFontFile]): WinResult {.w32callback.}
    GetFiles*: FnPointer
    # PfnGetIndex = proc (self: ptr IDwriteFontFace): uint32 {.w32callback.}
    GetIndex*: FnPointer
    # PfnGetSimulations = proc (self: ptr IDwriteFontFace): DwriteFontSimulations {.w32callback.}
    GetSimulations*: FnPointer
    # PfnIsSymbolFont = proc (self: ptr IDwriteFontFace): WtBOOL {.w32callback.}
    IsSymbolFont*: FnPointer
    # PfnGetMetrics = proc (self: ptr IDwriteFontFace; fontFaceMetrics: var DwriteFontMetrics): void {.w32callback.}
    GetMetrics*: FnPointer
    # PfnGetGlyphCount = proc (self: ptr IDwriteFontFace): uint16 {.w32callback.}
    GetGlyphCount*: FnPointer
    # PfnGetDesignGlyphMetrics = proc (self: ptr IDwriteFontFace; glyphIndices: ptr UncheckedArray[uint16]; glyphCount: uint32; glyphMetrics: ptr UncheckedArray[DwriteGlyphMetrics]; isSideways: WtBOOL): WinResult {.w32callback.}
    GetDesignGlyphMetrics*: FnPointer
    # PfnGetGlyphIndices = proc (self: ptr IDwriteFontFace; codePoints: ptr UncheckedArray[uint32]; codePointCount: uint32; glyphIndices: ptr UncheckedArray[uint16]): WinResult {.w32callback.}
    GetGlyphIndices*: FnPointer
    # PfnTryGetFontTable = proc (self: ptr IDwriteFontFace; openTypeTableTag: uint32; tableData: var pointer; tableSize: var uint32; tableContext: var pointer; exists: var WtBOOL): WinResult {.w32callback.}
    TryGetFontTable*: FnPointer
    # PfnReleaseFontTable = proc (self: ptr IDwriteFontFace; tableContext: pointer): void {.w32callback.}
    ReleaseFontTable*: FnPointer
    # PfnGetGlyphRunOutline = proc (self: ptr IDwriteFontFace; emSize: float32; glyphIndices: ptr UncheckedArray[uint16]; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]; glyphCount: uint32; isSideways: WtBOOL; isRightToLeft: WtBOOL; geometrySink: ptr ID2D1SimplifiedGeometrySink): WinResult {.w32callback.}
    GetGlyphRunOutline*: FnPointer
    # PfnGetRecommendedRenderingMode = proc (self: ptr IDwriteFontFace; emSize: float32; pixelsPerDip: float32; measuringMode: DwriteMeasuringMode; renderingParams: ptr IDwriteRenderingParams; renderingMode: var DwriteRenderingMode): WinResult {.w32callback.}
    GetRecommendedRenderingMode*: FnPointer
    # PfnGetGdiCompatibleMetrics = proc (self: ptr IDwriteFontFace; emSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; fontFaceMetrics: var DwriteFontMetrics): WinResult {.w32callback.}
    GetGdiCompatibleMetrics*: FnPointer
    # PfnGetGdiCompatibleGlyphMetrics = proc (self: ptr IDwriteFontFace; emSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; glyphIndices: ptr UncheckedArray[uint16]; glyphCount: uint32; glyphMetrics: ptr UncheckedArray[DwriteGlyphMetrics]; isSideways: WtBOOL): WinResult {.w32callback.}
    GetGdiCompatibleGlyphMetrics*: FnPointer
  IDwriteFontVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetFontFamily = proc (self: ptr IDwriteFont; fontFamily: var ptr IDwriteFontFamily): WinResult {.w32callback.}
    GetFontFamily*: FnPointer
    # PfnGetWeight = proc (self: ptr IDwriteFont): DwriteFontWeight {.w32callback.}
    GetWeight*: FnPointer
    # PfnGetStretch = proc (self: ptr IDwriteFont): DwriteFontStretch {.w32callback.}
    GetStretch*: FnPointer
    # PfnGetStyle = proc (self: ptr IDwriteFont): DwriteFontStyle {.w32callback.}
    GetStyle*: FnPointer
    # PfnIsSymbolFont = proc (self: ptr IDwriteFont): WtBOOL {.w32callback.}
    IsSymbolFont*: FnPointer
    # PfnGetFaceNames = proc (self: ptr IDwriteFont; names: var ptr IDwriteLocalizedStrings): WinResult {.w32callback.}
    GetFaceNames*: FnPointer
    # PfnGetInformationalStrings = proc (self: ptr IDwriteFont; informationalStringID: DwriteInformationalStringId; informationalStrings: ptr ptr IDwriteLocalizedStrings; exists: var WtBOOL): WinResult {.w32callback.}
    GetInformationalStrings*: FnPointer
    # PfnGetSimulations = proc (self: ptr IDwriteFont): DwriteFontSimulations {.w32callback.}
    GetSimulations*: FnPointer
    # PfnGetMetrics = proc (self: ptr IDwriteFont; fontMetrics: var DwriteFontMetrics): void {.w32callback.}
    GetMetrics*: FnPointer
    # PfnHasCharacter = proc (self: ptr IDwriteFont; unicodeValue: uint32; exists: var WtBOOL): WinResult {.w32callback.}
    HasCharacter*: FnPointer
    # PfnCreateFontFace = proc (self: ptr IDwriteFont; fontFace: var ptr IDwriteFontFace): WinResult {.w32callback.}
    CreateFontFace*: FnPointer
  IDwriteFontListVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetFontCollection = proc (self: ptr IDwriteFontList; fontCollection: var ptr IDwriteFontCollection): WinResult {.w32callback.}
    GetFontCollection*: FnPointer
    # PfnGetFontCount = proc (self: ptr IDwriteFontList): uint32 {.w32callback.}
    GetFontCount*: FnPointer
    # PfnGetFont = proc (self: ptr IDwriteFontList; index: uint32; font: var ptr IDwriteFont): WinResult {.w32callback.}
    GetFont*: FnPointer
  IDwriteFontFamilyVtbl* {.pure.} = object
    base*: IDwriteFontListVtbl
    # PfnGetFamilyNames = proc (self: ptr IDwriteFontFamily; names: var ptr IDwriteLocalizedStrings): WinResult {.w32callback.}
    GetFamilyNames*: FnPointer
    # PfnGetFirstMatchingFont = proc (self: ptr IDwriteFontFamily; weight: DwriteFontWeight; stretch: DwriteFontStretch; style: DwriteFontStyle; matchingFont: var ptr IDwriteFont): WinResult {.w32callback.}
    GetFirstMatchingFont*: FnPointer
    # PfnGetMatchingFonts = proc (self: ptr IDwriteFontFamily; weight: DwriteFontWeight; stretch: DwriteFontStretch; style: DwriteFontStyle; matchingFonts: var ptr IDwriteFontList): WinResult {.w32callback.}
    GetMatchingFonts*: FnPointer
  IDwriteFontCollectionVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetFontFamilyCount = proc (self: ptr IDwriteFontCollection): uint32 {.w32callback.}
    GetFontFamilyCount*: FnPointer
    # PfnGetFontFamily = proc (self: ptr IDwriteFontCollection; index: uint32; fontFamily: var ptr IDwriteFontFamily): WinResult {.w32callback.}
    GetFontFamily*: FnPointer
    # PfnFindFamilyName = proc (self: ptr IDwriteFontCollection; familyName: WtPWSTR; index: var uint32; exists: var WtBOOL): WinResult {.w32callback.}
    FindFamilyName*: FnPointer
    # PfnGetFontFromFontFace = proc (self: ptr IDwriteFontCollection; fontFace: ptr IDwriteFontFace; font: var ptr IDwriteFont): WinResult {.w32callback.}
    GetFontFromFontFace*: FnPointer
  IDwriteFontFileEnumeratorVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnMoveNext = proc (self: ptr IDwriteFontFileEnumerator; hasCurrentFile: var WtBOOL): WinResult {.w32callback.}
    MoveNext*: FnPointer
    # PfnGetCurrentFontFile = proc (self: ptr IDwriteFontFileEnumerator; fontFile: var ptr IDwriteFontFile): WinResult {.w32callback.}
    GetCurrentFontFile*: FnPointer
  IDwriteFontCollectionLoaderVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnCreateEnumeratorFromKey = proc (self: ptr IDwriteFontCollectionLoader; factory: ptr IDwriteFactory; collectionKey: pointer; collectionKeySize: uint32; fontFileEnumerator: var ptr IDwriteFontFileEnumerator): WinResult {.w32callback.}
    CreateEnumeratorFromKey*: FnPointer
  IDwritePixelSnappingVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnIsPixelSnappingDisabled = proc (self: ptr IDwritePixelSnapping; clientDrawingContext: pointer; isDisabled: var WtBOOL): WinResult {.w32callback.}
    IsPixelSnappingDisabled*: FnPointer
    # PfnGetCurrentTransform = proc (self: ptr IDwritePixelSnapping; clientDrawingContext: pointer; transform: var DwriteMatrix): WinResult {.w32callback.}
    GetCurrentTransform*: FnPointer
    # PfnGetPixelsPerDip = proc (self: ptr IDwritePixelSnapping; clientDrawingContext: pointer; pixelsPerDip: var float32): WinResult {.w32callback.}
    GetPixelsPerDip*: FnPointer
  IDwriteTextRendererVtbl* {.pure.} = object
    base*: IDwritePixelSnappingVtbl
    # PfnDrawGlyphRun = proc (self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; measuringMode: DwriteMeasuringMode; glyphRun: DwriteGlyphRun; glyphRunDescription: DwriteGlyphRunDescription; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
    DrawGlyphRun*: FnPointer
    # PfnDrawUnderline = proc (self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; underline: DwriteUnderline; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
    DrawUnderline*: FnPointer
    # PfnDrawStrikethrough = proc (self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; strikethrough: DwriteStrikethrough; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
    DrawStrikethrough*: FnPointer
    # PfnDrawInlineObject = proc (self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; originX: float32; originY: float32; inlineObject: ptr IDwriteInlineObject; isSideways: WtBOOL; isRightToLeft: WtBOOL; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
    DrawInlineObject*: FnPointer
  IDwriteInlineObjectVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnDraw = proc (self: ptr IDwriteInlineObject; clientDrawingContext: pointer; renderer: ptr IDwriteTextRenderer; originX: float32; originY: float32; isSideways: WtBOOL; isRightToLeft: WtBOOL; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
    Draw*: FnPointer
    # PfnGetMetrics = proc (self: ptr IDwriteInlineObject; metrics: var DwriteInlineObjectMetrics): WinResult {.w32callback.}
    GetMetrics*: FnPointer
    # PfnGetOverhangMetrics = proc (self: ptr IDwriteInlineObject; overhangs: var DwriteOverhangMetrics): WinResult {.w32callback.}
    GetOverhangMetrics*: FnPointer
    # PfnGetBreakConditions = proc (self: ptr IDwriteInlineObject; breakConditionBefore: var DwriteBreakCondition; breakConditionAfter: var DwriteBreakCondition): WinResult {.w32callback.}
    GetBreakConditions*: FnPointer
  IDwriteTextFormatVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnSetTextAlignment = proc (self: ptr IDwriteTextFormat; textAlignment: DwriteTextAlignment): WinResult {.w32callback.}
    SetTextAlignment*: FnPointer
    # PfnSetParagraphAlignment = proc (self: ptr IDwriteTextFormat; paragraphAlignment: DwriteParagraphAlignment): WinResult {.w32callback.}
    SetParagraphAlignment*: FnPointer
    # PfnSetWordWrapping = proc (self: ptr IDwriteTextFormat; wordWrapping: DwriteWordWrapping): WinResult {.w32callback.}
    SetWordWrapping*: FnPointer
    # PfnSetReadingDirection = proc (self: ptr IDwriteTextFormat; readingDirection: DwriteReadingDirection): WinResult {.w32callback.}
    SetReadingDirection*: FnPointer
    # PfnSetFlowDirection = proc (self: ptr IDwriteTextFormat; flowDirection: DwriteFlowDirection): WinResult {.w32callback.}
    SetFlowDirection*: FnPointer
    # PfnSetIncrementalTabStop = proc (self: ptr IDwriteTextFormat; incrementalTabStop: float32): WinResult {.w32callback.}
    SetIncrementalTabStop*: FnPointer
    # PfnSetTrimming = proc (self: ptr IDwriteTextFormat; trimmingOptions: DwriteTrimming; trimmingSign: ptr IDwriteInlineObject): WinResult {.w32callback.}
    SetTrimming*: FnPointer
    # PfnSetLineSpacing = proc (self: ptr IDwriteTextFormat; lineSpacingMethod: DwriteLineSpacingMethod; lineSpacing: float32; baseline: float32): WinResult {.w32callback.}
    SetLineSpacing*: FnPointer
    # PfnGetTextAlignment = proc (self: ptr IDwriteTextFormat): DwriteTextAlignment {.w32callback.}
    GetTextAlignment*: FnPointer
    # PfnGetParagraphAlignment = proc (self: ptr IDwriteTextFormat): DwriteParagraphAlignment {.w32callback.}
    GetParagraphAlignment*: FnPointer
    # PfnGetWordWrapping = proc (self: ptr IDwriteTextFormat): DwriteWordWrapping {.w32callback.}
    GetWordWrapping*: FnPointer
    # PfnGetReadingDirection = proc (self: ptr IDwriteTextFormat): DwriteReadingDirection {.w32callback.}
    GetReadingDirection*: FnPointer
    # PfnGetFlowDirection = proc (self: ptr IDwriteTextFormat): DwriteFlowDirection {.w32callback.}
    GetFlowDirection*: FnPointer
    # PfnGetIncrementalTabStop = proc (self: ptr IDwriteTextFormat): float32 {.w32callback.}
    GetIncrementalTabStop*: FnPointer
    # PfnGetTrimming = proc (self: ptr IDwriteTextFormat; trimmingOptions: var DwriteTrimming; trimmingSign: var ptr IDwriteInlineObject): WinResult {.w32callback.}
    GetTrimming*: FnPointer
    # PfnGetLineSpacing = proc (self: ptr IDwriteTextFormat; lineSpacingMethod: var DwriteLineSpacingMethod; lineSpacing: var float32; baseline: var float32): WinResult {.w32callback.}
    GetLineSpacing*: FnPointer
    # PfnGetFontCollection = proc (self: ptr IDwriteTextFormat; fontCollection: var ptr IDwriteFontCollection): WinResult {.w32callback.}
    GetFontCollection*: FnPointer
    # PfnGetFontFamilyNameLength = proc (self: ptr IDwriteTextFormat): uint32 {.w32callback.}
    GetFontFamilyNameLength*: FnPointer
    # PfnGetFontFamilyName = proc (self: ptr IDwriteTextFormat; fontFamilyName: ptr UncheckedArray[uint16]; nameSize: uint32): WinResult {.w32callback.}
    GetFontFamilyName*: FnPointer
    # PfnGetFontWeight = proc (self: ptr IDwriteTextFormat): DwriteFontWeight {.w32callback.}
    GetFontWeight*: FnPointer
    # PfnGetFontStyle = proc (self: ptr IDwriteTextFormat): DwriteFontStyle {.w32callback.}
    GetFontStyle*: FnPointer
    # PfnGetFontStretch = proc (self: ptr IDwriteTextFormat): DwriteFontStretch {.w32callback.}
    GetFontStretch*: FnPointer
    # PfnGetFontSize = proc (self: ptr IDwriteTextFormat): float32 {.w32callback.}
    GetFontSize*: FnPointer
    # PfnGetLocaleNameLength = proc (self: ptr IDwriteTextFormat): uint32 {.w32callback.}
    GetLocaleNameLength*: FnPointer
    # PfnGetLocaleName = proc (self: ptr IDwriteTextFormat; localeName: ptr UncheckedArray[uint16]; nameSize: uint32): WinResult {.w32callback.}
    GetLocaleName*: FnPointer
  IDwriteTypographyVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnAddFontFeature = proc (self: ptr IDwriteTypography; fontFeature: DwriteFontFeature): WinResult {.w32callback.}
    AddFontFeature*: FnPointer
    # PfnGetFontFeatureCount = proc (self: ptr IDwriteTypography): uint32 {.w32callback.}
    GetFontFeatureCount*: FnPointer
    # PfnGetFontFeature = proc (self: ptr IDwriteTypography; fontFeatureIndex: uint32; fontFeature: var DwriteFontFeature): WinResult {.w32callback.}
    GetFontFeature*: FnPointer
  IDwriteBitmapRenderTargetVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnDrawGlyphRun = proc (self: ptr IDwriteBitmapRenderTarget; baselineOriginX: float32; baselineOriginY: float32; measuringMode: DwriteMeasuringMode; glyphRun: DwriteGlyphRun; renderingParams: ptr IDwriteRenderingParams; textColor: uint32; blackBoxRect: ptr WtRECT): WinResult {.w32callback.}
    DrawGlyphRun*: FnPointer
    # PfnGetMemoryDC = proc (self: ptr IDwriteBitmapRenderTarget): WtHDC {.w32callback.}
    GetMemoryDC*: FnPointer
    # PfnGetPixelsPerDip = proc (self: ptr IDwriteBitmapRenderTarget): float32 {.w32callback.}
    GetPixelsPerDip*: FnPointer
    # PfnSetPixelsPerDip = proc (self: ptr IDwriteBitmapRenderTarget; pixelsPerDip: float32): WinResult {.w32callback.}
    SetPixelsPerDip*: FnPointer
    # PfnGetCurrentTransform = proc (self: ptr IDwriteBitmapRenderTarget; transform: var DwriteMatrix): WinResult {.w32callback.}
    GetCurrentTransform*: FnPointer
    # PfnSetCurrentTransform = proc (self: ptr IDwriteBitmapRenderTarget; transform: ptr DwriteMatrix): WinResult {.w32callback.}
    SetCurrentTransform*: FnPointer
    # PfnGetSize = proc (self: ptr IDwriteBitmapRenderTarget; size: var WtSIZE): WinResult {.w32callback.}
    GetSize*: FnPointer
    # PfnResize = proc (self: ptr IDwriteBitmapRenderTarget; width: uint32; height: uint32): WinResult {.w32callback.}
    Resize*: FnPointer
  IDwriteGdiInteropVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnCreateFontFromLOGFONT = proc (self: ptr IDwriteGdiInterop; logFont: WtLOGFONTW; font: var ptr IDwriteFont): WinResult {.w32callback.}
    CreateFontFromLOGFONT*: FnPointer
    # PfnConvertFontToLOGFONT = proc (self: ptr IDwriteGdiInterop; font: ptr IDwriteFont; logFont: var WtLOGFONTW; isSystemFont: var WtBOOL): WinResult {.w32callback.}
    ConvertFontToLOGFONT*: FnPointer
    # PfnConvertFontFaceToLOGFONT = proc (self: ptr IDwriteGdiInterop; font: ptr IDwriteFontFace; logFont: var WtLOGFONTW): WinResult {.w32callback.}
    ConvertFontFaceToLOGFONT*: FnPointer
    # PfnCreateFontFaceFromHdc = proc (self: ptr IDwriteGdiInterop; hdc: WtHDC; fontFace: var ptr IDwriteFontFace): WinResult {.w32callback.}
    CreateFontFaceFromHdc*: FnPointer
    # PfnCreateBitmapRenderTarget = proc (self: ptr IDwriteGdiInterop; hdc: WtHDC; width: uint32; height: uint32; renderTarget: var ptr IDwriteBitmapRenderTarget): WinResult {.w32callback.}
    CreateBitmapRenderTarget*: FnPointer
  IDwriteTextLayoutVtbl* {.pure.} = object
    base*: IDwriteTextFormatVtbl
    # PfnSetMaxWidth = proc (self: ptr IDwriteTextLayout; maxWidth: float32): WinResult {.w32callback.}
    SetMaxWidth*: FnPointer
    # PfnSetMaxHeight = proc (self: ptr IDwriteTextLayout; maxHeight: float32): WinResult {.w32callback.}
    SetMaxHeight*: FnPointer
    # PfnSetFontCollection = proc (self: ptr IDwriteTextLayout; fontCollection: ptr IDwriteFontCollection; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetFontCollection*: FnPointer
    # PfnSetFontFamilyName = proc (self: ptr IDwriteTextLayout; fontFamilyName: WtPWSTR; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetFontFamilyName*: FnPointer
    # PfnSetFontWeight = proc (self: ptr IDwriteTextLayout; fontWeight: DwriteFontWeight; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetFontWeight*: FnPointer
    # PfnSetFontStyle = proc (self: ptr IDwriteTextLayout; fontStyle: DwriteFontStyle; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetFontStyle*: FnPointer
    # PfnSetFontStretch = proc (self: ptr IDwriteTextLayout; fontStretch: DwriteFontStretch; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetFontStretch*: FnPointer
    # PfnSetFontSize = proc (self: ptr IDwriteTextLayout; fontSize: float32; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetFontSize*: FnPointer
    # PfnSetUnderline = proc (self: ptr IDwriteTextLayout; hasUnderline: WtBOOL; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetUnderline*: FnPointer
    # PfnSetStrikethrough = proc (self: ptr IDwriteTextLayout; hasStrikethrough: WtBOOL; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetStrikethrough*: FnPointer
    # PfnSetDrawingEffect = proc (self: ptr IDwriteTextLayout; drawingEffect: ptr IUnknown; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetDrawingEffect*: FnPointer
    # PfnSetInlineObject = proc (self: ptr IDwriteTextLayout; inlineObject: ptr IDwriteInlineObject; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetInlineObject*: FnPointer
    # PfnSetTypography = proc (self: ptr IDwriteTextLayout; typography: ptr IDwriteTypography; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetTypography*: FnPointer
    # PfnSetLocaleName = proc (self: ptr IDwriteTextLayout; localeName: WtPWSTR; textRange: DwriteTextRange): WinResult {.w32callback.}
    SetLocaleName*: FnPointer
    # PfnGetMaxWidth = proc (self: ptr IDwriteTextLayout): float32 {.w32callback.}
    GetMaxWidth*: FnPointer
    # PfnGetMaxHeight = proc (self: ptr IDwriteTextLayout): float32 {.w32callback.}
    GetMaxHeight*: FnPointer
    # PfnGetFontCollection = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; fontCollection: var ptr IDwriteFontCollection; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetFontCollection*: FnPointer
    # PfnGetFontFamilyNameLength = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; nameLength: var uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetFontFamilyNameLength*: FnPointer
    # PfnGetFontFamilyName = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; fontFamilyName: ptr UncheckedArray[uint16]; nameSize: uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetFontFamilyName*: FnPointer
    # PfnGetFontWeight = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; fontWeight: var DwriteFontWeight; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetFontWeight*: FnPointer
    # PfnGetFontStyle = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; fontStyle: var DwriteFontStyle; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetFontStyle*: FnPointer
    # PfnGetFontStretch = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; fontStretch: var DwriteFontStretch; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetFontStretch*: FnPointer
    # PfnGetFontSize = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; fontSize: var float32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetFontSize*: FnPointer
    # PfnGetUnderline = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; hasUnderline: var WtBOOL; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetUnderline*: FnPointer
    # PfnGetStrikethrough = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; hasStrikethrough: var WtBOOL; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetStrikethrough*: FnPointer
    # PfnGetDrawingEffect = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; drawingEffect: var ptr IUnknown; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetDrawingEffect*: FnPointer
    # PfnGetInlineObject = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; inlineObject: var ptr IDwriteInlineObject; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetInlineObject*: FnPointer
    # PfnGetTypography = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; typography: var ptr IDwriteTypography; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetTypography*: FnPointer
    # PfnGetLocaleNameLength = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; nameLength: var uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetLocaleNameLength*: FnPointer
    # PfnGetLocaleName = proc (self: ptr IDwriteTextLayout; currentPosition: uint32; localeName: ptr UncheckedArray[uint16]; nameSize: uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
    GetLocaleName*: FnPointer
    # PfnDraw = proc (self: ptr IDwriteTextLayout; clientDrawingContext: pointer; renderer: ptr IDwriteTextRenderer; originX: float32; originY: float32): WinResult {.w32callback.}
    Draw*: FnPointer
    # PfnGetLineMetrics = proc (self: ptr IDwriteTextLayout; lineMetrics: ptr UncheckedArray[DwriteLineMetrics]; maxLineCount: uint32; actualLineCount: var uint32): WinResult {.w32callback.}
    GetLineMetrics*: FnPointer
    # PfnGetMetrics = proc (self: ptr IDwriteTextLayout; textMetrics: var DwriteTextMetrics): WinResult {.w32callback.}
    GetMetrics*: FnPointer
    # PfnGetOverhangMetrics = proc (self: ptr IDwriteTextLayout; overhangs: var DwriteOverhangMetrics): WinResult {.w32callback.}
    GetOverhangMetrics*: FnPointer
    # PfnGetClusterMetrics = proc (self: ptr IDwriteTextLayout; clusterMetrics: ptr UncheckedArray[DwriteClusterMetrics]; maxClusterCount: uint32; actualClusterCount: var uint32): WinResult {.w32callback.}
    GetClusterMetrics*: FnPointer
    # PfnDetermineMinWidth = proc (self: ptr IDwriteTextLayout; minWidth: var float32): WinResult {.w32callback.}
    DetermineMinWidth*: FnPointer
    # PfnHitTestPoint = proc (self: ptr IDwriteTextLayout; pointX: float32; pointY: float32; isTrailingHit: var WtBOOL; isInside: var WtBOOL; hitTestMetrics: var DwriteHitTestMetrics): WinResult {.w32callback.}
    HitTestPoint*: FnPointer
    # PfnHitTestTextPosition = proc (self: ptr IDwriteTextLayout; textPosition: uint32; isTrailingHit: WtBOOL; pointX: var float32; pointY: var float32; hitTestMetrics: var DwriteHitTestMetrics): WinResult {.w32callback.}
    HitTestTextPosition*: FnPointer
    # PfnHitTestTextRange = proc (self: ptr IDwriteTextLayout; textPosition: uint32; textLength: uint32; originX: float32; originY: float32; hitTestMetrics: ptr UncheckedArray[DwriteHitTestMetrics]; maxHitTestMetricsCount: uint32; actualHitTestMetricsCount: var uint32): WinResult {.w32callback.}
    HitTestTextRange*: FnPointer
  IDwriteNumberSubstitutionVtbl* {.pure.} = object
    base*: IUnknownVtbl
  IDwriteTextAnalysisSourceVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetTextAtPosition = proc (self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textString: var ptr uint16; textLength: var uint32): WinResult {.w32callback.}
    GetTextAtPosition*: FnPointer
    # PfnGetTextBeforePosition = proc (self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textString: var ptr uint16; textLength: var uint32): WinResult {.w32callback.}
    GetTextBeforePosition*: FnPointer
    # PfnGetParagraphReadingDirection = proc (self: ptr IDwriteTextAnalysisSource): DwriteReadingDirection {.w32callback.}
    GetParagraphReadingDirection*: FnPointer
    # PfnGetLocaleName = proc (self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: var uint32; localeName: var ptr uint16): WinResult {.w32callback.}
    GetLocaleName*: FnPointer
    # PfnGetNumberSubstitution = proc (self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: var uint32; numberSubstitution: var ptr IDwriteNumberSubstitution): WinResult {.w32callback.}
    GetNumberSubstitution*: FnPointer
  IDwriteTextAnalysisSinkVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnSetScriptAnalysis = proc (self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; scriptAnalysis: ptr DwriteScriptAnalysis): WinResult {.w32callback.}
    SetScriptAnalysis*: FnPointer
    # PfnSetLineBreakpoints = proc (self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; lineBreakpoints: ptr UncheckedArray[DwriteLineBreakpoint]): WinResult {.w32callback.}
    SetLineBreakpoints*: FnPointer
    # PfnSetBidiLevel = proc (self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; explicitLevel: uint8; resolvedLevel: uint8): WinResult {.w32callback.}
    SetBidiLevel*: FnPointer
    # PfnSetNumberSubstitution = proc (self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; numberSubstitution: ptr IDwriteNumberSubstitution): WinResult {.w32callback.}
    SetNumberSubstitution*: FnPointer
  IDwriteTextAnalyzerVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnAnalyzeScript = proc (self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
    AnalyzeScript*: FnPointer
    # PfnAnalyzeBidi = proc (self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
    AnalyzeBidi*: FnPointer
    # PfnAnalyzeNumberSubstitution = proc (self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
    AnalyzeNumberSubstitution*: FnPointer
    # PfnAnalyzeLineBreakpoints = proc (self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
    AnalyzeLineBreakpoints*: FnPointer
    # PfnGetGlyphs = proc (self: ptr IDwriteTextAnalyzer; textString: ptr UncheckedArray[uint16]; textLength: uint32; fontFace: ptr IDwriteFontFace; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; numberSubstitution: ptr IDwriteNumberSubstitution; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; maxGlyphCount: uint32; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; actualGlyphCount: var uint32): WinResult {.w32callback.}
    GetGlyphs*: FnPointer
    # PfnGetGlyphPlacements = proc (self: ptr IDwriteTextAnalyzer; textString: ptr UncheckedArray[uint16]; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; textLength: uint32; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; glyphCount: uint32; fontFace: ptr IDwriteFontFace; fontEmSize: float32; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]): WinResult {.w32callback.}
    GetGlyphPlacements*: FnPointer
    # PfnGetGdiCompatibleGlyphPlacements = proc (self: ptr IDwriteTextAnalyzer; textString: ptr UncheckedArray[uint16]; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; textLength: uint32; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; glyphCount: uint32; fontFace: ptr IDwriteFontFace; fontEmSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]): WinResult {.w32callback.}
    GetGdiCompatibleGlyphPlacements*: FnPointer
  IDwriteGlyphRunAnalysisVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetAlphaTextureBounds = proc (self: ptr IDwriteGlyphRunAnalysis; textureType: DwriteTextureType; textureBounds: var WtRECT): WinResult {.w32callback.}
    GetAlphaTextureBounds*: FnPointer
    # PfnCreateAlphaTexture = proc (self: ptr IDwriteGlyphRunAnalysis; textureType: DwriteTextureType; textureBounds: ptr WtRECT; alphaValues: var uint8; bufferSize: uint32): WinResult {.w32callback.}
    CreateAlphaTexture*: FnPointer
    # PfnGetAlphaBlendParams = proc (self: ptr IDwriteGlyphRunAnalysis; renderingParams: ptr IDwriteRenderingParams; blendGamma: var float32; blendEnhancedContrast: var float32; blendClearTypeLevel: var float32): WinResult {.w32callback.}
    GetAlphaBlendParams*: FnPointer
  IDwriteFactoryVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetSystemFontCollection = proc (self: ptr IDwriteFactory; fontCollection: var ptr IDwriteFontCollection; checkForUpdates: WtBOOL): WinResult {.w32callback.}
    GetSystemFontCollection*: FnPointer
    # PfnCreateCustomFontCollection = proc (self: ptr IDwriteFactory; collectionLoader: ptr IDwriteFontCollectionLoader; collectionKey: pointer; collectionKeySize: uint32; fontCollection: var ptr IDwriteFontCollection): WinResult {.w32callback.}
    CreateCustomFontCollection*: FnPointer
    # PfnRegisterFontCollectionLoader = proc (self: ptr IDwriteFactory; fontCollectionLoader: ptr IDwriteFontCollectionLoader): WinResult {.w32callback.}
    RegisterFontCollectionLoader*: FnPointer
    # PfnUnregisterFontCollectionLoader = proc (self: ptr IDwriteFactory; fontCollectionLoader: ptr IDwriteFontCollectionLoader): WinResult {.w32callback.}
    UnregisterFontCollectionLoader*: FnPointer
    # PfnCreateFontFileReference = proc (self: ptr IDwriteFactory; filePath: WtPWSTR; lastWriteTime: ptr WtFILETIME; fontFile: var ptr IDwriteFontFile): WinResult {.w32callback.}
    CreateFontFileReference*: FnPointer
    # PfnCreateCustomFontFileReference = proc (self: ptr IDwriteFactory; fontFileReferenceKey: pointer; fontFileReferenceKeySize: uint32; fontFileLoader: ptr IDwriteFontFileLoader; fontFile: var ptr IDwriteFontFile): WinResult {.w32callback.}
    CreateCustomFontFileReference*: FnPointer
    # PfnCreateFontFace = proc (self: ptr IDwriteFactory; fontFaceType: DwriteFontFaceType; numberOfFiles: uint32; fontFiles: ptr UncheckedArray[ptr IDwriteFontFile]; faceIndex: uint32; fontFaceSimulationFlags: DwriteFontSimulations; fontFace: var ptr IDwriteFontFace): WinResult {.w32callback.}
    CreateFontFace*: FnPointer
    # PfnCreateRenderingParams = proc (self: ptr IDwriteFactory; renderingParams: var ptr IDwriteRenderingParams): WinResult {.w32callback.}
    CreateRenderingParams*: FnPointer
    # PfnCreateMonitorRenderingParams = proc (self: ptr IDwriteFactory; monitor: WtHMONITOR; renderingParams: var ptr IDwriteRenderingParams): WinResult {.w32callback.}
    CreateMonitorRenderingParams*: FnPointer
    # PfnCreateCustomRenderingParams = proc (self: ptr IDwriteFactory; gamma: float32; enhancedContrast: float32; clearTypeLevel: float32; pixelGeometry: DwritePixelGeometry; renderingMode: DwriteRenderingMode; renderingParams: var ptr IDwriteRenderingParams): WinResult {.w32callback.}
    CreateCustomRenderingParams*: FnPointer
    # PfnRegisterFontFileLoader = proc (self: ptr IDwriteFactory; fontFileLoader: ptr IDwriteFontFileLoader): WinResult {.w32callback.}
    RegisterFontFileLoader*: FnPointer
    # PfnUnregisterFontFileLoader = proc (self: ptr IDwriteFactory; fontFileLoader: ptr IDwriteFontFileLoader): WinResult {.w32callback.}
    UnregisterFontFileLoader*: FnPointer
    # PfnCreateTextFormat = proc (self: ptr IDwriteFactory; fontFamilyName: WtPWSTR; fontCollection: ptr IDwriteFontCollection; fontWeight: DwriteFontWeight; fontStyle: DwriteFontStyle; fontStretch: DwriteFontStretch; fontSize: float32; localeName: WtPWSTR; textFormat: var ptr IDwriteTextFormat): WinResult {.w32callback.}
    CreateTextFormat*: FnPointer
    # PfnCreateTypography = proc (self: ptr IDwriteFactory; typography: var ptr IDwriteTypography): WinResult {.w32callback.}
    CreateTypography*: FnPointer
    # PfnGetGdiInterop = proc (self: ptr IDwriteFactory; gdiInterop: var ptr IDwriteGdiInterop): WinResult {.w32callback.}
    GetGdiInterop*: FnPointer
    # PfnCreateTextLayout = proc (self: ptr IDwriteFactory; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDwriteTextFormat; maxWidth: float32; maxHeight: float32; textLayout: var ptr IDwriteTextLayout): WinResult {.w32callback.}
    CreateTextLayout*: FnPointer
    # PfnCreateGdiCompatibleTextLayout = proc (self: ptr IDwriteFactory; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDwriteTextFormat; layoutWidth: float32; layoutHeight: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; textLayout: var ptr IDwriteTextLayout): WinResult {.w32callback.}
    CreateGdiCompatibleTextLayout*: FnPointer
    # PfnCreateEllipsisTrimmingSign = proc (self: ptr IDwriteFactory; textFormat: ptr IDwriteTextFormat; trimmingSign: var ptr IDwriteInlineObject): WinResult {.w32callback.}
    CreateEllipsisTrimmingSign*: FnPointer
    # PfnCreateTextAnalyzer = proc (self: ptr IDwriteFactory; textAnalyzer: var ptr IDwriteTextAnalyzer): WinResult {.w32callback.}
    CreateTextAnalyzer*: FnPointer
    # PfnCreateNumberSubstitution = proc (self: ptr IDwriteFactory; substitutionMethod: DwriteNumberSubstitutionMethod; localeName: WtPWSTR; ignoreUserOverride: WtBOOL; numberSubstitution: var ptr IDwriteNumberSubstitution): WinResult {.w32callback.}
    CreateNumberSubstitution*: FnPointer
    # PfnCreateGlyphRunAnalysis = proc (self: ptr IDwriteFactory; glyphRun: DwriteGlyphRun; pixelsPerDip: float32; transform: ptr DwriteMatrix; renderingMode: DwriteRenderingMode; measuringMode: DwriteMeasuringMode; baselineOriginX: float32; baselineOriginY: float32; glyphRunAnalysis: var ptr IDwriteGlyphRunAnalysis): WinResult {.w32callback.}
    CreateGlyphRunAnalysis*: FnPointer

proc wpDWriteCreateFactory*(factoryType: DwriteFactoryType; iid: ptr WinGuid; factory: var ptr IUnknown): WinResult {.importc: "DWriteCreateFactory", dllproc_DWrite.}
proc getCount*(self: ptr IDwriteLocalizedStrings): uint32 {.inline, raises: [].} =
  type PfnGetCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetCount](cast[ptr IDwriteLocalizedStringsVtbl](self.vtbl).GetCount)(self)
proc findLocaleName*(self: ptr IDwriteLocalizedStrings; localeName: WtPWSTR; index: var uint32; exists: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnFindLocaleName = proc (self: pointer; localeName: WtPWSTR; index: var uint32; exists: var WtBOOL): WinResult {.w32callback.}
  cast[PfnFindLocaleName](cast[ptr IDwriteLocalizedStringsVtbl](self.vtbl).FindLocaleName)(self, localeName, index, exists)
proc getLocaleNameLength*(self: ptr IDwriteLocalizedStrings; index: uint32; length: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetLocaleNameLength = proc (self: pointer; index: uint32; length: var uint32): WinResult {.w32callback.}
  cast[PfnGetLocaleNameLength](cast[ptr IDwriteLocalizedStringsVtbl](self.vtbl).GetLocaleNameLength)(self, index, length)
proc getLocaleName*(self: ptr IDwriteLocalizedStrings; index: uint32; localeName: ptr UncheckedArray[uint16]; size: uint32): WinResult {.inline, raises: [].} =
  type PfnGetLocaleName = proc (self: pointer; index: uint32; localeName: ptr UncheckedArray[uint16]; size: uint32): WinResult {.w32callback.}
  cast[PfnGetLocaleName](cast[ptr IDwriteLocalizedStringsVtbl](self.vtbl).GetLocaleName)(self, index, localeName, size)
proc getStringLength*(self: ptr IDwriteLocalizedStrings; index: uint32; length: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetStringLength = proc (self: pointer; index: uint32; length: var uint32): WinResult {.w32callback.}
  cast[PfnGetStringLength](cast[ptr IDwriteLocalizedStringsVtbl](self.vtbl).GetStringLength)(self, index, length)
proc getString*(self: ptr IDwriteLocalizedStrings; index: uint32; stringBuffer: ptr UncheckedArray[uint16]; size: uint32): WinResult {.inline, raises: [].} =
  type PfnGetString = proc (self: pointer; index: uint32; stringBuffer: ptr UncheckedArray[uint16]; size: uint32): WinResult {.w32callback.}
  cast[PfnGetString](cast[ptr IDwriteLocalizedStringsVtbl](self.vtbl).GetString)(self, index, stringBuffer, size)
proc readFileFragment*(self: ptr IDwriteFontFileStream; fragmentStart: var pointer; fileOffset: uint64; fragmentSize: uint64; fragmentContext: var pointer): WinResult {.inline, raises: [].} =
  type PfnReadFileFragment = proc (self: pointer; fragmentStart: var pointer; fileOffset: uint64; fragmentSize: uint64; fragmentContext: var pointer): WinResult {.w32callback.}
  cast[PfnReadFileFragment](cast[ptr IDwriteFontFileStreamVtbl](self.vtbl).ReadFileFragment)(self, fragmentStart, fileOffset, fragmentSize, fragmentContext)
proc releaseFileFragment*(self: ptr IDwriteFontFileStream; fragmentContext: pointer): void {.inline, raises: [].} =
  type PfnReleaseFileFragment = proc (self: pointer; fragmentContext: pointer): void {.w32callback.}
  cast[PfnReleaseFileFragment](cast[ptr IDwriteFontFileStreamVtbl](self.vtbl).ReleaseFileFragment)(self, fragmentContext)
proc getFileSize*(self: ptr IDwriteFontFileStream; fileSize: var uint64): WinResult {.inline, raises: [].} =
  type PfnGetFileSize = proc (self: pointer; fileSize: var uint64): WinResult {.w32callback.}
  cast[PfnGetFileSize](cast[ptr IDwriteFontFileStreamVtbl](self.vtbl).GetFileSize)(self, fileSize)
proc getLastWriteTime*(self: ptr IDwriteFontFileStream; lastWriteTime: var uint64): WinResult {.inline, raises: [].} =
  type PfnGetLastWriteTime = proc (self: pointer; lastWriteTime: var uint64): WinResult {.w32callback.}
  cast[PfnGetLastWriteTime](cast[ptr IDwriteFontFileStreamVtbl](self.vtbl).GetLastWriteTime)(self, lastWriteTime)
proc createStreamFromKey*(self: ptr IDwriteFontFileLoader; fontFileReferenceKey: pointer; fontFileReferenceKeySize: uint32; fontFileStream: var ptr IDwriteFontFileStream): WinResult {.inline, raises: [].} =
  type PfnCreateStreamFromKey = proc (self: pointer; fontFileReferenceKey: pointer; fontFileReferenceKeySize: uint32; fontFileStream: var ptr IDwriteFontFileStream): WinResult {.w32callback.}
  cast[PfnCreateStreamFromKey](cast[ptr IDwriteFontFileLoaderVtbl](self.vtbl).CreateStreamFromKey)(self, fontFileReferenceKey, fontFileReferenceKeySize, fontFileStream)
proc getReferenceKey*(self: ptr IDwriteFontFile; fontFileReferenceKey: var pointer; fontFileReferenceKeySize: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetReferenceKey = proc (self: pointer; fontFileReferenceKey: var pointer; fontFileReferenceKeySize: var uint32): WinResult {.w32callback.}
  cast[PfnGetReferenceKey](cast[ptr IDwriteFontFileVtbl](self.vtbl).GetReferenceKey)(self, fontFileReferenceKey, fontFileReferenceKeySize)
proc getLoader*(self: ptr IDwriteFontFile; fontFileLoader: var ptr IDwriteFontFileLoader): WinResult {.inline, raises: [].} =
  type PfnGetLoader = proc (self: pointer; fontFileLoader: var ptr IDwriteFontFileLoader): WinResult {.w32callback.}
  cast[PfnGetLoader](cast[ptr IDwriteFontFileVtbl](self.vtbl).GetLoader)(self, fontFileLoader)
proc analyze*(self: ptr IDwriteFontFile; isSupportedFontType: var WtBOOL; fontFileType: var DwriteFontFileType; fontFaceType: ptr DwriteFontFaceType; numberOfFaces: var uint32): WinResult {.inline, raises: [].} =
  type PfnAnalyze = proc (self: pointer; isSupportedFontType: var WtBOOL; fontFileType: var DwriteFontFileType; fontFaceType: ptr DwriteFontFaceType; numberOfFaces: var uint32): WinResult {.w32callback.}
  cast[PfnAnalyze](cast[ptr IDwriteFontFileVtbl](self.vtbl).Analyze)(self, isSupportedFontType, fontFileType, fontFaceType, numberOfFaces)
proc getGamma*(self: ptr IDwriteRenderingParams): float32 {.inline, raises: [].} =
  type PfnGetGamma = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetGamma](cast[ptr IDwriteRenderingParamsVtbl](self.vtbl).GetGamma)(self)
proc getEnhancedContrast*(self: ptr IDwriteRenderingParams): float32 {.inline, raises: [].} =
  type PfnGetEnhancedContrast = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetEnhancedContrast](cast[ptr IDwriteRenderingParamsVtbl](self.vtbl).GetEnhancedContrast)(self)
proc getClearTypeLevel*(self: ptr IDwriteRenderingParams): float32 {.inline, raises: [].} =
  type PfnGetClearTypeLevel = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetClearTypeLevel](cast[ptr IDwriteRenderingParamsVtbl](self.vtbl).GetClearTypeLevel)(self)
proc getPixelGeometry*(self: ptr IDwriteRenderingParams): DwritePixelGeometry {.inline, raises: [].} =
  type PfnGetPixelGeometry = proc (self: pointer): DwritePixelGeometry {.w32callback.}
  cast[PfnGetPixelGeometry](cast[ptr IDwriteRenderingParamsVtbl](self.vtbl).GetPixelGeometry)(self)
proc getRenderingMode*(self: ptr IDwriteRenderingParams): DwriteRenderingMode {.inline, raises: [].} =
  type PfnGetRenderingMode = proc (self: pointer): DwriteRenderingMode {.w32callback.}
  cast[PfnGetRenderingMode](cast[ptr IDwriteRenderingParamsVtbl](self.vtbl).GetRenderingMode)(self)
proc getType*(self: ptr IDwriteFontFace): DwriteFontFaceType {.inline, raises: [].} =
  type PfnGetType = proc (self: pointer): DwriteFontFaceType {.w32callback.}
  cast[PfnGetType](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetType)(self)
proc getFiles*(self: ptr IDwriteFontFace; numberOfFiles: var uint32; fontFiles: ptr UncheckedArray[ptr IDwriteFontFile]): WinResult {.inline, raises: [].} =
  type PfnGetFiles = proc (self: pointer; numberOfFiles: var uint32; fontFiles: ptr UncheckedArray[ptr IDwriteFontFile]): WinResult {.w32callback.}
  cast[PfnGetFiles](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetFiles)(self, numberOfFiles, fontFiles)
proc getIndex*(self: ptr IDwriteFontFace): uint32 {.inline, raises: [].} =
  type PfnGetIndex = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetIndex](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetIndex)(self)
proc getSimulations*(self: ptr IDwriteFontFace): DwriteFontSimulations {.inline, raises: [].} =
  type PfnGetSimulations = proc (self: pointer): DwriteFontSimulations {.w32callback.}
  cast[PfnGetSimulations](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetSimulations)(self)
proc isSymbolFont*(self: ptr IDwriteFontFace): WtBOOL {.inline, raises: [].} =
  type PfnIsSymbolFont = proc (self: pointer): WtBOOL {.w32callback.}
  cast[PfnIsSymbolFont](cast[ptr IDwriteFontFaceVtbl](self.vtbl).IsSymbolFont)(self)
proc getMetrics*(self: ptr IDwriteFontFace; fontFaceMetrics: var DwriteFontMetrics): void {.inline, raises: [].} =
  type PfnGetMetrics = proc (self: pointer; fontFaceMetrics: var DwriteFontMetrics): void {.w32callback.}
  cast[PfnGetMetrics](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetMetrics)(self, fontFaceMetrics)
proc getGlyphCount*(self: ptr IDwriteFontFace): uint16 {.inline, raises: [].} =
  type PfnGetGlyphCount = proc (self: pointer): uint16 {.w32callback.}
  cast[PfnGetGlyphCount](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetGlyphCount)(self)
proc getDesignGlyphMetrics*(self: ptr IDwriteFontFace; glyphIndices: ptr UncheckedArray[uint16]; glyphCount: uint32; glyphMetrics: ptr UncheckedArray[DwriteGlyphMetrics]; isSideways: WtBOOL): WinResult {.inline, raises: [].} =
  type PfnGetDesignGlyphMetrics = proc (self: pointer; glyphIndices: ptr UncheckedArray[uint16]; glyphCount: uint32; glyphMetrics: ptr UncheckedArray[DwriteGlyphMetrics]; isSideways: WtBOOL): WinResult {.w32callback.}
  cast[PfnGetDesignGlyphMetrics](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetDesignGlyphMetrics)(self, glyphIndices, glyphCount, glyphMetrics, isSideways)
proc getGlyphIndices*(self: ptr IDwriteFontFace; codePoints: ptr UncheckedArray[uint32]; codePointCount: uint32; glyphIndices: ptr UncheckedArray[uint16]): WinResult {.inline, raises: [].} =
  type PfnGetGlyphIndices = proc (self: pointer; codePoints: ptr UncheckedArray[uint32]; codePointCount: uint32; glyphIndices: ptr UncheckedArray[uint16]): WinResult {.w32callback.}
  cast[PfnGetGlyphIndices](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetGlyphIndices)(self, codePoints, codePointCount, glyphIndices)
proc tryGetFontTable*(self: ptr IDwriteFontFace; openTypeTableTag: uint32; tableData: var pointer; tableSize: var uint32; tableContext: var pointer; exists: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnTryGetFontTable = proc (self: pointer; openTypeTableTag: uint32; tableData: var pointer; tableSize: var uint32; tableContext: var pointer; exists: var WtBOOL): WinResult {.w32callback.}
  cast[PfnTryGetFontTable](cast[ptr IDwriteFontFaceVtbl](self.vtbl).TryGetFontTable)(self, openTypeTableTag, tableData, tableSize, tableContext, exists)
proc releaseFontTable*(self: ptr IDwriteFontFace; tableContext: pointer): void {.inline, raises: [].} =
  type PfnReleaseFontTable = proc (self: pointer; tableContext: pointer): void {.w32callback.}
  cast[PfnReleaseFontTable](cast[ptr IDwriteFontFaceVtbl](self.vtbl).ReleaseFontTable)(self, tableContext)
proc getGlyphRunOutline*(self: ptr IDwriteFontFace; emSize: float32; glyphIndices: ptr UncheckedArray[uint16]; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]; glyphCount: uint32; isSideways: WtBOOL; isRightToLeft: WtBOOL; geometrySink: ptr ID2D1SimplifiedGeometrySink): WinResult {.inline, raises: [].} =
  type PfnGetGlyphRunOutline = proc (self: pointer; emSize: float32; glyphIndices: ptr UncheckedArray[uint16]; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]; glyphCount: uint32; isSideways: WtBOOL; isRightToLeft: WtBOOL; geometrySink: ptr ID2D1SimplifiedGeometrySink): WinResult {.w32callback.}
  cast[PfnGetGlyphRunOutline](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetGlyphRunOutline)(self, emSize, glyphIndices, glyphAdvances, glyphOffsets, glyphCount, isSideways, isRightToLeft, geometrySink)
proc getRecommendedRenderingMode*(self: ptr IDwriteFontFace; emSize: float32; pixelsPerDip: float32; measuringMode: DwriteMeasuringMode; renderingParams: ptr IDwriteRenderingParams; renderingMode: var DwriteRenderingMode): WinResult {.inline, raises: [].} =
  type PfnGetRecommendedRenderingMode = proc (self: pointer; emSize: float32; pixelsPerDip: float32; measuringMode: DwriteMeasuringMode; renderingParams: ptr IDwriteRenderingParams; renderingMode: var DwriteRenderingMode): WinResult {.w32callback.}
  cast[PfnGetRecommendedRenderingMode](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetRecommendedRenderingMode)(self, emSize, pixelsPerDip, measuringMode, renderingParams, renderingMode)
proc getGdiCompatibleMetrics*(self: ptr IDwriteFontFace; emSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; fontFaceMetrics: var DwriteFontMetrics): WinResult {.inline, raises: [].} =
  type PfnGetGdiCompatibleMetrics = proc (self: pointer; emSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; fontFaceMetrics: var DwriteFontMetrics): WinResult {.w32callback.}
  cast[PfnGetGdiCompatibleMetrics](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetGdiCompatibleMetrics)(self, emSize, pixelsPerDip, transform, fontFaceMetrics)
proc getGdiCompatibleGlyphMetrics*(self: ptr IDwriteFontFace; emSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; glyphIndices: ptr UncheckedArray[uint16]; glyphCount: uint32; glyphMetrics: ptr UncheckedArray[DwriteGlyphMetrics]; isSideways: WtBOOL): WinResult {.inline, raises: [].} =
  type PfnGetGdiCompatibleGlyphMetrics = proc (self: pointer; emSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; glyphIndices: ptr UncheckedArray[uint16]; glyphCount: uint32; glyphMetrics: ptr UncheckedArray[DwriteGlyphMetrics]; isSideways: WtBOOL): WinResult {.w32callback.}
  cast[PfnGetGdiCompatibleGlyphMetrics](cast[ptr IDwriteFontFaceVtbl](self.vtbl).GetGdiCompatibleGlyphMetrics)(self, emSize, pixelsPerDip, transform, useGdiNatural, glyphIndices, glyphCount, glyphMetrics, isSideways)
proc getFontFamily*(self: ptr IDwriteFont; fontFamily: var ptr IDwriteFontFamily): WinResult {.inline, raises: [].} =
  type PfnGetFontFamily = proc (self: pointer; fontFamily: var ptr IDwriteFontFamily): WinResult {.w32callback.}
  cast[PfnGetFontFamily](cast[ptr IDwriteFontVtbl](self.vtbl).GetFontFamily)(self, fontFamily)
proc getWeight*(self: ptr IDwriteFont): DwriteFontWeight {.inline, raises: [].} =
  type PfnGetWeight = proc (self: pointer): DwriteFontWeight {.w32callback.}
  cast[PfnGetWeight](cast[ptr IDwriteFontVtbl](self.vtbl).GetWeight)(self)
proc getStretch*(self: ptr IDwriteFont): DwriteFontStretch {.inline, raises: [].} =
  type PfnGetStretch = proc (self: pointer): DwriteFontStretch {.w32callback.}
  cast[PfnGetStretch](cast[ptr IDwriteFontVtbl](self.vtbl).GetStretch)(self)
proc getStyle*(self: ptr IDwriteFont): DwriteFontStyle {.inline, raises: [].} =
  type PfnGetStyle = proc (self: pointer): DwriteFontStyle {.w32callback.}
  cast[PfnGetStyle](cast[ptr IDwriteFontVtbl](self.vtbl).GetStyle)(self)
proc isSymbolFont*(self: ptr IDwriteFont): WtBOOL {.inline, raises: [].} =
  type PfnIsSymbolFont = proc (self: pointer): WtBOOL {.w32callback.}
  cast[PfnIsSymbolFont](cast[ptr IDwriteFontVtbl](self.vtbl).IsSymbolFont)(self)
proc getFaceNames*(self: ptr IDwriteFont; names: var ptr IDwriteLocalizedStrings): WinResult {.inline, raises: [].} =
  type PfnGetFaceNames = proc (self: pointer; names: var ptr IDwriteLocalizedStrings): WinResult {.w32callback.}
  cast[PfnGetFaceNames](cast[ptr IDwriteFontVtbl](self.vtbl).GetFaceNames)(self, names)
proc getInformationalStrings*(self: ptr IDwriteFont; informationalStringID: DwriteInformationalStringId; informationalStrings: ptr ptr IDwriteLocalizedStrings; exists: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnGetInformationalStrings = proc (self: pointer; informationalStringID: DwriteInformationalStringId; informationalStrings: ptr ptr IDwriteLocalizedStrings; exists: var WtBOOL): WinResult {.w32callback.}
  cast[PfnGetInformationalStrings](cast[ptr IDwriteFontVtbl](self.vtbl).GetInformationalStrings)(self, informationalStringID, informationalStrings, exists)
proc getSimulations*(self: ptr IDwriteFont): DwriteFontSimulations {.inline, raises: [].} =
  type PfnGetSimulations = proc (self: pointer): DwriteFontSimulations {.w32callback.}
  cast[PfnGetSimulations](cast[ptr IDwriteFontVtbl](self.vtbl).GetSimulations)(self)
proc getMetrics*(self: ptr IDwriteFont; fontMetrics: var DwriteFontMetrics): void {.inline, raises: [].} =
  type PfnGetMetrics = proc (self: pointer; fontMetrics: var DwriteFontMetrics): void {.w32callback.}
  cast[PfnGetMetrics](cast[ptr IDwriteFontVtbl](self.vtbl).GetMetrics)(self, fontMetrics)
proc hasCharacter*(self: ptr IDwriteFont; unicodeValue: uint32; exists: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnHasCharacter = proc (self: pointer; unicodeValue: uint32; exists: var WtBOOL): WinResult {.w32callback.}
  cast[PfnHasCharacter](cast[ptr IDwriteFontVtbl](self.vtbl).HasCharacter)(self, unicodeValue, exists)
proc createFontFace*(self: ptr IDwriteFont; fontFace: var ptr IDwriteFontFace): WinResult {.inline, raises: [].} =
  type PfnCreateFontFace = proc (self: pointer; fontFace: var ptr IDwriteFontFace): WinResult {.w32callback.}
  cast[PfnCreateFontFace](cast[ptr IDwriteFontVtbl](self.vtbl).CreateFontFace)(self, fontFace)
proc getFontCollection*(self: ptr IDwriteFontList; fontCollection: var ptr IDwriteFontCollection): WinResult {.inline, raises: [].} =
  type PfnGetFontCollection = proc (self: pointer; fontCollection: var ptr IDwriteFontCollection): WinResult {.w32callback.}
  cast[PfnGetFontCollection](cast[ptr IDwriteFontListVtbl](self.vtbl).GetFontCollection)(self, fontCollection)
proc getFontCount*(self: ptr IDwriteFontList): uint32 {.inline, raises: [].} =
  type PfnGetFontCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetFontCount](cast[ptr IDwriteFontListVtbl](self.vtbl).GetFontCount)(self)
proc getFont*(self: ptr IDwriteFontList; index: uint32; font: var ptr IDwriteFont): WinResult {.inline, raises: [].} =
  type PfnGetFont = proc (self: pointer; index: uint32; font: var ptr IDwriteFont): WinResult {.w32callback.}
  cast[PfnGetFont](cast[ptr IDwriteFontListVtbl](self.vtbl).GetFont)(self, index, font)
proc getFamilyNames*(self: ptr IDwriteFontFamily; names: var ptr IDwriteLocalizedStrings): WinResult {.inline, raises: [].} =
  type PfnGetFamilyNames = proc (self: pointer; names: var ptr IDwriteLocalizedStrings): WinResult {.w32callback.}
  cast[PfnGetFamilyNames](cast[ptr IDwriteFontFamilyVtbl](self.vtbl).GetFamilyNames)(self, names)
proc getFirstMatchingFont*(self: ptr IDwriteFontFamily; weight: DwriteFontWeight; stretch: DwriteFontStretch; style: DwriteFontStyle; matchingFont: var ptr IDwriteFont): WinResult {.inline, raises: [].} =
  type PfnGetFirstMatchingFont = proc (self: pointer; weight: DwriteFontWeight; stretch: DwriteFontStretch; style: DwriteFontStyle; matchingFont: var ptr IDwriteFont): WinResult {.w32callback.}
  cast[PfnGetFirstMatchingFont](cast[ptr IDwriteFontFamilyVtbl](self.vtbl).GetFirstMatchingFont)(self, weight, stretch, style, matchingFont)
proc getMatchingFonts*(self: ptr IDwriteFontFamily; weight: DwriteFontWeight; stretch: DwriteFontStretch; style: DwriteFontStyle; matchingFonts: var ptr IDwriteFontList): WinResult {.inline, raises: [].} =
  type PfnGetMatchingFonts = proc (self: pointer; weight: DwriteFontWeight; stretch: DwriteFontStretch; style: DwriteFontStyle; matchingFonts: var ptr IDwriteFontList): WinResult {.w32callback.}
  cast[PfnGetMatchingFonts](cast[ptr IDwriteFontFamilyVtbl](self.vtbl).GetMatchingFonts)(self, weight, stretch, style, matchingFonts)
proc getFontFamilyCount*(self: ptr IDwriteFontCollection): uint32 {.inline, raises: [].} =
  type PfnGetFontFamilyCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetFontFamilyCount](cast[ptr IDwriteFontCollectionVtbl](self.vtbl).GetFontFamilyCount)(self)
proc getFontFamily*(self: ptr IDwriteFontCollection; index: uint32; fontFamily: var ptr IDwriteFontFamily): WinResult {.inline, raises: [].} =
  type PfnGetFontFamily = proc (self: pointer; index: uint32; fontFamily: var ptr IDwriteFontFamily): WinResult {.w32callback.}
  cast[PfnGetFontFamily](cast[ptr IDwriteFontCollectionVtbl](self.vtbl).GetFontFamily)(self, index, fontFamily)
proc findFamilyName*(self: ptr IDwriteFontCollection; familyName: WtPWSTR; index: var uint32; exists: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnFindFamilyName = proc (self: pointer; familyName: WtPWSTR; index: var uint32; exists: var WtBOOL): WinResult {.w32callback.}
  cast[PfnFindFamilyName](cast[ptr IDwriteFontCollectionVtbl](self.vtbl).FindFamilyName)(self, familyName, index, exists)
proc getFontFromFontFace*(self: ptr IDwriteFontCollection; fontFace: ptr IDwriteFontFace; font: var ptr IDwriteFont): WinResult {.inline, raises: [].} =
  type PfnGetFontFromFontFace = proc (self: pointer; fontFace: ptr IDwriteFontFace; font: var ptr IDwriteFont): WinResult {.w32callback.}
  cast[PfnGetFontFromFontFace](cast[ptr IDwriteFontCollectionVtbl](self.vtbl).GetFontFromFontFace)(self, fontFace, font)
proc moveNext*(self: ptr IDwriteFontFileEnumerator; hasCurrentFile: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnMoveNext = proc (self: pointer; hasCurrentFile: var WtBOOL): WinResult {.w32callback.}
  cast[PfnMoveNext](cast[ptr IDwriteFontFileEnumeratorVtbl](self.vtbl).MoveNext)(self, hasCurrentFile)
proc getCurrentFontFile*(self: ptr IDwriteFontFileEnumerator; fontFile: var ptr IDwriteFontFile): WinResult {.inline, raises: [].} =
  type PfnGetCurrentFontFile = proc (self: pointer; fontFile: var ptr IDwriteFontFile): WinResult {.w32callback.}
  cast[PfnGetCurrentFontFile](cast[ptr IDwriteFontFileEnumeratorVtbl](self.vtbl).GetCurrentFontFile)(self, fontFile)
proc createEnumeratorFromKey*(self: ptr IDwriteFontCollectionLoader; factory: ptr IDwriteFactory; collectionKey: pointer; collectionKeySize: uint32; fontFileEnumerator: var ptr IDwriteFontFileEnumerator): WinResult {.inline, raises: [].} =
  type PfnCreateEnumeratorFromKey = proc (self: pointer; factory: ptr IDwriteFactory; collectionKey: pointer; collectionKeySize: uint32; fontFileEnumerator: var ptr IDwriteFontFileEnumerator): WinResult {.w32callback.}
  cast[PfnCreateEnumeratorFromKey](cast[ptr IDwriteFontCollectionLoaderVtbl](self.vtbl).CreateEnumeratorFromKey)(self, factory, collectionKey, collectionKeySize, fontFileEnumerator)
proc isPixelSnappingDisabled*(self: ptr IDwritePixelSnapping; clientDrawingContext: pointer; isDisabled: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnIsPixelSnappingDisabled = proc (self: pointer; clientDrawingContext: pointer; isDisabled: var WtBOOL): WinResult {.w32callback.}
  cast[PfnIsPixelSnappingDisabled](cast[ptr IDwritePixelSnappingVtbl](self.vtbl).IsPixelSnappingDisabled)(self, clientDrawingContext, isDisabled)
proc getCurrentTransform*(self: ptr IDwritePixelSnapping; clientDrawingContext: pointer; transform: var DwriteMatrix): WinResult {.inline, raises: [].} =
  type PfnGetCurrentTransform = proc (self: pointer; clientDrawingContext: pointer; transform: var DwriteMatrix): WinResult {.w32callback.}
  cast[PfnGetCurrentTransform](cast[ptr IDwritePixelSnappingVtbl](self.vtbl).GetCurrentTransform)(self, clientDrawingContext, transform)
proc getPixelsPerDip*(self: ptr IDwritePixelSnapping; clientDrawingContext: pointer; pixelsPerDip: var float32): WinResult {.inline, raises: [].} =
  type PfnGetPixelsPerDip = proc (self: pointer; clientDrawingContext: pointer; pixelsPerDip: var float32): WinResult {.w32callback.}
  cast[PfnGetPixelsPerDip](cast[ptr IDwritePixelSnappingVtbl](self.vtbl).GetPixelsPerDip)(self, clientDrawingContext, pixelsPerDip)
proc drawGlyphRun*(self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; measuringMode: DwriteMeasuringMode; glyphRun: DwriteGlyphRun; glyphRunDescription: DwriteGlyphRunDescription; clientDrawingEffect: ptr IUnknown): WinResult {.inline, raises: [].} =
  type PfnDrawGlyphRun = proc (self: pointer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; measuringMode: DwriteMeasuringMode; glyphRun: DwriteGlyphRun; glyphRunDescription: DwriteGlyphRunDescription; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
  cast[PfnDrawGlyphRun](cast[ptr IDwriteTextRendererVtbl](self.vtbl).DrawGlyphRun)(self, clientDrawingContext, baselineOriginX, baselineOriginY, measuringMode, glyphRun, glyphRunDescription, clientDrawingEffect)
proc drawUnderline*(self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; underline: DwriteUnderline; clientDrawingEffect: ptr IUnknown): WinResult {.inline, raises: [].} =
  type PfnDrawUnderline = proc (self: pointer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; underline: DwriteUnderline; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
  cast[PfnDrawUnderline](cast[ptr IDwriteTextRendererVtbl](self.vtbl).DrawUnderline)(self, clientDrawingContext, baselineOriginX, baselineOriginY, underline, clientDrawingEffect)
proc drawStrikethrough*(self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; strikethrough: DwriteStrikethrough; clientDrawingEffect: ptr IUnknown): WinResult {.inline, raises: [].} =
  type PfnDrawStrikethrough = proc (self: pointer; clientDrawingContext: pointer; baselineOriginX: float32; baselineOriginY: float32; strikethrough: DwriteStrikethrough; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
  cast[PfnDrawStrikethrough](cast[ptr IDwriteTextRendererVtbl](self.vtbl).DrawStrikethrough)(self, clientDrawingContext, baselineOriginX, baselineOriginY, strikethrough, clientDrawingEffect)
proc drawInlineObject*(self: ptr IDwriteTextRenderer; clientDrawingContext: pointer; originX: float32; originY: float32; inlineObject: ptr IDwriteInlineObject; isSideways: WtBOOL; isRightToLeft: WtBOOL; clientDrawingEffect: ptr IUnknown): WinResult {.inline, raises: [].} =
  type PfnDrawInlineObject = proc (self: pointer; clientDrawingContext: pointer; originX: float32; originY: float32; inlineObject: ptr IDwriteInlineObject; isSideways: WtBOOL; isRightToLeft: WtBOOL; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
  cast[PfnDrawInlineObject](cast[ptr IDwriteTextRendererVtbl](self.vtbl).DrawInlineObject)(self, clientDrawingContext, originX, originY, inlineObject, isSideways, isRightToLeft, clientDrawingEffect)
proc draw*(self: ptr IDwriteInlineObject; clientDrawingContext: pointer; renderer: ptr IDwriteTextRenderer; originX: float32; originY: float32; isSideways: WtBOOL; isRightToLeft: WtBOOL; clientDrawingEffect: ptr IUnknown): WinResult {.inline, raises: [].} =
  type PfnDraw = proc (self: pointer; clientDrawingContext: pointer; renderer: ptr IDwriteTextRenderer; originX: float32; originY: float32; isSideways: WtBOOL; isRightToLeft: WtBOOL; clientDrawingEffect: ptr IUnknown): WinResult {.w32callback.}
  cast[PfnDraw](cast[ptr IDwriteInlineObjectVtbl](self.vtbl).Draw)(self, clientDrawingContext, renderer, originX, originY, isSideways, isRightToLeft, clientDrawingEffect)
proc getMetrics*(self: ptr IDwriteInlineObject; metrics: var DwriteInlineObjectMetrics): WinResult {.inline, raises: [].} =
  type PfnGetMetrics = proc (self: pointer; metrics: var DwriteInlineObjectMetrics): WinResult {.w32callback.}
  cast[PfnGetMetrics](cast[ptr IDwriteInlineObjectVtbl](self.vtbl).GetMetrics)(self, metrics)
proc getOverhangMetrics*(self: ptr IDwriteInlineObject; overhangs: var DwriteOverhangMetrics): WinResult {.inline, raises: [].} =
  type PfnGetOverhangMetrics = proc (self: pointer; overhangs: var DwriteOverhangMetrics): WinResult {.w32callback.}
  cast[PfnGetOverhangMetrics](cast[ptr IDwriteInlineObjectVtbl](self.vtbl).GetOverhangMetrics)(self, overhangs)
proc getBreakConditions*(self: ptr IDwriteInlineObject; breakConditionBefore: var DwriteBreakCondition; breakConditionAfter: var DwriteBreakCondition): WinResult {.inline, raises: [].} =
  type PfnGetBreakConditions = proc (self: pointer; breakConditionBefore: var DwriteBreakCondition; breakConditionAfter: var DwriteBreakCondition): WinResult {.w32callback.}
  cast[PfnGetBreakConditions](cast[ptr IDwriteInlineObjectVtbl](self.vtbl).GetBreakConditions)(self, breakConditionBefore, breakConditionAfter)
proc setTextAlignment*(self: ptr IDwriteTextFormat; textAlignment: DwriteTextAlignment): WinResult {.inline, raises: [].} =
  type PfnSetTextAlignment = proc (self: pointer; textAlignment: DwriteTextAlignment): WinResult {.w32callback.}
  cast[PfnSetTextAlignment](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetTextAlignment)(self, textAlignment)
proc setParagraphAlignment*(self: ptr IDwriteTextFormat; paragraphAlignment: DwriteParagraphAlignment): WinResult {.inline, raises: [].} =
  type PfnSetParagraphAlignment = proc (self: pointer; paragraphAlignment: DwriteParagraphAlignment): WinResult {.w32callback.}
  cast[PfnSetParagraphAlignment](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetParagraphAlignment)(self, paragraphAlignment)
proc setWordWrapping*(self: ptr IDwriteTextFormat; wordWrapping: DwriteWordWrapping): WinResult {.inline, raises: [].} =
  type PfnSetWordWrapping = proc (self: pointer; wordWrapping: DwriteWordWrapping): WinResult {.w32callback.}
  cast[PfnSetWordWrapping](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetWordWrapping)(self, wordWrapping)
proc setReadingDirection*(self: ptr IDwriteTextFormat; readingDirection: DwriteReadingDirection): WinResult {.inline, raises: [].} =
  type PfnSetReadingDirection = proc (self: pointer; readingDirection: DwriteReadingDirection): WinResult {.w32callback.}
  cast[PfnSetReadingDirection](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetReadingDirection)(self, readingDirection)
proc setFlowDirection*(self: ptr IDwriteTextFormat; flowDirection: DwriteFlowDirection): WinResult {.inline, raises: [].} =
  type PfnSetFlowDirection = proc (self: pointer; flowDirection: DwriteFlowDirection): WinResult {.w32callback.}
  cast[PfnSetFlowDirection](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetFlowDirection)(self, flowDirection)
proc setIncrementalTabStop*(self: ptr IDwriteTextFormat; incrementalTabStop: float32): WinResult {.inline, raises: [].} =
  type PfnSetIncrementalTabStop = proc (self: pointer; incrementalTabStop: float32): WinResult {.w32callback.}
  cast[PfnSetIncrementalTabStop](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetIncrementalTabStop)(self, incrementalTabStop)
proc setTrimming*(self: ptr IDwriteTextFormat; trimmingOptions: DwriteTrimming; trimmingSign: ptr IDwriteInlineObject): WinResult {.inline, raises: [].} =
  type PfnSetTrimming = proc (self: pointer; trimmingOptions: DwriteTrimming; trimmingSign: ptr IDwriteInlineObject): WinResult {.w32callback.}
  cast[PfnSetTrimming](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetTrimming)(self, trimmingOptions, trimmingSign)
proc setLineSpacing*(self: ptr IDwriteTextFormat; lineSpacingMethod: DwriteLineSpacingMethod; lineSpacing: float32; baseline: float32): WinResult {.inline, raises: [].} =
  type PfnSetLineSpacing = proc (self: pointer; lineSpacingMethod: DwriteLineSpacingMethod; lineSpacing: float32; baseline: float32): WinResult {.w32callback.}
  cast[PfnSetLineSpacing](cast[ptr IDwriteTextFormatVtbl](self.vtbl).SetLineSpacing)(self, lineSpacingMethod, lineSpacing, baseline)
proc getTextAlignment*(self: ptr IDwriteTextFormat): DwriteTextAlignment {.inline, raises: [].} =
  type PfnGetTextAlignment = proc (self: pointer): DwriteTextAlignment {.w32callback.}
  cast[PfnGetTextAlignment](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetTextAlignment)(self)
proc getParagraphAlignment*(self: ptr IDwriteTextFormat): DwriteParagraphAlignment {.inline, raises: [].} =
  type PfnGetParagraphAlignment = proc (self: pointer): DwriteParagraphAlignment {.w32callback.}
  cast[PfnGetParagraphAlignment](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetParagraphAlignment)(self)
proc getWordWrapping*(self: ptr IDwriteTextFormat): DwriteWordWrapping {.inline, raises: [].} =
  type PfnGetWordWrapping = proc (self: pointer): DwriteWordWrapping {.w32callback.}
  cast[PfnGetWordWrapping](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetWordWrapping)(self)
proc getReadingDirection*(self: ptr IDwriteTextFormat): DwriteReadingDirection {.inline, raises: [].} =
  type PfnGetReadingDirection = proc (self: pointer): DwriteReadingDirection {.w32callback.}
  cast[PfnGetReadingDirection](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetReadingDirection)(self)
proc getFlowDirection*(self: ptr IDwriteTextFormat): DwriteFlowDirection {.inline, raises: [].} =
  type PfnGetFlowDirection = proc (self: pointer): DwriteFlowDirection {.w32callback.}
  cast[PfnGetFlowDirection](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFlowDirection)(self)
proc getIncrementalTabStop*(self: ptr IDwriteTextFormat): float32 {.inline, raises: [].} =
  type PfnGetIncrementalTabStop = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetIncrementalTabStop](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetIncrementalTabStop)(self)
proc getTrimming*(self: ptr IDwriteTextFormat; trimmingOptions: var DwriteTrimming; trimmingSign: var ptr IDwriteInlineObject): WinResult {.inline, raises: [].} =
  type PfnGetTrimming = proc (self: pointer; trimmingOptions: var DwriteTrimming; trimmingSign: var ptr IDwriteInlineObject): WinResult {.w32callback.}
  cast[PfnGetTrimming](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetTrimming)(self, trimmingOptions, trimmingSign)
proc getLineSpacing*(self: ptr IDwriteTextFormat; lineSpacingMethod: var DwriteLineSpacingMethod; lineSpacing: var float32; baseline: var float32): WinResult {.inline, raises: [].} =
  type PfnGetLineSpacing = proc (self: pointer; lineSpacingMethod: var DwriteLineSpacingMethod; lineSpacing: var float32; baseline: var float32): WinResult {.w32callback.}
  cast[PfnGetLineSpacing](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetLineSpacing)(self, lineSpacingMethod, lineSpacing, baseline)
proc getFontCollection*(self: ptr IDwriteTextFormat; fontCollection: var ptr IDwriteFontCollection): WinResult {.inline, raises: [].} =
  type PfnGetFontCollection = proc (self: pointer; fontCollection: var ptr IDwriteFontCollection): WinResult {.w32callback.}
  cast[PfnGetFontCollection](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFontCollection)(self, fontCollection)
proc getFontFamilyNameLength*(self: ptr IDwriteTextFormat): uint32 {.inline, raises: [].} =
  type PfnGetFontFamilyNameLength = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetFontFamilyNameLength](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFontFamilyNameLength)(self)
proc getFontFamilyName*(self: ptr IDwriteTextFormat; fontFamilyName: ptr UncheckedArray[uint16]; nameSize: uint32): WinResult {.inline, raises: [].} =
  type PfnGetFontFamilyName = proc (self: pointer; fontFamilyName: ptr UncheckedArray[uint16]; nameSize: uint32): WinResult {.w32callback.}
  cast[PfnGetFontFamilyName](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFontFamilyName)(self, fontFamilyName, nameSize)
proc getFontWeight*(self: ptr IDwriteTextFormat): DwriteFontWeight {.inline, raises: [].} =
  type PfnGetFontWeight = proc (self: pointer): DwriteFontWeight {.w32callback.}
  cast[PfnGetFontWeight](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFontWeight)(self)
proc getFontStyle*(self: ptr IDwriteTextFormat): DwriteFontStyle {.inline, raises: [].} =
  type PfnGetFontStyle = proc (self: pointer): DwriteFontStyle {.w32callback.}
  cast[PfnGetFontStyle](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFontStyle)(self)
proc getFontStretch*(self: ptr IDwriteTextFormat): DwriteFontStretch {.inline, raises: [].} =
  type PfnGetFontStretch = proc (self: pointer): DwriteFontStretch {.w32callback.}
  cast[PfnGetFontStretch](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFontStretch)(self)
proc getFontSize*(self: ptr IDwriteTextFormat): float32 {.inline, raises: [].} =
  type PfnGetFontSize = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetFontSize](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetFontSize)(self)
proc getLocaleNameLength*(self: ptr IDwriteTextFormat): uint32 {.inline, raises: [].} =
  type PfnGetLocaleNameLength = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetLocaleNameLength](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetLocaleNameLength)(self)
proc getLocaleName*(self: ptr IDwriteTextFormat; localeName: ptr UncheckedArray[uint16]; nameSize: uint32): WinResult {.inline, raises: [].} =
  type PfnGetLocaleName = proc (self: pointer; localeName: ptr UncheckedArray[uint16]; nameSize: uint32): WinResult {.w32callback.}
  cast[PfnGetLocaleName](cast[ptr IDwriteTextFormatVtbl](self.vtbl).GetLocaleName)(self, localeName, nameSize)
proc addFontFeature*(self: ptr IDwriteTypography; fontFeature: DwriteFontFeature): WinResult {.inline, raises: [].} =
  type PfnAddFontFeature = proc (self: pointer; fontFeature: DwriteFontFeature): WinResult {.w32callback.}
  cast[PfnAddFontFeature](cast[ptr IDwriteTypographyVtbl](self.vtbl).AddFontFeature)(self, fontFeature)
proc getFontFeatureCount*(self: ptr IDwriteTypography): uint32 {.inline, raises: [].} =
  type PfnGetFontFeatureCount = proc (self: pointer): uint32 {.w32callback.}
  cast[PfnGetFontFeatureCount](cast[ptr IDwriteTypographyVtbl](self.vtbl).GetFontFeatureCount)(self)
proc getFontFeature*(self: ptr IDwriteTypography; fontFeatureIndex: uint32; fontFeature: var DwriteFontFeature): WinResult {.inline, raises: [].} =
  type PfnGetFontFeature = proc (self: pointer; fontFeatureIndex: uint32; fontFeature: var DwriteFontFeature): WinResult {.w32callback.}
  cast[PfnGetFontFeature](cast[ptr IDwriteTypographyVtbl](self.vtbl).GetFontFeature)(self, fontFeatureIndex, fontFeature)
# skipped: IDwriteBitmapRenderTarget DrawGlyphRun
proc getMemoryDC*(self: ptr IDwriteBitmapRenderTarget): WtHDC {.inline, raises: [].} =
  type PfnGetMemoryDC = proc (self: pointer): WtHDC {.w32callback.}
  cast[PfnGetMemoryDC](cast[ptr IDwriteBitmapRenderTargetVtbl](self.vtbl).GetMemoryDC)(self)
proc getPixelsPerDip*(self: ptr IDwriteBitmapRenderTarget): float32 {.inline, raises: [].} =
  type PfnGetPixelsPerDip = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetPixelsPerDip](cast[ptr IDwriteBitmapRenderTargetVtbl](self.vtbl).GetPixelsPerDip)(self)
proc setPixelsPerDip*(self: ptr IDwriteBitmapRenderTarget; pixelsPerDip: float32): WinResult {.inline, raises: [].} =
  type PfnSetPixelsPerDip = proc (self: pointer; pixelsPerDip: float32): WinResult {.w32callback.}
  cast[PfnSetPixelsPerDip](cast[ptr IDwriteBitmapRenderTargetVtbl](self.vtbl).SetPixelsPerDip)(self, pixelsPerDip)
proc getCurrentTransform*(self: ptr IDwriteBitmapRenderTarget; transform: var DwriteMatrix): WinResult {.inline, raises: [].} =
  type PfnGetCurrentTransform = proc (self: pointer; transform: var DwriteMatrix): WinResult {.w32callback.}
  cast[PfnGetCurrentTransform](cast[ptr IDwriteBitmapRenderTargetVtbl](self.vtbl).GetCurrentTransform)(self, transform)
proc setCurrentTransform*(self: ptr IDwriteBitmapRenderTarget; transform: ptr DwriteMatrix): WinResult {.inline, raises: [].} =
  type PfnSetCurrentTransform = proc (self: pointer; transform: ptr DwriteMatrix): WinResult {.w32callback.}
  cast[PfnSetCurrentTransform](cast[ptr IDwriteBitmapRenderTargetVtbl](self.vtbl).SetCurrentTransform)(self, transform)
# skipped: IDwriteBitmapRenderTarget GetSize
proc resize*(self: ptr IDwriteBitmapRenderTarget; width: uint32; height: uint32): WinResult {.inline, raises: [].} =
  type PfnResize = proc (self: pointer; width: uint32; height: uint32): WinResult {.w32callback.}
  cast[PfnResize](cast[ptr IDwriteBitmapRenderTargetVtbl](self.vtbl).Resize)(self, width, height)
# skipped: IDwriteGdiInterop CreateFontFromLOGFONT
# skipped: IDwriteGdiInterop ConvertFontToLOGFONT
# skipped: IDwriteGdiInterop ConvertFontFaceToLOGFONT
proc createFontFaceFromHdc*(self: ptr IDwriteGdiInterop; hdc: WtHDC; fontFace: var ptr IDwriteFontFace): WinResult {.inline, raises: [].} =
  type PfnCreateFontFaceFromHdc = proc (self: pointer; hdc: WtHDC; fontFace: var ptr IDwriteFontFace): WinResult {.w32callback.}
  cast[PfnCreateFontFaceFromHdc](cast[ptr IDwriteGdiInteropVtbl](self.vtbl).CreateFontFaceFromHdc)(self, hdc, fontFace)
proc createBitmapRenderTarget*(self: ptr IDwriteGdiInterop; hdc: WtHDC; width: uint32; height: uint32; renderTarget: var ptr IDwriteBitmapRenderTarget): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapRenderTarget = proc (self: pointer; hdc: WtHDC; width: uint32; height: uint32; renderTarget: var ptr IDwriteBitmapRenderTarget): WinResult {.w32callback.}
  cast[PfnCreateBitmapRenderTarget](cast[ptr IDwriteGdiInteropVtbl](self.vtbl).CreateBitmapRenderTarget)(self, hdc, width, height, renderTarget)
proc setMaxWidth*(self: ptr IDwriteTextLayout; maxWidth: float32): WinResult {.inline, raises: [].} =
  type PfnSetMaxWidth = proc (self: pointer; maxWidth: float32): WinResult {.w32callback.}
  cast[PfnSetMaxWidth](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetMaxWidth)(self, maxWidth)
proc setMaxHeight*(self: ptr IDwriteTextLayout; maxHeight: float32): WinResult {.inline, raises: [].} =
  type PfnSetMaxHeight = proc (self: pointer; maxHeight: float32): WinResult {.w32callback.}
  cast[PfnSetMaxHeight](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetMaxHeight)(self, maxHeight)
proc setFontCollection*(self: ptr IDwriteTextLayout; fontCollection: ptr IDwriteFontCollection; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetFontCollection = proc (self: pointer; fontCollection: ptr IDwriteFontCollection; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetFontCollection](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetFontCollection)(self, fontCollection, textRange)
proc setFontFamilyName*(self: ptr IDwriteTextLayout; fontFamilyName: WtPWSTR; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetFontFamilyName = proc (self: pointer; fontFamilyName: WtPWSTR; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetFontFamilyName](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetFontFamilyName)(self, fontFamilyName, textRange)
proc setFontWeight*(self: ptr IDwriteTextLayout; fontWeight: DwriteFontWeight; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetFontWeight = proc (self: pointer; fontWeight: DwriteFontWeight; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetFontWeight](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetFontWeight)(self, fontWeight, textRange)
proc setFontStyle*(self: ptr IDwriteTextLayout; fontStyle: DwriteFontStyle; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetFontStyle = proc (self: pointer; fontStyle: DwriteFontStyle; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetFontStyle](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetFontStyle)(self, fontStyle, textRange)
proc setFontStretch*(self: ptr IDwriteTextLayout; fontStretch: DwriteFontStretch; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetFontStretch = proc (self: pointer; fontStretch: DwriteFontStretch; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetFontStretch](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetFontStretch)(self, fontStretch, textRange)
proc setFontSize*(self: ptr IDwriteTextLayout; fontSize: float32; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetFontSize = proc (self: pointer; fontSize: float32; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetFontSize](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetFontSize)(self, fontSize, textRange)
proc setUnderline*(self: ptr IDwriteTextLayout; hasUnderline: WtBOOL; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetUnderline = proc (self: pointer; hasUnderline: WtBOOL; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetUnderline](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetUnderline)(self, hasUnderline, textRange)
proc setStrikethrough*(self: ptr IDwriteTextLayout; hasStrikethrough: WtBOOL; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetStrikethrough = proc (self: pointer; hasStrikethrough: WtBOOL; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetStrikethrough](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetStrikethrough)(self, hasStrikethrough, textRange)
proc setDrawingEffect*(self: ptr IDwriteTextLayout; drawingEffect: ptr IUnknown; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetDrawingEffect = proc (self: pointer; drawingEffect: ptr IUnknown; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetDrawingEffect](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetDrawingEffect)(self, drawingEffect, textRange)
proc setInlineObject*(self: ptr IDwriteTextLayout; inlineObject: ptr IDwriteInlineObject; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetInlineObject = proc (self: pointer; inlineObject: ptr IDwriteInlineObject; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetInlineObject](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetInlineObject)(self, inlineObject, textRange)
proc setTypography*(self: ptr IDwriteTextLayout; typography: ptr IDwriteTypography; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetTypography = proc (self: pointer; typography: ptr IDwriteTypography; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetTypography](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetTypography)(self, typography, textRange)
proc setLocaleName*(self: ptr IDwriteTextLayout; localeName: WtPWSTR; textRange: DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnSetLocaleName = proc (self: pointer; localeName: WtPWSTR; textRange: DwriteTextRange): WinResult {.w32callback.}
  cast[PfnSetLocaleName](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).SetLocaleName)(self, localeName, textRange)
proc getMaxWidth*(self: ptr IDwriteTextLayout): float32 {.inline, raises: [].} =
  type PfnGetMaxWidth = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetMaxWidth](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetMaxWidth)(self)
proc getMaxHeight*(self: ptr IDwriteTextLayout): float32 {.inline, raises: [].} =
  type PfnGetMaxHeight = proc (self: pointer): float32 {.w32callback.}
  cast[PfnGetMaxHeight](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetMaxHeight)(self)
proc getFontCollection*(self: ptr IDwriteTextLayout; currentPosition: uint32; fontCollection: var ptr IDwriteFontCollection; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetFontCollection = proc (self: pointer; currentPosition: uint32; fontCollection: var ptr IDwriteFontCollection; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetFontCollection](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetFontCollection)(self, currentPosition, fontCollection, textRange)
proc getFontFamilyNameLength*(self: ptr IDwriteTextLayout; currentPosition: uint32; nameLength: var uint32; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetFontFamilyNameLength = proc (self: pointer; currentPosition: uint32; nameLength: var uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetFontFamilyNameLength](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetFontFamilyNameLength)(self, currentPosition, nameLength, textRange)
proc getFontFamilyName*(self: ptr IDwriteTextLayout; currentPosition: uint32; fontFamilyName: ptr UncheckedArray[uint16]; nameSize: uint32; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetFontFamilyName = proc (self: pointer; currentPosition: uint32; fontFamilyName: ptr UncheckedArray[uint16]; nameSize: uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetFontFamilyName](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetFontFamilyName)(self, currentPosition, fontFamilyName, nameSize, textRange)
proc getFontWeight*(self: ptr IDwriteTextLayout; currentPosition: uint32; fontWeight: var DwriteFontWeight; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetFontWeight = proc (self: pointer; currentPosition: uint32; fontWeight: var DwriteFontWeight; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetFontWeight](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetFontWeight)(self, currentPosition, fontWeight, textRange)
proc getFontStyle*(self: ptr IDwriteTextLayout; currentPosition: uint32; fontStyle: var DwriteFontStyle; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetFontStyle = proc (self: pointer; currentPosition: uint32; fontStyle: var DwriteFontStyle; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetFontStyle](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetFontStyle)(self, currentPosition, fontStyle, textRange)
proc getFontStretch*(self: ptr IDwriteTextLayout; currentPosition: uint32; fontStretch: var DwriteFontStretch; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetFontStretch = proc (self: pointer; currentPosition: uint32; fontStretch: var DwriteFontStretch; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetFontStretch](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetFontStretch)(self, currentPosition, fontStretch, textRange)
proc getFontSize*(self: ptr IDwriteTextLayout; currentPosition: uint32; fontSize: var float32; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetFontSize = proc (self: pointer; currentPosition: uint32; fontSize: var float32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetFontSize](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetFontSize)(self, currentPosition, fontSize, textRange)
proc getUnderline*(self: ptr IDwriteTextLayout; currentPosition: uint32; hasUnderline: var WtBOOL; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetUnderline = proc (self: pointer; currentPosition: uint32; hasUnderline: var WtBOOL; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetUnderline](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetUnderline)(self, currentPosition, hasUnderline, textRange)
proc getStrikethrough*(self: ptr IDwriteTextLayout; currentPosition: uint32; hasStrikethrough: var WtBOOL; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetStrikethrough = proc (self: pointer; currentPosition: uint32; hasStrikethrough: var WtBOOL; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetStrikethrough](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetStrikethrough)(self, currentPosition, hasStrikethrough, textRange)
proc getDrawingEffect*(self: ptr IDwriteTextLayout; currentPosition: uint32; drawingEffect: var ptr IUnknown; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetDrawingEffect = proc (self: pointer; currentPosition: uint32; drawingEffect: var ptr IUnknown; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetDrawingEffect](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetDrawingEffect)(self, currentPosition, drawingEffect, textRange)
proc getInlineObject*(self: ptr IDwriteTextLayout; currentPosition: uint32; inlineObject: var ptr IDwriteInlineObject; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetInlineObject = proc (self: pointer; currentPosition: uint32; inlineObject: var ptr IDwriteInlineObject; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetInlineObject](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetInlineObject)(self, currentPosition, inlineObject, textRange)
proc getTypography*(self: ptr IDwriteTextLayout; currentPosition: uint32; typography: var ptr IDwriteTypography; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetTypography = proc (self: pointer; currentPosition: uint32; typography: var ptr IDwriteTypography; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetTypography](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetTypography)(self, currentPosition, typography, textRange)
proc getLocaleNameLength*(self: ptr IDwriteTextLayout; currentPosition: uint32; nameLength: var uint32; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetLocaleNameLength = proc (self: pointer; currentPosition: uint32; nameLength: var uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetLocaleNameLength](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetLocaleNameLength)(self, currentPosition, nameLength, textRange)
proc getLocaleName*(self: ptr IDwriteTextLayout; currentPosition: uint32; localeName: ptr UncheckedArray[uint16]; nameSize: uint32; textRange: ptr DwriteTextRange): WinResult {.inline, raises: [].} =
  type PfnGetLocaleName = proc (self: pointer; currentPosition: uint32; localeName: ptr UncheckedArray[uint16]; nameSize: uint32; textRange: ptr DwriteTextRange): WinResult {.w32callback.}
  cast[PfnGetLocaleName](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetLocaleName)(self, currentPosition, localeName, nameSize, textRange)
proc draw*(self: ptr IDwriteTextLayout; clientDrawingContext: pointer; renderer: ptr IDwriteTextRenderer; originX: float32; originY: float32): WinResult {.inline, raises: [].} =
  type PfnDraw = proc (self: pointer; clientDrawingContext: pointer; renderer: ptr IDwriteTextRenderer; originX: float32; originY: float32): WinResult {.w32callback.}
  cast[PfnDraw](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).Draw)(self, clientDrawingContext, renderer, originX, originY)
proc getLineMetrics*(self: ptr IDwriteTextLayout; lineMetrics: ptr UncheckedArray[DwriteLineMetrics]; maxLineCount: uint32; actualLineCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetLineMetrics = proc (self: pointer; lineMetrics: ptr UncheckedArray[DwriteLineMetrics]; maxLineCount: uint32; actualLineCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetLineMetrics](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetLineMetrics)(self, lineMetrics, maxLineCount, actualLineCount)
proc getMetrics*(self: ptr IDwriteTextLayout; textMetrics: var DwriteTextMetrics): WinResult {.inline, raises: [].} =
  type PfnGetMetrics = proc (self: pointer; textMetrics: var DwriteTextMetrics): WinResult {.w32callback.}
  cast[PfnGetMetrics](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetMetrics)(self, textMetrics)
proc getOverhangMetrics*(self: ptr IDwriteTextLayout; overhangs: var DwriteOverhangMetrics): WinResult {.inline, raises: [].} =
  type PfnGetOverhangMetrics = proc (self: pointer; overhangs: var DwriteOverhangMetrics): WinResult {.w32callback.}
  cast[PfnGetOverhangMetrics](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetOverhangMetrics)(self, overhangs)
proc getClusterMetrics*(self: ptr IDwriteTextLayout; clusterMetrics: ptr UncheckedArray[DwriteClusterMetrics]; maxClusterCount: uint32; actualClusterCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetClusterMetrics = proc (self: pointer; clusterMetrics: ptr UncheckedArray[DwriteClusterMetrics]; maxClusterCount: uint32; actualClusterCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetClusterMetrics](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).GetClusterMetrics)(self, clusterMetrics, maxClusterCount, actualClusterCount)
proc determineMinWidth*(self: ptr IDwriteTextLayout; minWidth: var float32): WinResult {.inline, raises: [].} =
  type PfnDetermineMinWidth = proc (self: pointer; minWidth: var float32): WinResult {.w32callback.}
  cast[PfnDetermineMinWidth](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).DetermineMinWidth)(self, minWidth)
proc hitTestPoint*(self: ptr IDwriteTextLayout; pointX: float32; pointY: float32; isTrailingHit: var WtBOOL; isInside: var WtBOOL; hitTestMetrics: var DwriteHitTestMetrics): WinResult {.inline, raises: [].} =
  type PfnHitTestPoint = proc (self: pointer; pointX: float32; pointY: float32; isTrailingHit: var WtBOOL; isInside: var WtBOOL; hitTestMetrics: var DwriteHitTestMetrics): WinResult {.w32callback.}
  cast[PfnHitTestPoint](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).HitTestPoint)(self, pointX, pointY, isTrailingHit, isInside, hitTestMetrics)
proc hitTestTextPosition*(self: ptr IDwriteTextLayout; textPosition: uint32; isTrailingHit: WtBOOL; pointX: var float32; pointY: var float32; hitTestMetrics: var DwriteHitTestMetrics): WinResult {.inline, raises: [].} =
  type PfnHitTestTextPosition = proc (self: pointer; textPosition: uint32; isTrailingHit: WtBOOL; pointX: var float32; pointY: var float32; hitTestMetrics: var DwriteHitTestMetrics): WinResult {.w32callback.}
  cast[PfnHitTestTextPosition](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).HitTestTextPosition)(self, textPosition, isTrailingHit, pointX, pointY, hitTestMetrics)
proc hitTestTextRange*(self: ptr IDwriteTextLayout; textPosition: uint32; textLength: uint32; originX: float32; originY: float32; hitTestMetrics: ptr UncheckedArray[DwriteHitTestMetrics]; maxHitTestMetricsCount: uint32; actualHitTestMetricsCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnHitTestTextRange = proc (self: pointer; textPosition: uint32; textLength: uint32; originX: float32; originY: float32; hitTestMetrics: ptr UncheckedArray[DwriteHitTestMetrics]; maxHitTestMetricsCount: uint32; actualHitTestMetricsCount: var uint32): WinResult {.w32callback.}
  cast[PfnHitTestTextRange](cast[ptr IDwriteTextLayoutVtbl](self.vtbl).HitTestTextRange)(self, textPosition, textLength, originX, originY, hitTestMetrics, maxHitTestMetricsCount, actualHitTestMetricsCount)
proc getTextAtPosition*(self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textString: var ptr uint16; textLength: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetTextAtPosition = proc (self: pointer; textPosition: uint32; textString: var ptr uint16; textLength: var uint32): WinResult {.w32callback.}
  cast[PfnGetTextAtPosition](cast[ptr IDwriteTextAnalysisSourceVtbl](self.vtbl).GetTextAtPosition)(self, textPosition, textString, textLength)
proc getTextBeforePosition*(self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textString: var ptr uint16; textLength: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetTextBeforePosition = proc (self: pointer; textPosition: uint32; textString: var ptr uint16; textLength: var uint32): WinResult {.w32callback.}
  cast[PfnGetTextBeforePosition](cast[ptr IDwriteTextAnalysisSourceVtbl](self.vtbl).GetTextBeforePosition)(self, textPosition, textString, textLength)
proc getParagraphReadingDirection*(self: ptr IDwriteTextAnalysisSource): DwriteReadingDirection {.inline, raises: [].} =
  type PfnGetParagraphReadingDirection = proc (self: pointer): DwriteReadingDirection {.w32callback.}
  cast[PfnGetParagraphReadingDirection](cast[ptr IDwriteTextAnalysisSourceVtbl](self.vtbl).GetParagraphReadingDirection)(self)
proc getLocaleName*(self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: var uint32; localeName: var ptr uint16): WinResult {.inline, raises: [].} =
  type PfnGetLocaleName = proc (self: pointer; textPosition: uint32; textLength: var uint32; localeName: var ptr uint16): WinResult {.w32callback.}
  cast[PfnGetLocaleName](cast[ptr IDwriteTextAnalysisSourceVtbl](self.vtbl).GetLocaleName)(self, textPosition, textLength, localeName)
proc getNumberSubstitution*(self: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: var uint32; numberSubstitution: var ptr IDwriteNumberSubstitution): WinResult {.inline, raises: [].} =
  type PfnGetNumberSubstitution = proc (self: pointer; textPosition: uint32; textLength: var uint32; numberSubstitution: var ptr IDwriteNumberSubstitution): WinResult {.w32callback.}
  cast[PfnGetNumberSubstitution](cast[ptr IDwriteTextAnalysisSourceVtbl](self.vtbl).GetNumberSubstitution)(self, textPosition, textLength, numberSubstitution)
proc setScriptAnalysis*(self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; scriptAnalysis: ptr DwriteScriptAnalysis): WinResult {.inline, raises: [].} =
  type PfnSetScriptAnalysis = proc (self: pointer; textPosition: uint32; textLength: uint32; scriptAnalysis: ptr DwriteScriptAnalysis): WinResult {.w32callback.}
  cast[PfnSetScriptAnalysis](cast[ptr IDwriteTextAnalysisSinkVtbl](self.vtbl).SetScriptAnalysis)(self, textPosition, textLength, scriptAnalysis)
proc setLineBreakpoints*(self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; lineBreakpoints: ptr UncheckedArray[DwriteLineBreakpoint]): WinResult {.inline, raises: [].} =
  type PfnSetLineBreakpoints = proc (self: pointer; textPosition: uint32; textLength: uint32; lineBreakpoints: ptr UncheckedArray[DwriteLineBreakpoint]): WinResult {.w32callback.}
  cast[PfnSetLineBreakpoints](cast[ptr IDwriteTextAnalysisSinkVtbl](self.vtbl).SetLineBreakpoints)(self, textPosition, textLength, lineBreakpoints)
proc setBidiLevel*(self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; explicitLevel: uint8; resolvedLevel: uint8): WinResult {.inline, raises: [].} =
  type PfnSetBidiLevel = proc (self: pointer; textPosition: uint32; textLength: uint32; explicitLevel: uint8; resolvedLevel: uint8): WinResult {.w32callback.}
  cast[PfnSetBidiLevel](cast[ptr IDwriteTextAnalysisSinkVtbl](self.vtbl).SetBidiLevel)(self, textPosition, textLength, explicitLevel, resolvedLevel)
proc setNumberSubstitution*(self: ptr IDwriteTextAnalysisSink; textPosition: uint32; textLength: uint32; numberSubstitution: ptr IDwriteNumberSubstitution): WinResult {.inline, raises: [].} =
  type PfnSetNumberSubstitution = proc (self: pointer; textPosition: uint32; textLength: uint32; numberSubstitution: ptr IDwriteNumberSubstitution): WinResult {.w32callback.}
  cast[PfnSetNumberSubstitution](cast[ptr IDwriteTextAnalysisSinkVtbl](self.vtbl).SetNumberSubstitution)(self, textPosition, textLength, numberSubstitution)
proc analyzeScript*(self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.inline, raises: [].} =
  type PfnAnalyzeScript = proc (self: pointer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
  cast[PfnAnalyzeScript](cast[ptr IDwriteTextAnalyzerVtbl](self.vtbl).AnalyzeScript)(self, analysisSource, textPosition, textLength, analysisSink)
proc analyzeBidi*(self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.inline, raises: [].} =
  type PfnAnalyzeBidi = proc (self: pointer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
  cast[PfnAnalyzeBidi](cast[ptr IDwriteTextAnalyzerVtbl](self.vtbl).AnalyzeBidi)(self, analysisSource, textPosition, textLength, analysisSink)
proc analyzeNumberSubstitution*(self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.inline, raises: [].} =
  type PfnAnalyzeNumberSubstitution = proc (self: pointer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
  cast[PfnAnalyzeNumberSubstitution](cast[ptr IDwriteTextAnalyzerVtbl](self.vtbl).AnalyzeNumberSubstitution)(self, analysisSource, textPosition, textLength, analysisSink)
proc analyzeLineBreakpoints*(self: ptr IDwriteTextAnalyzer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.inline, raises: [].} =
  type PfnAnalyzeLineBreakpoints = proc (self: pointer; analysisSource: ptr IDwriteTextAnalysisSource; textPosition: uint32; textLength: uint32; analysisSink: ptr IDwriteTextAnalysisSink): WinResult {.w32callback.}
  cast[PfnAnalyzeLineBreakpoints](cast[ptr IDwriteTextAnalyzerVtbl](self.vtbl).AnalyzeLineBreakpoints)(self, analysisSource, textPosition, textLength, analysisSink)
proc getGlyphs*(self: ptr IDwriteTextAnalyzer; textString: ptr UncheckedArray[uint16]; textLength: uint32; fontFace: ptr IDwriteFontFace; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; numberSubstitution: ptr IDwriteNumberSubstitution; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; maxGlyphCount: uint32; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; actualGlyphCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetGlyphs = proc (self: pointer; textString: ptr UncheckedArray[uint16]; textLength: uint32; fontFace: ptr IDwriteFontFace; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; numberSubstitution: ptr IDwriteNumberSubstitution; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; maxGlyphCount: uint32; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; actualGlyphCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetGlyphs](cast[ptr IDwriteTextAnalyzerVtbl](self.vtbl).GetGlyphs)(self, textString, textLength, fontFace, isSideways, isRightToLeft, scriptAnalysis, localeName, numberSubstitution, features, featureRangeLengths, featureRanges, maxGlyphCount, clusterMap, textProps, glyphIndices, glyphProps, actualGlyphCount)
proc getGlyphPlacements*(self: ptr IDwriteTextAnalyzer; textString: ptr UncheckedArray[uint16]; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; textLength: uint32; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; glyphCount: uint32; fontFace: ptr IDwriteFontFace; fontEmSize: float32; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]): WinResult {.inline, raises: [].} =
  type PfnGetGlyphPlacements = proc (self: pointer; textString: ptr UncheckedArray[uint16]; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; textLength: uint32; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; glyphCount: uint32; fontFace: ptr IDwriteFontFace; fontEmSize: float32; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]): WinResult {.w32callback.}
  cast[PfnGetGlyphPlacements](cast[ptr IDwriteTextAnalyzerVtbl](self.vtbl).GetGlyphPlacements)(self, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, fontFace, fontEmSize, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets)
proc getGdiCompatibleGlyphPlacements*(self: ptr IDwriteTextAnalyzer; textString: ptr UncheckedArray[uint16]; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; textLength: uint32; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; glyphCount: uint32; fontFace: ptr IDwriteFontFace; fontEmSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]): WinResult {.inline, raises: [].} =
  type PfnGetGdiCompatibleGlyphPlacements = proc (self: pointer; textString: ptr UncheckedArray[uint16]; clusterMap: ptr UncheckedArray[uint16]; textProps: ptr UncheckedArray[DwriteShapingTextProperties]; textLength: uint32; glyphIndices: ptr UncheckedArray[uint16]; glyphProps: ptr UncheckedArray[DwriteShapingGlyphProperties]; glyphCount: uint32; fontFace: ptr IDwriteFontFace; fontEmSize: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; isSideways: WtBOOL; isRightToLeft: WtBOOL; scriptAnalysis: ptr DwriteScriptAnalysis; localeName: WtPWSTR; features: ptr UncheckedArray[ptr DwriteTypographicFeatures]; featureRangeLengths: ptr UncheckedArray[uint32]; featureRanges: uint32; glyphAdvances: ptr UncheckedArray[float32]; glyphOffsets: ptr UncheckedArray[DwriteGlyphOffset]): WinResult {.w32callback.}
  cast[PfnGetGdiCompatibleGlyphPlacements](cast[ptr IDwriteTextAnalyzerVtbl](self.vtbl).GetGdiCompatibleGlyphPlacements)(self, textString, clusterMap, textProps, textLength, glyphIndices, glyphProps, glyphCount, fontFace, fontEmSize, pixelsPerDip, transform, useGdiNatural, isSideways, isRightToLeft, scriptAnalysis, localeName, features, featureRangeLengths, featureRanges, glyphAdvances, glyphOffsets)
# skipped: IDwriteGlyphRunAnalysis GetAlphaTextureBounds
# skipped: IDwriteGlyphRunAnalysis CreateAlphaTexture
proc getAlphaBlendParams*(self: ptr IDwriteGlyphRunAnalysis; renderingParams: ptr IDwriteRenderingParams; blendGamma: var float32; blendEnhancedContrast: var float32; blendClearTypeLevel: var float32): WinResult {.inline, raises: [].} =
  type PfnGetAlphaBlendParams = proc (self: pointer; renderingParams: ptr IDwriteRenderingParams; blendGamma: var float32; blendEnhancedContrast: var float32; blendClearTypeLevel: var float32): WinResult {.w32callback.}
  cast[PfnGetAlphaBlendParams](cast[ptr IDwriteGlyphRunAnalysisVtbl](self.vtbl).GetAlphaBlendParams)(self, renderingParams, blendGamma, blendEnhancedContrast, blendClearTypeLevel)
proc getSystemFontCollection*(self: ptr IDwriteFactory; fontCollection: var ptr IDwriteFontCollection; checkForUpdates: WtBOOL): WinResult {.inline, raises: [].} =
  type PfnGetSystemFontCollection = proc (self: pointer; fontCollection: var ptr IDwriteFontCollection; checkForUpdates: WtBOOL): WinResult {.w32callback.}
  cast[PfnGetSystemFontCollection](cast[ptr IDwriteFactoryVtbl](self.vtbl).GetSystemFontCollection)(self, fontCollection, checkForUpdates)
proc createCustomFontCollection*(self: ptr IDwriteFactory; collectionLoader: ptr IDwriteFontCollectionLoader; collectionKey: pointer; collectionKeySize: uint32; fontCollection: var ptr IDwriteFontCollection): WinResult {.inline, raises: [].} =
  type PfnCreateCustomFontCollection = proc (self: pointer; collectionLoader: ptr IDwriteFontCollectionLoader; collectionKey: pointer; collectionKeySize: uint32; fontCollection: var ptr IDwriteFontCollection): WinResult {.w32callback.}
  cast[PfnCreateCustomFontCollection](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateCustomFontCollection)(self, collectionLoader, collectionKey, collectionKeySize, fontCollection)
proc registerFontCollectionLoader*(self: ptr IDwriteFactory; fontCollectionLoader: ptr IDwriteFontCollectionLoader): WinResult {.inline, raises: [].} =
  type PfnRegisterFontCollectionLoader = proc (self: pointer; fontCollectionLoader: ptr IDwriteFontCollectionLoader): WinResult {.w32callback.}
  cast[PfnRegisterFontCollectionLoader](cast[ptr IDwriteFactoryVtbl](self.vtbl).RegisterFontCollectionLoader)(self, fontCollectionLoader)
proc unregisterFontCollectionLoader*(self: ptr IDwriteFactory; fontCollectionLoader: ptr IDwriteFontCollectionLoader): WinResult {.inline, raises: [].} =
  type PfnUnregisterFontCollectionLoader = proc (self: pointer; fontCollectionLoader: ptr IDwriteFontCollectionLoader): WinResult {.w32callback.}
  cast[PfnUnregisterFontCollectionLoader](cast[ptr IDwriteFactoryVtbl](self.vtbl).UnregisterFontCollectionLoader)(self, fontCollectionLoader)
# skipped: IDwriteFactory CreateFontFileReference
proc createCustomFontFileReference*(self: ptr IDwriteFactory; fontFileReferenceKey: pointer; fontFileReferenceKeySize: uint32; fontFileLoader: ptr IDwriteFontFileLoader; fontFile: var ptr IDwriteFontFile): WinResult {.inline, raises: [].} =
  type PfnCreateCustomFontFileReference = proc (self: pointer; fontFileReferenceKey: pointer; fontFileReferenceKeySize: uint32; fontFileLoader: ptr IDwriteFontFileLoader; fontFile: var ptr IDwriteFontFile): WinResult {.w32callback.}
  cast[PfnCreateCustomFontFileReference](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateCustomFontFileReference)(self, fontFileReferenceKey, fontFileReferenceKeySize, fontFileLoader, fontFile)
proc createFontFace*(self: ptr IDwriteFactory; fontFaceType: DwriteFontFaceType; numberOfFiles: uint32; fontFiles: ptr UncheckedArray[ptr IDwriteFontFile]; faceIndex: uint32; fontFaceSimulationFlags: DwriteFontSimulations; fontFace: var ptr IDwriteFontFace): WinResult {.inline, raises: [].} =
  type PfnCreateFontFace = proc (self: pointer; fontFaceType: DwriteFontFaceType; numberOfFiles: uint32; fontFiles: ptr UncheckedArray[ptr IDwriteFontFile]; faceIndex: uint32; fontFaceSimulationFlags: DwriteFontSimulations; fontFace: var ptr IDwriteFontFace): WinResult {.w32callback.}
  cast[PfnCreateFontFace](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateFontFace)(self, fontFaceType, numberOfFiles, fontFiles, faceIndex, fontFaceSimulationFlags, fontFace)
proc createRenderingParams*(self: ptr IDwriteFactory; renderingParams: var ptr IDwriteRenderingParams): WinResult {.inline, raises: [].} =
  type PfnCreateRenderingParams = proc (self: pointer; renderingParams: var ptr IDwriteRenderingParams): WinResult {.w32callback.}
  cast[PfnCreateRenderingParams](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateRenderingParams)(self, renderingParams)
# skipped: IDwriteFactory CreateMonitorRenderingParams
proc createCustomRenderingParams*(self: ptr IDwriteFactory; gamma: float32; enhancedContrast: float32; clearTypeLevel: float32; pixelGeometry: DwritePixelGeometry; renderingMode: DwriteRenderingMode; renderingParams: var ptr IDwriteRenderingParams): WinResult {.inline, raises: [].} =
  type PfnCreateCustomRenderingParams = proc (self: pointer; gamma: float32; enhancedContrast: float32; clearTypeLevel: float32; pixelGeometry: DwritePixelGeometry; renderingMode: DwriteRenderingMode; renderingParams: var ptr IDwriteRenderingParams): WinResult {.w32callback.}
  cast[PfnCreateCustomRenderingParams](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateCustomRenderingParams)(self, gamma, enhancedContrast, clearTypeLevel, pixelGeometry, renderingMode, renderingParams)
proc registerFontFileLoader*(self: ptr IDwriteFactory; fontFileLoader: ptr IDwriteFontFileLoader): WinResult {.inline, raises: [].} =
  type PfnRegisterFontFileLoader = proc (self: pointer; fontFileLoader: ptr IDwriteFontFileLoader): WinResult {.w32callback.}
  cast[PfnRegisterFontFileLoader](cast[ptr IDwriteFactoryVtbl](self.vtbl).RegisterFontFileLoader)(self, fontFileLoader)
proc unregisterFontFileLoader*(self: ptr IDwriteFactory; fontFileLoader: ptr IDwriteFontFileLoader): WinResult {.inline, raises: [].} =
  type PfnUnregisterFontFileLoader = proc (self: pointer; fontFileLoader: ptr IDwriteFontFileLoader): WinResult {.w32callback.}
  cast[PfnUnregisterFontFileLoader](cast[ptr IDwriteFactoryVtbl](self.vtbl).UnregisterFontFileLoader)(self, fontFileLoader)
proc createTextFormat*(self: ptr IDwriteFactory; fontFamilyName: WtPWSTR; fontCollection: ptr IDwriteFontCollection; fontWeight: DwriteFontWeight; fontStyle: DwriteFontStyle; fontStretch: DwriteFontStretch; fontSize: float32; localeName: WtPWSTR; textFormat: var ptr IDwriteTextFormat): WinResult {.inline, raises: [].} =
  type PfnCreateTextFormat = proc (self: pointer; fontFamilyName: WtPWSTR; fontCollection: ptr IDwriteFontCollection; fontWeight: DwriteFontWeight; fontStyle: DwriteFontStyle; fontStretch: DwriteFontStretch; fontSize: float32; localeName: WtPWSTR; textFormat: var ptr IDwriteTextFormat): WinResult {.w32callback.}
  cast[PfnCreateTextFormat](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateTextFormat)(self, fontFamilyName, fontCollection, fontWeight, fontStyle, fontStretch, fontSize, localeName, textFormat)
proc createTypography*(self: ptr IDwriteFactory; typography: var ptr IDwriteTypography): WinResult {.inline, raises: [].} =
  type PfnCreateTypography = proc (self: pointer; typography: var ptr IDwriteTypography): WinResult {.w32callback.}
  cast[PfnCreateTypography](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateTypography)(self, typography)
proc getGdiInterop*(self: ptr IDwriteFactory; gdiInterop: var ptr IDwriteGdiInterop): WinResult {.inline, raises: [].} =
  type PfnGetGdiInterop = proc (self: pointer; gdiInterop: var ptr IDwriteGdiInterop): WinResult {.w32callback.}
  cast[PfnGetGdiInterop](cast[ptr IDwriteFactoryVtbl](self.vtbl).GetGdiInterop)(self, gdiInterop)
proc createTextLayout*(self: ptr IDwriteFactory; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDwriteTextFormat; maxWidth: float32; maxHeight: float32; textLayout: var ptr IDwriteTextLayout): WinResult {.inline, raises: [].} =
  type PfnCreateTextLayout = proc (self: pointer; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDwriteTextFormat; maxWidth: float32; maxHeight: float32; textLayout: var ptr IDwriteTextLayout): WinResult {.w32callback.}
  cast[PfnCreateTextLayout](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateTextLayout)(self, string, stringLength, textFormat, maxWidth, maxHeight, textLayout)
proc createGdiCompatibleTextLayout*(self: ptr IDwriteFactory; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDwriteTextFormat; layoutWidth: float32; layoutHeight: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; textLayout: var ptr IDwriteTextLayout): WinResult {.inline, raises: [].} =
  type PfnCreateGdiCompatibleTextLayout = proc (self: pointer; string: ptr UncheckedArray[uint16]; stringLength: uint32; textFormat: ptr IDwriteTextFormat; layoutWidth: float32; layoutHeight: float32; pixelsPerDip: float32; transform: ptr DwriteMatrix; useGdiNatural: WtBOOL; textLayout: var ptr IDwriteTextLayout): WinResult {.w32callback.}
  cast[PfnCreateGdiCompatibleTextLayout](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateGdiCompatibleTextLayout)(self, string, stringLength, textFormat, layoutWidth, layoutHeight, pixelsPerDip, transform, useGdiNatural, textLayout)
proc createEllipsisTrimmingSign*(self: ptr IDwriteFactory; textFormat: ptr IDwriteTextFormat; trimmingSign: var ptr IDwriteInlineObject): WinResult {.inline, raises: [].} =
  type PfnCreateEllipsisTrimmingSign = proc (self: pointer; textFormat: ptr IDwriteTextFormat; trimmingSign: var ptr IDwriteInlineObject): WinResult {.w32callback.}
  cast[PfnCreateEllipsisTrimmingSign](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateEllipsisTrimmingSign)(self, textFormat, trimmingSign)
proc createTextAnalyzer*(self: ptr IDwriteFactory; textAnalyzer: var ptr IDwriteTextAnalyzer): WinResult {.inline, raises: [].} =
  type PfnCreateTextAnalyzer = proc (self: pointer; textAnalyzer: var ptr IDwriteTextAnalyzer): WinResult {.w32callback.}
  cast[PfnCreateTextAnalyzer](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateTextAnalyzer)(self, textAnalyzer)
proc createNumberSubstitution*(self: ptr IDwriteFactory; substitutionMethod: DwriteNumberSubstitutionMethod; localeName: WtPWSTR; ignoreUserOverride: WtBOOL; numberSubstitution: var ptr IDwriteNumberSubstitution): WinResult {.inline, raises: [].} =
  type PfnCreateNumberSubstitution = proc (self: pointer; substitutionMethod: DwriteNumberSubstitutionMethod; localeName: WtPWSTR; ignoreUserOverride: WtBOOL; numberSubstitution: var ptr IDwriteNumberSubstitution): WinResult {.w32callback.}
  cast[PfnCreateNumberSubstitution](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateNumberSubstitution)(self, substitutionMethod, localeName, ignoreUserOverride, numberSubstitution)
proc createGlyphRunAnalysis*(self: ptr IDwriteFactory; glyphRun: DwriteGlyphRun; pixelsPerDip: float32; transform: ptr DwriteMatrix; renderingMode: DwriteRenderingMode; measuringMode: DwriteMeasuringMode; baselineOriginX: float32; baselineOriginY: float32; glyphRunAnalysis: var ptr IDwriteGlyphRunAnalysis): WinResult {.inline, raises: [].} =
  type PfnCreateGlyphRunAnalysis = proc (self: pointer; glyphRun: DwriteGlyphRun; pixelsPerDip: float32; transform: ptr DwriteMatrix; renderingMode: DwriteRenderingMode; measuringMode: DwriteMeasuringMode; baselineOriginX: float32; baselineOriginY: float32; glyphRunAnalysis: var ptr IDwriteGlyphRunAnalysis): WinResult {.w32callback.}
  cast[PfnCreateGlyphRunAnalysis](cast[ptr IDwriteFactoryVtbl](self.vtbl).CreateGlyphRunAnalysis)(self, glyphRun, pixelsPerDip, transform, renderingMode, measuringMode, baselineOriginX, baselineOriginY, glyphRunAnalysis)
template winGuid*(t: typedesc[IDwriteLocalizedStrings]): WinGuid =
  WinGuid(Data1: 0x08256209'u32, Data2: 0x099a'u16, Data3: 0x4b34'u16, Data4: [0xb8'u8, 0x6d'u8, 0xc2'u8, 0x2b'u8, 0x11'u8, 0x0e'u8, 0x77'u8, 0x71'u8])
template winGuid*(t: typedesc[IDwriteFontFileStream]): WinGuid =
  WinGuid(Data1: 0x6d4865fe'u32, Data2: 0x0ab8'u16, Data3: 0x4d91'u16, Data4: [0x8f'u8, 0x62'u8, 0x5d'u8, 0xd6'u8, 0xbe'u8, 0x34'u8, 0xa3'u8, 0xe0'u8])
template winGuid*(t: typedesc[IDwriteFontFileLoader]): WinGuid =
  WinGuid(Data1: 0x727cad4e'u32, Data2: 0xd6af'u16, Data3: 0x4c9e'u16, Data4: [0x8a'u8, 0x08'u8, 0xd6'u8, 0x95'u8, 0xb1'u8, 0x1c'u8, 0xaa'u8, 0x49'u8])
template winGuid*(t: typedesc[IDwriteFontFile]): WinGuid =
  WinGuid(Data1: 0x739d886a'u32, Data2: 0xcef5'u16, Data3: 0x47dc'u16, Data4: [0x87'u8, 0x69'u8, 0x1a'u8, 0x8b'u8, 0x41'u8, 0xbe'u8, 0xbb'u8, 0xb0'u8])
template winGuid*(t: typedesc[IDwriteRenderingParams]): WinGuid =
  WinGuid(Data1: 0x2f0da53a'u32, Data2: 0x2add'u16, Data3: 0x47cd'u16, Data4: [0x82'u8, 0xee'u8, 0xd9'u8, 0xec'u8, 0x34'u8, 0x68'u8, 0x8e'u8, 0x75'u8])
template winGuid*(t: typedesc[IDwriteFontFace]): WinGuid =
  WinGuid(Data1: 0x5f49804d'u32, Data2: 0x7024'u16, Data3: 0x4d43'u16, Data4: [0xbf'u8, 0xa9'u8, 0xd2'u8, 0x59'u8, 0x84'u8, 0xf5'u8, 0x38'u8, 0x49'u8])
template winGuid*(t: typedesc[IDwriteFont]): WinGuid =
  WinGuid(Data1: 0xacd16696'u32, Data2: 0x8c14'u16, Data3: 0x4f5d'u16, Data4: [0x87'u8, 0x7e'u8, 0xfe'u8, 0x3f'u8, 0xc1'u8, 0xd3'u8, 0x27'u8, 0x37'u8])
template winGuid*(t: typedesc[IDwriteFontList]): WinGuid =
  WinGuid(Data1: 0x1a0d8438'u32, Data2: 0x1d97'u16, Data3: 0x4ec1'u16, Data4: [0xae'u8, 0xf9'u8, 0xa2'u8, 0xfb'u8, 0x86'u8, 0xed'u8, 0x6a'u8, 0xcb'u8])
template winGuid*(t: typedesc[IDwriteFontFamily]): WinGuid =
  WinGuid(Data1: 0xda20d8ef'u32, Data2: 0x812a'u16, Data3: 0x4c43'u16, Data4: [0x98'u8, 0x02'u8, 0x62'u8, 0xec'u8, 0x4a'u8, 0xbd'u8, 0x7a'u8, 0xdd'u8])
template winGuid*(t: typedesc[IDwriteFontCollection]): WinGuid =
  WinGuid(Data1: 0xa84cee02'u32, Data2: 0x3eea'u16, Data3: 0x4eee'u16, Data4: [0xa8'u8, 0x27'u8, 0x87'u8, 0xc1'u8, 0xa0'u8, 0x2a'u8, 0x0f'u8, 0xcc'u8])
template winGuid*(t: typedesc[IDwriteFontFileEnumerator]): WinGuid =
  WinGuid(Data1: 0x72755049'u32, Data2: 0x5ff7'u16, Data3: 0x435d'u16, Data4: [0x83'u8, 0x48'u8, 0x4b'u8, 0xe9'u8, 0x7c'u8, 0xfa'u8, 0x6c'u8, 0x7c'u8])
template winGuid*(t: typedesc[IDwriteFontCollectionLoader]): WinGuid =
  WinGuid(Data1: 0xcca920e4'u32, Data2: 0x52f0'u16, Data3: 0x492b'u16, Data4: [0xbf'u8, 0xa8'u8, 0x29'u8, 0xc7'u8, 0x2e'u8, 0xe0'u8, 0xa4'u8, 0x68'u8])
template winGuid*(t: typedesc[IDwritePixelSnapping]): WinGuid =
  WinGuid(Data1: 0xeaf3a2da'u32, Data2: 0xecf4'u16, Data3: 0x4d24'u16, Data4: [0xb6'u8, 0x44'u8, 0xb3'u8, 0x4f'u8, 0x68'u8, 0x42'u8, 0x02'u8, 0x4b'u8])
template winGuid*(t: typedesc[IDwriteTextRenderer]): WinGuid =
  WinGuid(Data1: 0xef8a8135'u32, Data2: 0x5cc6'u16, Data3: 0x45fe'u16, Data4: [0x88'u8, 0x25'u8, 0xc5'u8, 0xa0'u8, 0x72'u8, 0x4e'u8, 0xb8'u8, 0x19'u8])
template winGuid*(t: typedesc[IDwriteInlineObject]): WinGuid =
  WinGuid(Data1: 0x8339fde3'u32, Data2: 0x106f'u16, Data3: 0x47ab'u16, Data4: [0x83'u8, 0x73'u8, 0x1c'u8, 0x62'u8, 0x95'u8, 0xeb'u8, 0x10'u8, 0xb3'u8])
template winGuid*(t: typedesc[IDwriteTextFormat]): WinGuid =
  WinGuid(Data1: 0x9c906818'u32, Data2: 0x31d7'u16, Data3: 0x4fd3'u16, Data4: [0xa1'u8, 0x51'u8, 0x7c'u8, 0x5e'u8, 0x22'u8, 0x5d'u8, 0xb5'u8, 0x5a'u8])
template winGuid*(t: typedesc[IDwriteTypography]): WinGuid =
  WinGuid(Data1: 0x55f1112b'u32, Data2: 0x1dc2'u16, Data3: 0x4b3c'u16, Data4: [0x95'u8, 0x41'u8, 0xf4'u8, 0x68'u8, 0x94'u8, 0xed'u8, 0x85'u8, 0xb6'u8])
template winGuid*(t: typedesc[IDwriteBitmapRenderTarget]): WinGuid =
  WinGuid(Data1: 0x5e5a32a3'u32, Data2: 0x8dff'u16, Data3: 0x4773'u16, Data4: [0x9f'u8, 0xf6'u8, 0x06'u8, 0x96'u8, 0xea'u8, 0xb7'u8, 0x72'u8, 0x67'u8])
template winGuid*(t: typedesc[IDwriteGdiInterop]): WinGuid =
  WinGuid(Data1: 0x1edd9491'u32, Data2: 0x9853'u16, Data3: 0x4299'u16, Data4: [0x89'u8, 0x8f'u8, 0x64'u8, 0x32'u8, 0x98'u8, 0x3b'u8, 0x6f'u8, 0x3a'u8])
template winGuid*(t: typedesc[IDwriteTextLayout]): WinGuid =
  WinGuid(Data1: 0x53737037'u32, Data2: 0x6d14'u16, Data3: 0x410b'u16, Data4: [0x9b'u8, 0xfe'u8, 0x0b'u8, 0x18'u8, 0x2b'u8, 0xb7'u8, 0x09'u8, 0x61'u8])
template winGuid*(t: typedesc[IDwriteNumberSubstitution]): WinGuid =
  WinGuid(Data1: 0x14885cc9'u32, Data2: 0xbab0'u16, Data3: 0x4f90'u16, Data4: [0xb6'u8, 0xed'u8, 0x5c'u8, 0x36'u8, 0x6a'u8, 0x2c'u8, 0xd0'u8, 0x3d'u8])
template winGuid*(t: typedesc[IDwriteTextAnalysisSource]): WinGuid =
  WinGuid(Data1: 0x688e1a58'u32, Data2: 0x5094'u16, Data3: 0x47c8'u16, Data4: [0xad'u8, 0xc8'u8, 0xfb'u8, 0xce'u8, 0xa6'u8, 0x0a'u8, 0xe9'u8, 0x2b'u8])
template winGuid*(t: typedesc[IDwriteTextAnalysisSink]): WinGuid =
  WinGuid(Data1: 0x5810cd44'u32, Data2: 0x0ca0'u16, Data3: 0x4701'u16, Data4: [0xb3'u8, 0xfa'u8, 0xbe'u8, 0xc5'u8, 0x18'u8, 0x2a'u8, 0xe4'u8, 0xf6'u8])
template winGuid*(t: typedesc[IDwriteTextAnalyzer]): WinGuid =
  WinGuid(Data1: 0xb7e6163e'u32, Data2: 0x7f46'u16, Data3: 0x43b4'u16, Data4: [0x84'u8, 0xb3'u8, 0xe4'u8, 0xe6'u8, 0x24'u8, 0x9c'u8, 0x36'u8, 0x5d'u8])
template winGuid*(t: typedesc[IDwriteGlyphRunAnalysis]): WinGuid =
  WinGuid(Data1: 0x7d97dbf7'u32, Data2: 0xe085'u16, Data3: 0x42d4'u16, Data4: [0x81'u8, 0xe3'u8, 0x6a'u8, 0x88'u8, 0x3b'u8, 0xde'u8, 0xd1'u8, 0x18'u8])
template winGuid*(t: typedesc[IDwriteFactory]): WinGuid =
  WinGuid(Data1: 0xb859ee5a'u32, Data2: 0xd838'u16, Data3: 0x4b5b'u16, Data4: [0xa2'u8, 0xe8'u8, 0x1a'u8, 0xdc'u8, 0x7d'u8, 0x93'u8, 0xdb'u8, 0x48'u8])

