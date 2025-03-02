type
  WtPWSTR = ptr UncheckedArray[uint16]
  # WicDecodeOptions* = int32 # enum
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
  # WicComponentType* = int32 # enum
  WtBOOL = int32
  WicBitmapPattern* {.pure, byref.} = object
    Position*: WtULARGE_INTEGER
    Length*: uint32
    Pattern*: ptr uint8
    Mask*: ptr uint8
    EndOfStream*: WtBOOL
  # WicBitmapPaletteType* = int32 # enum
  WicRect* {.pure, byref.} = object
    X*: int32
    Y*: int32
    Width*: int32
    Height*: int32
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
  # WicColorContextType* = int32 # enum
  # WicBitmapEncoderCacheOption* = int32 # enum
  # WicBitmapDitherType* = int32 # enum
  # WicBitmapInterpolationMode* = int32 # enum
  # WicBitmapTransformOptions* = int32 # enum
  # WicBitmapCreateCacheOption* = int32 # enum
  # WicBitmapLockFlags* = int32 # enum
  WtHBITMAP = int
  WtHPALETTE = int
  # WicBitmapAlphaChannelOption* = int32 # enum
  WtHICON = int
  IWicComponentInfoVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetComponentType = proc (self: ptr IWicComponentInfo; pType: var WicComponentType): WinResult {.w32callback.}
    GetComponentType*: FnPointer
    # PfnGetCLSID = proc (self: ptr IWicComponentInfo; pclsid: var WinGuid): WinResult {.w32callback.}
    GetCLSID*: FnPointer
    # PfnGetSigningStatus = proc (self: ptr IWicComponentInfo; pStatus: var uint32): WinResult {.w32callback.}
    GetSigningStatus*: FnPointer
    # PfnGetAuthor = proc (self: ptr IWicComponentInfo; cchAuthor: uint32; wzAuthor: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetAuthor*: FnPointer
    # PfnGetVendorGUID = proc (self: ptr IWicComponentInfo; pguidVendor: var WinGuid): WinResult {.w32callback.}
    GetVendorGUID*: FnPointer
    # PfnGetVersion = proc (self: ptr IWicComponentInfo; cchVersion: uint32; wzVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetVersion*: FnPointer
    # PfnGetSpecVersion = proc (self: ptr IWicComponentInfo; cchSpecVersion: uint32; wzSpecVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetSpecVersion*: FnPointer
    # PfnGetFriendlyName = proc (self: ptr IWicComponentInfo; cchFriendlyName: uint32; wzFriendlyName: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetFriendlyName*: FnPointer
  IWicBitmapCodecInfoVtbl* {.pure.} = object
    base*: IWicComponentInfoVtbl
    # PfnGetContainerFormat = proc (self: ptr IWicBitmapCodecInfo; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
    GetContainerFormat*: FnPointer
    # PfnGetPixelFormats = proc (self: ptr IWicBitmapCodecInfo; cFormats: uint32; pguidPixelFormats: ptr UncheckedArray[WinGuid]; pcActual: var uint32): WinResult {.w32callback.}
    GetPixelFormats*: FnPointer
    # PfnGetColorManagementVersion = proc (self: ptr IWicBitmapCodecInfo; cchColorManagementVersion: uint32; wzColorManagementVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetColorManagementVersion*: FnPointer
    # PfnGetDeviceManufacturer = proc (self: ptr IWicBitmapCodecInfo; cchDeviceManufacturer: uint32; wzDeviceManufacturer: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetDeviceManufacturer*: FnPointer
    # PfnGetDeviceModels = proc (self: ptr IWicBitmapCodecInfo; cchDeviceModels: uint32; wzDeviceModels: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetDeviceModels*: FnPointer
    # PfnGetMimeTypes = proc (self: ptr IWicBitmapCodecInfo; cchMimeTypes: uint32; wzMimeTypes: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetMimeTypes*: FnPointer
    # PfnGetFileExtensions = proc (self: ptr IWicBitmapCodecInfo; cchFileExtensions: uint32; wzFileExtensions: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
    GetFileExtensions*: FnPointer
    # PfnDoesSupportAnimation = proc (self: ptr IWicBitmapCodecInfo; pfSupportAnimation: var WtBOOL): WinResult {.w32callback.}
    DoesSupportAnimation*: FnPointer
    # PfnDoesSupportChromakey = proc (self: ptr IWicBitmapCodecInfo; pfSupportChromakey: var WtBOOL): WinResult {.w32callback.}
    DoesSupportChromakey*: FnPointer
    # PfnDoesSupportLossless = proc (self: ptr IWicBitmapCodecInfo; pfSupportLossless: var WtBOOL): WinResult {.w32callback.}
    DoesSupportLossless*: FnPointer
    # PfnDoesSupportMultiframe = proc (self: ptr IWicBitmapCodecInfo; pfSupportMultiframe: var WtBOOL): WinResult {.w32callback.}
    DoesSupportMultiframe*: FnPointer
    # PfnMatchesMimeType = proc (self: ptr IWicBitmapCodecInfo; wzMimeType: WtPWSTR; pfMatches: var WtBOOL): WinResult {.w32callback.}
    MatchesMimeType*: FnPointer
  IWicBitmapDecoderInfoVtbl* {.pure.} = object
    base*: IWicBitmapCodecInfoVtbl
    # PfnGetPatterns = proc (self: ptr IWicBitmapDecoderInfo; cbSizePatterns: uint32; pPatterns: ptr WicBitmapPattern; pcPatterns: ptr uint32; pcbPatternsActual: var uint32): WinResult {.w32callback.}
    GetPatterns*: FnPointer
    # PfnMatchesPattern = proc (self: ptr IWicBitmapDecoderInfo; pIStream: ptr IStream; pfMatches: var WtBOOL): WinResult {.w32callback.}
    MatchesPattern*: FnPointer
    # PfnCreateInstance = proc (self: ptr IWicBitmapDecoderInfo; ppIBitmapDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
    CreateInstance*: FnPointer
  IWicBitmapSourceVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetSize = proc (self: ptr IWicBitmapSource; puiWidth: var uint32; puiHeight: var uint32): WinResult {.w32callback.}
    GetSize*: FnPointer
    # PfnGetPixelFormat = proc (self: ptr IWicBitmapSource; pPixelFormat: var WinGuid): WinResult {.w32callback.}
    GetPixelFormat*: FnPointer
    # PfnGetResolution = proc (self: ptr IWicBitmapSource; pDpiX: var float64; pDpiY: var float64): WinResult {.w32callback.}
    GetResolution*: FnPointer
    # PfnCopyPalette = proc (self: ptr IWicBitmapSource; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
    CopyPalette*: FnPointer
    # PfnCopyPixels = proc (self: ptr IWicBitmapSource; prc: ptr WicRect; cbStride: uint32; cbBufferSize: uint32; pbBuffer: ptr UncheckedArray[uint8]): WinResult {.w32callback.}
    CopyPixels*: FnPointer
  IWicPaletteVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnInitializePredefined = proc (self: ptr IWicPalette; ePaletteType: WicBitmapPaletteType; fAddTransparentColor: WtBOOL): WinResult {.w32callback.}
    InitializePredefined*: FnPointer
    # PfnInitializeCustom = proc (self: ptr IWicPalette; pColors: ptr UncheckedArray[uint32]; cCount: uint32): WinResult {.w32callback.}
    InitializeCustom*: FnPointer
    # PfnInitializeFromBitmap = proc (self: ptr IWicPalette; pISurface: ptr IWicBitmapSource; cCount: uint32; fAddTransparentColor: WtBOOL): WinResult {.w32callback.}
    InitializeFromBitmap*: FnPointer
    # PfnInitializeFromPalette = proc (self: ptr IWicPalette; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
    InitializeFromPalette*: FnPointer
    # PfnGetType = proc (self: ptr IWicPalette; pePaletteType: var WicBitmapPaletteType): WinResult {.w32callback.}
    GetType*: FnPointer
    # PfnGetColorCount = proc (self: ptr IWicPalette; pcCount: var uint32): WinResult {.w32callback.}
    GetColorCount*: FnPointer
    # PfnGetColors = proc (self: ptr IWicPalette; cCount: uint32; pColors: ptr UncheckedArray[uint32]; pcActualColors: var uint32): WinResult {.w32callback.}
    GetColors*: FnPointer
    # PfnIsBlackWhite = proc (self: ptr IWicPalette; pfIsBlackWhite: var WtBOOL): WinResult {.w32callback.}
    IsBlackWhite*: FnPointer
    # PfnIsGrayscale = proc (self: ptr IWicPalette; pfIsGrayscale: var WtBOOL): WinResult {.w32callback.}
    IsGrayscale*: FnPointer
    # PfnHasAlpha = proc (self: ptr IWicPalette; pfHasAlpha: var WtBOOL): WinResult {.w32callback.}
    HasAlpha*: FnPointer
  IWicMetadataQueryReaderVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetContainerFormat = proc (self: ptr IWicMetadataQueryReader; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
    GetContainerFormat*: FnPointer
    # PfnGetLocation = proc (self: ptr IWicMetadataQueryReader; cchMaxLength: uint32; wzNamespace: ptr UncheckedArray[uint16]; pcchActualLength: var uint32): WinResult {.w32callback.}
    GetLocation*: FnPointer
    # PfnGetMetadataByName = proc (self: ptr IWicMetadataQueryReader; wzName: WtPWSTR; pvarValue: var WtPROPVARIANT): WinResult {.w32callback.}
    GetMetadataByName*: FnPointer
    # PfnGetEnumerator = proc (self: ptr IWicMetadataQueryReader; ppIEnumString: var ptr WtIEnumString): WinResult {.w32callback.}
    GetEnumerator*: FnPointer
  IWicColorContextVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnInitializeFromFilename = proc (self: ptr IWicColorContext; wzFilename: WtPWSTR): WinResult {.w32callback.}
    InitializeFromFilename*: FnPointer
    # PfnInitializeFromMemory = proc (self: ptr IWicColorContext; pbBuffer: ptr UncheckedArray[uint8]; cbBufferSize: uint32): WinResult {.w32callback.}
    InitializeFromMemory*: FnPointer
    # PfnInitializeFromExifColorSpace = proc (self: ptr IWicColorContext; value: uint32): WinResult {.w32callback.}
    InitializeFromExifColorSpace*: FnPointer
    # PfnGetType = proc (self: ptr IWicColorContext; pType: var WicColorContextType): WinResult {.w32callback.}
    GetType*: FnPointer
    # PfnGetProfileBytes = proc (self: ptr IWicColorContext; cbBuffer: uint32; pbBuffer: ptr UncheckedArray[uint8]; pcbActual: var uint32): WinResult {.w32callback.}
    GetProfileBytes*: FnPointer
    # PfnGetExifColorSpace = proc (self: ptr IWicColorContext; pValue: var uint32): WinResult {.w32callback.}
    GetExifColorSpace*: FnPointer
  IWicBitmapFrameDecodeVtbl* {.pure.} = object
    base*: IWicBitmapSourceVtbl
    # PfnGetMetadataQueryReader = proc (self: ptr IWicBitmapFrameDecode; ppIMetadataQueryReader: var ptr IWicMetadataQueryReader): WinResult {.w32callback.}
    GetMetadataQueryReader*: FnPointer
    # PfnGetColorContexts = proc (self: ptr IWicBitmapFrameDecode; cCount: uint32; ppIColorContexts: ptr UncheckedArray[ptr IWicColorContext]; pcActualCount: var uint32): WinResult {.w32callback.}
    GetColorContexts*: FnPointer
    # PfnGetThumbnail = proc (self: ptr IWicBitmapFrameDecode; ppIThumbnail: var ptr IWicBitmapSource): WinResult {.w32callback.}
    GetThumbnail*: FnPointer
  IWicBitmapDecoderVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnQueryCapability = proc (self: ptr IWicBitmapDecoder; pIStream: ptr IStream; pdwCapability: var uint32): WinResult {.w32callback.}
    QueryCapability*: FnPointer
    # PfnInitialize = proc (self: ptr IWicBitmapDecoder; pIStream: ptr IStream; cacheOptions: WicDecodeOptions): WinResult {.w32callback.}
    Initialize*: FnPointer
    # PfnGetContainerFormat = proc (self: ptr IWicBitmapDecoder; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
    GetContainerFormat*: FnPointer
    # PfnGetDecoderInfo = proc (self: ptr IWicBitmapDecoder; ppIDecoderInfo: var ptr IWicBitmapDecoderInfo): WinResult {.w32callback.}
    GetDecoderInfo*: FnPointer
    # PfnCopyPalette = proc (self: ptr IWicBitmapDecoder; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
    CopyPalette*: FnPointer
    # PfnGetMetadataQueryReader = proc (self: ptr IWicBitmapDecoder; ppIMetadataQueryReader: var ptr IWicMetadataQueryReader): WinResult {.w32callback.}
    GetMetadataQueryReader*: FnPointer
    # PfnGetPreview = proc (self: ptr IWicBitmapDecoder; ppIBitmapSource: var ptr IWicBitmapSource): WinResult {.w32callback.}
    GetPreview*: FnPointer
    # PfnGetColorContexts = proc (self: ptr IWicBitmapDecoder; cCount: uint32; ppIColorContexts: ptr UncheckedArray[ptr IWicColorContext]; pcActualCount: var uint32): WinResult {.w32callback.}
    GetColorContexts*: FnPointer
    # PfnGetThumbnail = proc (self: ptr IWicBitmapDecoder; ppIThumbnail: var ptr IWicBitmapSource): WinResult {.w32callback.}
    GetThumbnail*: FnPointer
    # PfnGetFrameCount = proc (self: ptr IWicBitmapDecoder; pCount: var uint32): WinResult {.w32callback.}
    GetFrameCount*: FnPointer
    # PfnGetFrame = proc (self: ptr IWicBitmapDecoder; index: uint32; ppIBitmapFrame: var ptr IWicBitmapFrameDecode): WinResult {.w32callback.}
    GetFrame*: FnPointer
  IWicBitmapEncoderInfoVtbl* {.pure.} = object
    base*: IWicBitmapCodecInfoVtbl
    # PfnCreateInstance = proc (self: ptr IWicBitmapEncoderInfo; ppIBitmapEncoder: var ptr IWicBitmapEncoder): WinResult {.w32callback.}
    CreateInstance*: FnPointer
  IWicMetadataQueryWriterVtbl* {.pure.} = object
    base*: IWicMetadataQueryReaderVtbl
    # PfnSetMetadataByName = proc (self: ptr IWicMetadataQueryWriter; wzName: WtPWSTR; pvarValue: WtPROPVARIANT): WinResult {.w32callback.}
    SetMetadataByName*: FnPointer
    # PfnRemoveMetadataByName = proc (self: ptr IWicMetadataQueryWriter; wzName: WtPWSTR): WinResult {.w32callback.}
    RemoveMetadataByName*: FnPointer
  IWicBitmapFrameEncodeVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnInitialize = proc (self: ptr IWicBitmapFrameEncode; pIEncoderOptions: ptr WtIPropertyBag2): WinResult {.w32callback.}
    Initialize*: FnPointer
    # PfnSetSize = proc (self: ptr IWicBitmapFrameEncode; uiWidth: uint32; uiHeight: uint32): WinResult {.w32callback.}
    SetSize*: FnPointer
    # PfnSetResolution = proc (self: ptr IWicBitmapFrameEncode; dpiX: float64; dpiY: float64): WinResult {.w32callback.}
    SetResolution*: FnPointer
    # PfnSetPixelFormat = proc (self: ptr IWicBitmapFrameEncode; pPixelFormat: var WinGuid): WinResult {.w32callback.}
    SetPixelFormat*: FnPointer
    # PfnSetColorContexts = proc (self: ptr IWicBitmapFrameEncode; cCount: uint32; ppIColorContext: ptr UncheckedArray[ptr IWicColorContext]): WinResult {.w32callback.}
    SetColorContexts*: FnPointer
    # PfnSetPalette = proc (self: ptr IWicBitmapFrameEncode; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
    SetPalette*: FnPointer
    # PfnSetThumbnail = proc (self: ptr IWicBitmapFrameEncode; pIThumbnail: ptr IWicBitmapSource): WinResult {.w32callback.}
    SetThumbnail*: FnPointer
    # PfnWritePixels = proc (self: ptr IWicBitmapFrameEncode; lineCount: uint32; cbStride: uint32; cbBufferSize: uint32; pbPixels: ptr UncheckedArray[uint8]): WinResult {.w32callback.}
    WritePixels*: FnPointer
    # PfnWriteSource = proc (self: ptr IWicBitmapFrameEncode; pIBitmapSource: ptr IWicBitmapSource; prc: WicRect): WinResult {.w32callback.}
    WriteSource*: FnPointer
    # PfnCommit = proc (self: ptr IWicBitmapFrameEncode): WinResult {.w32callback.}
    Commit*: FnPointer
    # PfnGetMetadataQueryWriter = proc (self: ptr IWicBitmapFrameEncode; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
    GetMetadataQueryWriter*: FnPointer
  IWicBitmapEncoderVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnInitialize = proc (self: ptr IWicBitmapEncoder; pIStream: ptr IStream; cacheOption: WicBitmapEncoderCacheOption): WinResult {.w32callback.}
    Initialize*: FnPointer
    # PfnGetContainerFormat = proc (self: ptr IWicBitmapEncoder; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
    GetContainerFormat*: FnPointer
    # PfnGetEncoderInfo = proc (self: ptr IWicBitmapEncoder; ppIEncoderInfo: var ptr IWicBitmapEncoderInfo): WinResult {.w32callback.}
    GetEncoderInfo*: FnPointer
    # PfnSetColorContexts = proc (self: ptr IWicBitmapEncoder; cCount: uint32; ppIColorContext: ptr UncheckedArray[ptr IWicColorContext]): WinResult {.w32callback.}
    SetColorContexts*: FnPointer
    # PfnSetPalette = proc (self: ptr IWicBitmapEncoder; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
    SetPalette*: FnPointer
    # PfnSetThumbnail = proc (self: ptr IWicBitmapEncoder; pIThumbnail: ptr IWicBitmapSource): WinResult {.w32callback.}
    SetThumbnail*: FnPointer
    # PfnSetPreview = proc (self: ptr IWicBitmapEncoder; pIPreview: ptr IWicBitmapSource): WinResult {.w32callback.}
    SetPreview*: FnPointer
    # PfnCreateNewFrame = proc (self: ptr IWicBitmapEncoder; ppIFrameEncode: var ptr IWicBitmapFrameEncode; ppIEncoderOptions: var ptr WtIPropertyBag2): WinResult {.w32callback.}
    CreateNewFrame*: FnPointer
    # PfnCommit = proc (self: ptr IWicBitmapEncoder): WinResult {.w32callback.}
    Commit*: FnPointer
    # PfnGetMetadataQueryWriter = proc (self: ptr IWicBitmapEncoder; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
    GetMetadataQueryWriter*: FnPointer
  IWicFormatConverterVtbl* {.pure.} = object
    base*: IWicBitmapSourceVtbl
    # PfnInitialize = proc (self: ptr IWicFormatConverter; pISource: ptr IWicBitmapSource; dstFormat: ptr WinGuid; dither: WicBitmapDitherType; pIPalette: ptr IWicPalette; alphaThresholdPercent: float64; paletteTranslate: WicBitmapPaletteType): WinResult {.w32callback.}
    Initialize*: FnPointer
    # PfnCanConvert = proc (self: ptr IWicFormatConverter; srcPixelFormat: ptr WinGuid; dstPixelFormat: ptr WinGuid; pfCanConvert: var WtBOOL): WinResult {.w32callback.}
    CanConvert*: FnPointer
  IWicBitmapScalerVtbl* {.pure.} = object
    base*: IWicBitmapSourceVtbl
    # PfnInitialize = proc (self: ptr IWicBitmapScaler; pISource: ptr IWicBitmapSource; uiWidth: uint32; uiHeight: uint32; mode: WicBitmapInterpolationMode): WinResult {.w32callback.}
    Initialize*: FnPointer
  IWicBitmapClipperVtbl* {.pure.} = object
    base*: IWicBitmapSourceVtbl
    # PfnInitialize = proc (self: ptr IWicBitmapClipper; pISource: ptr IWicBitmapSource; prc: WicRect): WinResult {.w32callback.}
    Initialize*: FnPointer
  IWicBitmapFlipRotatorVtbl* {.pure.} = object
    base*: IWicBitmapSourceVtbl
    # PfnInitialize = proc (self: ptr IWicBitmapFlipRotator; pISource: ptr IWicBitmapSource; options: WicBitmapTransformOptions): WinResult {.w32callback.}
    Initialize*: FnPointer
  IWicStreamVtbl* {.pure.} = object
    base*: IStreamVtbl
    # PfnInitializeFromIStream = proc (self: ptr IWicStream; pIStream: ptr IStream): WinResult {.w32callback.}
    InitializeFromIStream*: FnPointer
    # PfnInitializeFromFilename = proc (self: ptr IWicStream; wzFileName: WtPWSTR; dwDesiredAccess: uint32): WinResult {.w32callback.}
    InitializeFromFilename*: FnPointer
    # PfnInitializeFromMemory = proc (self: ptr IWicStream; pbBuffer: ptr UncheckedArray[uint8]; cbBufferSize: uint32): WinResult {.w32callback.}
    InitializeFromMemory*: FnPointer
    # PfnInitializeFromIStreamRegion = proc (self: ptr IWicStream; pIStream: ptr IStream; ulOffset: WtULARGE_INTEGER; ulMaxSize: WtULARGE_INTEGER): WinResult {.w32callback.}
    InitializeFromIStreamRegion*: FnPointer
  IWicColorTransformVtbl* {.pure.} = object
    base*: IWicBitmapSourceVtbl
    # PfnInitialize = proc (self: ptr IWicColorTransform; pIBitmapSource: ptr IWicBitmapSource; pIContextSource: ptr IWicColorContext; pIContextDest: ptr IWicColorContext; pixelFmtDest: ptr WinGuid): WinResult {.w32callback.}
    Initialize*: FnPointer
  IWicBitmapLockVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnGetSize = proc (self: ptr IWicBitmapLock; puiWidth: var uint32; puiHeight: var uint32): WinResult {.w32callback.}
    GetSize*: FnPointer
    # PfnGetStride = proc (self: ptr IWicBitmapLock; pcbStride: var uint32): WinResult {.w32callback.}
    GetStride*: FnPointer
    # PfnGetDataPointer = proc (self: ptr IWicBitmapLock; pcbBufferSize: var uint32; ppbData: ptr UncheckedArray[ptr uint8]): WinResult {.w32callback.}
    GetDataPointer*: FnPointer
    # PfnGetPixelFormat = proc (self: ptr IWicBitmapLock; pPixelFormat: var WinGuid): WinResult {.w32callback.}
    GetPixelFormat*: FnPointer
  IWicBitmapVtbl* {.pure.} = object
    base*: IWicBitmapSourceVtbl
    # PfnLock = proc (self: ptr IWicBitmap; prcLock: WicRect; flags: WicBitmapLockFlags; ppILock: var ptr IWicBitmapLock): WinResult {.w32callback.}
    Lock*: FnPointer
    # PfnSetPalette = proc (self: ptr IWicBitmap; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
    SetPalette*: FnPointer
    # PfnSetResolution = proc (self: ptr IWicBitmap; dpiX: float64; dpiY: float64): WinResult {.w32callback.}
    SetResolution*: FnPointer
  IWicFastMetadataEncoderVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnCommit = proc (self: ptr IWicFastMetadataEncoder): WinResult {.w32callback.}
    Commit*: FnPointer
    # PfnGetMetadataQueryWriter = proc (self: ptr IWicFastMetadataEncoder; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
    GetMetadataQueryWriter*: FnPointer
  IWicImagingFactoryVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnCreateDecoderFromFilename = proc (self: ptr IWicImagingFactory; wzFilename: WtPWSTR; pguidVendor: ptr WinGuid; dwDesiredAccess: uint32; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
    CreateDecoderFromFilename*: FnPointer
    # PfnCreateDecoderFromStream = proc (self: ptr IWicImagingFactory; pIStream: ptr IStream; pguidVendor: ptr WinGuid; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
    CreateDecoderFromStream*: FnPointer
    # PfnCreateDecoderFromFileHandle = proc (self: ptr IWicImagingFactory; hFile: uint; pguidVendor: ptr WinGuid; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
    CreateDecoderFromFileHandle*: FnPointer
    # PfnCreateComponentInfo = proc (self: ptr IWicImagingFactory; clsidComponent: ptr WinGuid; ppIInfo: var ptr IWicComponentInfo): WinResult {.w32callback.}
    CreateComponentInfo*: FnPointer
    # PfnCreateDecoder = proc (self: ptr IWicImagingFactory; guidContainerFormat: ptr WinGuid; pguidVendor: ptr WinGuid; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
    CreateDecoder*: FnPointer
    # PfnCreateEncoder = proc (self: ptr IWicImagingFactory; guidContainerFormat: ptr WinGuid; pguidVendor: ptr WinGuid; ppIEncoder: var ptr IWicBitmapEncoder): WinResult {.w32callback.}
    CreateEncoder*: FnPointer
    # PfnCreatePalette = proc (self: ptr IWicImagingFactory; ppIPalette: var ptr IWicPalette): WinResult {.w32callback.}
    CreatePalette*: FnPointer
    # PfnCreateFormatConverter = proc (self: ptr IWicImagingFactory; ppIFormatConverter: var ptr IWicFormatConverter): WinResult {.w32callback.}
    CreateFormatConverter*: FnPointer
    # PfnCreateBitmapScaler = proc (self: ptr IWicImagingFactory; ppIBitmapScaler: var ptr IWicBitmapScaler): WinResult {.w32callback.}
    CreateBitmapScaler*: FnPointer
    # PfnCreateBitmapClipper = proc (self: ptr IWicImagingFactory; ppIBitmapClipper: var ptr IWicBitmapClipper): WinResult {.w32callback.}
    CreateBitmapClipper*: FnPointer
    # PfnCreateBitmapFlipRotator = proc (self: ptr IWicImagingFactory; ppIBitmapFlipRotator: var ptr IWicBitmapFlipRotator): WinResult {.w32callback.}
    CreateBitmapFlipRotator*: FnPointer
    # PfnCreateStream = proc (self: ptr IWicImagingFactory; ppIWICStream: var ptr IWicStream): WinResult {.w32callback.}
    CreateStream*: FnPointer
    # PfnCreateColorContext = proc (self: ptr IWicImagingFactory; ppIWICColorContext: var ptr IWicColorContext): WinResult {.w32callback.}
    CreateColorContext*: FnPointer
    # PfnCreateColorTransformer = proc (self: ptr IWicImagingFactory; ppIWICColorTransform: var ptr IWicColorTransform): WinResult {.w32callback.}
    CreateColorTransformer*: FnPointer
    # PfnCreateBitmap = proc (self: ptr IWicImagingFactory; uiWidth: uint32; uiHeight: uint32; pixelFormat: ptr WinGuid; option: WicBitmapCreateCacheOption; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
    CreateBitmap*: FnPointer
    # PfnCreateBitmapFromSource = proc (self: ptr IWicImagingFactory; pIBitmapSource: ptr IWicBitmapSource; option: WicBitmapCreateCacheOption; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
    CreateBitmapFromSource*: FnPointer
    # PfnCreateBitmapFromSourceRect = proc (self: ptr IWicImagingFactory; pIBitmapSource: ptr IWicBitmapSource; x: uint32; y: uint32; width: uint32; height: uint32; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
    CreateBitmapFromSourceRect*: FnPointer
    # PfnCreateBitmapFromMemory = proc (self: ptr IWicImagingFactory; uiWidth: uint32; uiHeight: uint32; pixelFormat: ptr WinGuid; cbStride: uint32; cbBufferSize: uint32; pbBuffer: ptr UncheckedArray[uint8]; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
    CreateBitmapFromMemory*: FnPointer
    # PfnCreateBitmapFromHBITMAP = proc (self: ptr IWicImagingFactory; hBitmap: WtHBITMAP; hPalette: WtHPALETTE; options: WicBitmapAlphaChannelOption; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
    CreateBitmapFromHBITMAP*: FnPointer
    # PfnCreateBitmapFromHICON = proc (self: ptr IWicImagingFactory; hIcon: WtHICON; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
    CreateBitmapFromHICON*: FnPointer
    # PfnCreateComponentEnumerator = proc (self: ptr IWicImagingFactory; componentTypes: uint32; options: uint32; ppIEnumUnknown: var ptr WtIEnumUnknown): WinResult {.w32callback.}
    CreateComponentEnumerator*: FnPointer
    # PfnCreateFastMetadataEncoderFromDecoder = proc (self: ptr IWicImagingFactory; pIDecoder: ptr IWicBitmapDecoder; ppIFastEncoder: var ptr IWicFastMetadataEncoder): WinResult {.w32callback.}
    CreateFastMetadataEncoderFromDecoder*: FnPointer
    # PfnCreateFastMetadataEncoderFromFrameDecode = proc (self: ptr IWicImagingFactory; pIFrameDecoder: ptr IWicBitmapFrameDecode; ppIFastEncoder: var ptr IWicFastMetadataEncoder): WinResult {.w32callback.}
    CreateFastMetadataEncoderFromFrameDecode*: FnPointer
    # PfnCreateQueryWriter = proc (self: ptr IWicImagingFactory; guidMetadataFormat: ptr WinGuid; pguidVendor: ptr WinGuid; ppIQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
    CreateQueryWriter*: FnPointer
    # PfnCreateQueryWriterFromReader = proc (self: ptr IWicImagingFactory; pIQueryReader: ptr IWicMetadataQueryReader; pguidVendor: ptr WinGuid; ppIQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
    CreateQueryWriterFromReader*: FnPointer

proc getComponentType*(self: ptr IWicComponentInfo; pType: var WicComponentType): WinResult {.inline, raises: [].} =
  type PfnGetComponentType = proc (self: pointer; pType: var WicComponentType): WinResult {.w32callback.}
  cast[PfnGetComponentType](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetComponentType)(self, pType)
proc getCLSID*(self: ptr IWicComponentInfo; pclsid: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetCLSID = proc (self: pointer; pclsid: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetCLSID](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetCLSID)(self, pclsid)
proc getSigningStatus*(self: ptr IWicComponentInfo; pStatus: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetSigningStatus = proc (self: pointer; pStatus: var uint32): WinResult {.w32callback.}
  cast[PfnGetSigningStatus](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetSigningStatus)(self, pStatus)
proc getAuthor*(self: ptr IWicComponentInfo; cchAuthor: uint32; wzAuthor: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetAuthor = proc (self: pointer; cchAuthor: uint32; wzAuthor: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetAuthor](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetAuthor)(self, cchAuthor, wzAuthor, pcchActual)
proc getVendorGUID*(self: ptr IWicComponentInfo; pguidVendor: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetVendorGUID = proc (self: pointer; pguidVendor: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetVendorGUID](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetVendorGUID)(self, pguidVendor)
proc getVersion*(self: ptr IWicComponentInfo; cchVersion: uint32; wzVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetVersion = proc (self: pointer; cchVersion: uint32; wzVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetVersion](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetVersion)(self, cchVersion, wzVersion, pcchActual)
proc getSpecVersion*(self: ptr IWicComponentInfo; cchSpecVersion: uint32; wzSpecVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetSpecVersion = proc (self: pointer; cchSpecVersion: uint32; wzSpecVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetSpecVersion](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetSpecVersion)(self, cchSpecVersion, wzSpecVersion, pcchActual)
proc getFriendlyName*(self: ptr IWicComponentInfo; cchFriendlyName: uint32; wzFriendlyName: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetFriendlyName = proc (self: pointer; cchFriendlyName: uint32; wzFriendlyName: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetFriendlyName](cast[ptr IWicComponentInfoVtbl](self.vtbl).GetFriendlyName)(self, cchFriendlyName, wzFriendlyName, pcchActual)
proc getContainerFormat*(self: ptr IWicBitmapCodecInfo; pguidContainerFormat: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetContainerFormat = proc (self: pointer; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetContainerFormat](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).GetContainerFormat)(self, pguidContainerFormat)
proc getPixelFormats*(self: ptr IWicBitmapCodecInfo; cFormats: uint32; pguidPixelFormats: ptr UncheckedArray[WinGuid]; pcActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetPixelFormats = proc (self: pointer; cFormats: uint32; pguidPixelFormats: ptr UncheckedArray[WinGuid]; pcActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetPixelFormats](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).GetPixelFormats)(self, cFormats, pguidPixelFormats, pcActual)
proc getColorManagementVersion*(self: ptr IWicBitmapCodecInfo; cchColorManagementVersion: uint32; wzColorManagementVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetColorManagementVersion = proc (self: pointer; cchColorManagementVersion: uint32; wzColorManagementVersion: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetColorManagementVersion](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).GetColorManagementVersion)(self, cchColorManagementVersion, wzColorManagementVersion, pcchActual)
proc getDeviceManufacturer*(self: ptr IWicBitmapCodecInfo; cchDeviceManufacturer: uint32; wzDeviceManufacturer: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetDeviceManufacturer = proc (self: pointer; cchDeviceManufacturer: uint32; wzDeviceManufacturer: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetDeviceManufacturer](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).GetDeviceManufacturer)(self, cchDeviceManufacturer, wzDeviceManufacturer, pcchActual)
proc getDeviceModels*(self: ptr IWicBitmapCodecInfo; cchDeviceModels: uint32; wzDeviceModels: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetDeviceModels = proc (self: pointer; cchDeviceModels: uint32; wzDeviceModels: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetDeviceModels](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).GetDeviceModels)(self, cchDeviceModels, wzDeviceModels, pcchActual)
proc getMimeTypes*(self: ptr IWicBitmapCodecInfo; cchMimeTypes: uint32; wzMimeTypes: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetMimeTypes = proc (self: pointer; cchMimeTypes: uint32; wzMimeTypes: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetMimeTypes](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).GetMimeTypes)(self, cchMimeTypes, wzMimeTypes, pcchActual)
proc getFileExtensions*(self: ptr IWicBitmapCodecInfo; cchFileExtensions: uint32; wzFileExtensions: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetFileExtensions = proc (self: pointer; cchFileExtensions: uint32; wzFileExtensions: ptr UncheckedArray[uint16]; pcchActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetFileExtensions](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).GetFileExtensions)(self, cchFileExtensions, wzFileExtensions, pcchActual)
proc doesSupportAnimation*(self: ptr IWicBitmapCodecInfo; pfSupportAnimation: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnDoesSupportAnimation = proc (self: pointer; pfSupportAnimation: var WtBOOL): WinResult {.w32callback.}
  cast[PfnDoesSupportAnimation](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).DoesSupportAnimation)(self, pfSupportAnimation)
proc doesSupportChromakey*(self: ptr IWicBitmapCodecInfo; pfSupportChromakey: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnDoesSupportChromakey = proc (self: pointer; pfSupportChromakey: var WtBOOL): WinResult {.w32callback.}
  cast[PfnDoesSupportChromakey](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).DoesSupportChromakey)(self, pfSupportChromakey)
proc doesSupportLossless*(self: ptr IWicBitmapCodecInfo; pfSupportLossless: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnDoesSupportLossless = proc (self: pointer; pfSupportLossless: var WtBOOL): WinResult {.w32callback.}
  cast[PfnDoesSupportLossless](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).DoesSupportLossless)(self, pfSupportLossless)
proc doesSupportMultiframe*(self: ptr IWicBitmapCodecInfo; pfSupportMultiframe: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnDoesSupportMultiframe = proc (self: pointer; pfSupportMultiframe: var WtBOOL): WinResult {.w32callback.}
  cast[PfnDoesSupportMultiframe](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).DoesSupportMultiframe)(self, pfSupportMultiframe)
proc matchesMimeType*(self: ptr IWicBitmapCodecInfo; wzMimeType: WtPWSTR; pfMatches: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnMatchesMimeType = proc (self: pointer; wzMimeType: WtPWSTR; pfMatches: var WtBOOL): WinResult {.w32callback.}
  cast[PfnMatchesMimeType](cast[ptr IWicBitmapCodecInfoVtbl](self.vtbl).MatchesMimeType)(self, wzMimeType, pfMatches)
proc getPatterns*(self: ptr IWicBitmapDecoderInfo; cbSizePatterns: uint32; pPatterns: ptr WicBitmapPattern; pcPatterns: ptr uint32; pcbPatternsActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetPatterns = proc (self: pointer; cbSizePatterns: uint32; pPatterns: ptr WicBitmapPattern; pcPatterns: ptr uint32; pcbPatternsActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetPatterns](cast[ptr IWicBitmapDecoderInfoVtbl](self.vtbl).GetPatterns)(self, cbSizePatterns, pPatterns, pcPatterns, pcbPatternsActual)
proc matchesPattern*(self: ptr IWicBitmapDecoderInfo; pIStream: ptr IStream; pfMatches: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnMatchesPattern = proc (self: pointer; pIStream: ptr IStream; pfMatches: var WtBOOL): WinResult {.w32callback.}
  cast[PfnMatchesPattern](cast[ptr IWicBitmapDecoderInfoVtbl](self.vtbl).MatchesPattern)(self, pIStream, pfMatches)
proc createInstance*(self: ptr IWicBitmapDecoderInfo; ppIBitmapDecoder: var ptr IWicBitmapDecoder): WinResult {.inline, raises: [].} =
  type PfnCreateInstance = proc (self: pointer; ppIBitmapDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
  cast[PfnCreateInstance](cast[ptr IWicBitmapDecoderInfoVtbl](self.vtbl).CreateInstance)(self, ppIBitmapDecoder)
proc getSize*(self: ptr IWicBitmapSource; puiWidth: var uint32; puiHeight: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetSize = proc (self: pointer; puiWidth: var uint32; puiHeight: var uint32): WinResult {.w32callback.}
  cast[PfnGetSize](cast[ptr IWicBitmapSourceVtbl](self.vtbl).GetSize)(self, puiWidth, puiHeight)
proc getPixelFormat*(self: ptr IWicBitmapSource; pPixelFormat: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetPixelFormat = proc (self: pointer; pPixelFormat: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetPixelFormat](cast[ptr IWicBitmapSourceVtbl](self.vtbl).GetPixelFormat)(self, pPixelFormat)
proc getResolution*(self: ptr IWicBitmapSource; pDpiX: var float64; pDpiY: var float64): WinResult {.inline, raises: [].} =
  type PfnGetResolution = proc (self: pointer; pDpiX: var float64; pDpiY: var float64): WinResult {.w32callback.}
  cast[PfnGetResolution](cast[ptr IWicBitmapSourceVtbl](self.vtbl).GetResolution)(self, pDpiX, pDpiY)
proc copyPalette*(self: ptr IWicBitmapSource; pIPalette: ptr IWicPalette): WinResult {.inline, raises: [].} =
  type PfnCopyPalette = proc (self: pointer; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
  cast[PfnCopyPalette](cast[ptr IWicBitmapSourceVtbl](self.vtbl).CopyPalette)(self, pIPalette)
proc copyPixels*(self: ptr IWicBitmapSource; prc: ptr WicRect; cbStride: uint32; cbBufferSize: uint32; pbBuffer: ptr UncheckedArray[uint8]): WinResult {.inline, raises: [].} =
  type PfnCopyPixels = proc (self: pointer; prc: ptr WicRect; cbStride: uint32; cbBufferSize: uint32; pbBuffer: ptr UncheckedArray[uint8]): WinResult {.w32callback.}
  cast[PfnCopyPixels](cast[ptr IWicBitmapSourceVtbl](self.vtbl).CopyPixels)(self, prc, cbStride, cbBufferSize, pbBuffer)
proc initializePredefined*(self: ptr IWicPalette; ePaletteType: WicBitmapPaletteType; fAddTransparentColor: WtBOOL): WinResult {.inline, raises: [].} =
  type PfnInitializePredefined = proc (self: pointer; ePaletteType: WicBitmapPaletteType; fAddTransparentColor: WtBOOL): WinResult {.w32callback.}
  cast[PfnInitializePredefined](cast[ptr IWicPaletteVtbl](self.vtbl).InitializePredefined)(self, ePaletteType, fAddTransparentColor)
proc initializeCustom*(self: ptr IWicPalette; pColors: ptr UncheckedArray[uint32]; cCount: uint32): WinResult {.inline, raises: [].} =
  type PfnInitializeCustom = proc (self: pointer; pColors: ptr UncheckedArray[uint32]; cCount: uint32): WinResult {.w32callback.}
  cast[PfnInitializeCustom](cast[ptr IWicPaletteVtbl](self.vtbl).InitializeCustom)(self, pColors, cCount)
proc initializeFromBitmap*(self: ptr IWicPalette; pISurface: ptr IWicBitmapSource; cCount: uint32; fAddTransparentColor: WtBOOL): WinResult {.inline, raises: [].} =
  type PfnInitializeFromBitmap = proc (self: pointer; pISurface: ptr IWicBitmapSource; cCount: uint32; fAddTransparentColor: WtBOOL): WinResult {.w32callback.}
  cast[PfnInitializeFromBitmap](cast[ptr IWicPaletteVtbl](self.vtbl).InitializeFromBitmap)(self, pISurface, cCount, fAddTransparentColor)
proc initializeFromPalette*(self: ptr IWicPalette; pIPalette: ptr IWicPalette): WinResult {.inline, raises: [].} =
  type PfnInitializeFromPalette = proc (self: pointer; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
  cast[PfnInitializeFromPalette](cast[ptr IWicPaletteVtbl](self.vtbl).InitializeFromPalette)(self, pIPalette)
proc getType*(self: ptr IWicPalette; pePaletteType: var WicBitmapPaletteType): WinResult {.inline, raises: [].} =
  type PfnGetType = proc (self: pointer; pePaletteType: var WicBitmapPaletteType): WinResult {.w32callback.}
  cast[PfnGetType](cast[ptr IWicPaletteVtbl](self.vtbl).GetType)(self, pePaletteType)
proc getColorCount*(self: ptr IWicPalette; pcCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetColorCount = proc (self: pointer; pcCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetColorCount](cast[ptr IWicPaletteVtbl](self.vtbl).GetColorCount)(self, pcCount)
proc getColors*(self: ptr IWicPalette; cCount: uint32; pColors: ptr UncheckedArray[uint32]; pcActualColors: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetColors = proc (self: pointer; cCount: uint32; pColors: ptr UncheckedArray[uint32]; pcActualColors: var uint32): WinResult {.w32callback.}
  cast[PfnGetColors](cast[ptr IWicPaletteVtbl](self.vtbl).GetColors)(self, cCount, pColors, pcActualColors)
proc isBlackWhite*(self: ptr IWicPalette; pfIsBlackWhite: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnIsBlackWhite = proc (self: pointer; pfIsBlackWhite: var WtBOOL): WinResult {.w32callback.}
  cast[PfnIsBlackWhite](cast[ptr IWicPaletteVtbl](self.vtbl).IsBlackWhite)(self, pfIsBlackWhite)
proc isGrayscale*(self: ptr IWicPalette; pfIsGrayscale: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnIsGrayscale = proc (self: pointer; pfIsGrayscale: var WtBOOL): WinResult {.w32callback.}
  cast[PfnIsGrayscale](cast[ptr IWicPaletteVtbl](self.vtbl).IsGrayscale)(self, pfIsGrayscale)
proc hasAlpha*(self: ptr IWicPalette; pfHasAlpha: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnHasAlpha = proc (self: pointer; pfHasAlpha: var WtBOOL): WinResult {.w32callback.}
  cast[PfnHasAlpha](cast[ptr IWicPaletteVtbl](self.vtbl).HasAlpha)(self, pfHasAlpha)
proc getContainerFormat*(self: ptr IWicMetadataQueryReader; pguidContainerFormat: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetContainerFormat = proc (self: pointer; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetContainerFormat](cast[ptr IWicMetadataQueryReaderVtbl](self.vtbl).GetContainerFormat)(self, pguidContainerFormat)
proc getLocation*(self: ptr IWicMetadataQueryReader; cchMaxLength: uint32; wzNamespace: ptr UncheckedArray[uint16]; pcchActualLength: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetLocation = proc (self: pointer; cchMaxLength: uint32; wzNamespace: ptr UncheckedArray[uint16]; pcchActualLength: var uint32): WinResult {.w32callback.}
  cast[PfnGetLocation](cast[ptr IWicMetadataQueryReaderVtbl](self.vtbl).GetLocation)(self, cchMaxLength, wzNamespace, pcchActualLength)
# skipped: IWicMetadataQueryReader GetMetadataByName
# skipped: IWicMetadataQueryReader GetEnumerator
proc initializeFromFilename*(self: ptr IWicColorContext; wzFilename: WtPWSTR): WinResult {.inline, raises: [].} =
  type PfnInitializeFromFilename = proc (self: pointer; wzFilename: WtPWSTR): WinResult {.w32callback.}
  cast[PfnInitializeFromFilename](cast[ptr IWicColorContextVtbl](self.vtbl).InitializeFromFilename)(self, wzFilename)
proc initializeFromMemory*(self: ptr IWicColorContext; pbBuffer: ptr UncheckedArray[uint8]; cbBufferSize: uint32): WinResult {.inline, raises: [].} =
  type PfnInitializeFromMemory = proc (self: pointer; pbBuffer: ptr UncheckedArray[uint8]; cbBufferSize: uint32): WinResult {.w32callback.}
  cast[PfnInitializeFromMemory](cast[ptr IWicColorContextVtbl](self.vtbl).InitializeFromMemory)(self, pbBuffer, cbBufferSize)
proc initializeFromExifColorSpace*(self: ptr IWicColorContext; value: uint32): WinResult {.inline, raises: [].} =
  type PfnInitializeFromExifColorSpace = proc (self: pointer; value: uint32): WinResult {.w32callback.}
  cast[PfnInitializeFromExifColorSpace](cast[ptr IWicColorContextVtbl](self.vtbl).InitializeFromExifColorSpace)(self, value)
proc getType*(self: ptr IWicColorContext; pType: var WicColorContextType): WinResult {.inline, raises: [].} =
  type PfnGetType = proc (self: pointer; pType: var WicColorContextType): WinResult {.w32callback.}
  cast[PfnGetType](cast[ptr IWicColorContextVtbl](self.vtbl).GetType)(self, pType)
proc getProfileBytes*(self: ptr IWicColorContext; cbBuffer: uint32; pbBuffer: ptr UncheckedArray[uint8]; pcbActual: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetProfileBytes = proc (self: pointer; cbBuffer: uint32; pbBuffer: ptr UncheckedArray[uint8]; pcbActual: var uint32): WinResult {.w32callback.}
  cast[PfnGetProfileBytes](cast[ptr IWicColorContextVtbl](self.vtbl).GetProfileBytes)(self, cbBuffer, pbBuffer, pcbActual)
proc getExifColorSpace*(self: ptr IWicColorContext; pValue: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetExifColorSpace = proc (self: pointer; pValue: var uint32): WinResult {.w32callback.}
  cast[PfnGetExifColorSpace](cast[ptr IWicColorContextVtbl](self.vtbl).GetExifColorSpace)(self, pValue)
proc getMetadataQueryReader*(self: ptr IWicBitmapFrameDecode; ppIMetadataQueryReader: var ptr IWicMetadataQueryReader): WinResult {.inline, raises: [].} =
  type PfnGetMetadataQueryReader = proc (self: pointer; ppIMetadataQueryReader: var ptr IWicMetadataQueryReader): WinResult {.w32callback.}
  cast[PfnGetMetadataQueryReader](cast[ptr IWicBitmapFrameDecodeVtbl](self.vtbl).GetMetadataQueryReader)(self, ppIMetadataQueryReader)
proc getColorContexts*(self: ptr IWicBitmapFrameDecode; cCount: uint32; ppIColorContexts: ptr UncheckedArray[ptr IWicColorContext]; pcActualCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetColorContexts = proc (self: pointer; cCount: uint32; ppIColorContexts: ptr UncheckedArray[ptr IWicColorContext]; pcActualCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetColorContexts](cast[ptr IWicBitmapFrameDecodeVtbl](self.vtbl).GetColorContexts)(self, cCount, ppIColorContexts, pcActualCount)
proc getThumbnail*(self: ptr IWicBitmapFrameDecode; ppIThumbnail: var ptr IWicBitmapSource): WinResult {.inline, raises: [].} =
  type PfnGetThumbnail = proc (self: pointer; ppIThumbnail: var ptr IWicBitmapSource): WinResult {.w32callback.}
  cast[PfnGetThumbnail](cast[ptr IWicBitmapFrameDecodeVtbl](self.vtbl).GetThumbnail)(self, ppIThumbnail)
proc queryCapability*(self: ptr IWicBitmapDecoder; pIStream: ptr IStream; pdwCapability: var uint32): WinResult {.inline, raises: [].} =
  type PfnQueryCapability = proc (self: pointer; pIStream: ptr IStream; pdwCapability: var uint32): WinResult {.w32callback.}
  cast[PfnQueryCapability](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).QueryCapability)(self, pIStream, pdwCapability)
proc initialize*(self: ptr IWicBitmapDecoder; pIStream: ptr IStream; cacheOptions: WicDecodeOptions): WinResult {.inline, raises: [].} =
  type PfnInitialize = proc (self: pointer; pIStream: ptr IStream; cacheOptions: WicDecodeOptions): WinResult {.w32callback.}
  cast[PfnInitialize](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).Initialize)(self, pIStream, cacheOptions)
proc getContainerFormat*(self: ptr IWicBitmapDecoder; pguidContainerFormat: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetContainerFormat = proc (self: pointer; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetContainerFormat](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetContainerFormat)(self, pguidContainerFormat)
proc getDecoderInfo*(self: ptr IWicBitmapDecoder; ppIDecoderInfo: var ptr IWicBitmapDecoderInfo): WinResult {.inline, raises: [].} =
  type PfnGetDecoderInfo = proc (self: pointer; ppIDecoderInfo: var ptr IWicBitmapDecoderInfo): WinResult {.w32callback.}
  cast[PfnGetDecoderInfo](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetDecoderInfo)(self, ppIDecoderInfo)
proc copyPalette*(self: ptr IWicBitmapDecoder; pIPalette: ptr IWicPalette): WinResult {.inline, raises: [].} =
  type PfnCopyPalette = proc (self: pointer; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
  cast[PfnCopyPalette](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).CopyPalette)(self, pIPalette)
proc getMetadataQueryReader*(self: ptr IWicBitmapDecoder; ppIMetadataQueryReader: var ptr IWicMetadataQueryReader): WinResult {.inline, raises: [].} =
  type PfnGetMetadataQueryReader = proc (self: pointer; ppIMetadataQueryReader: var ptr IWicMetadataQueryReader): WinResult {.w32callback.}
  cast[PfnGetMetadataQueryReader](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetMetadataQueryReader)(self, ppIMetadataQueryReader)
proc getPreview*(self: ptr IWicBitmapDecoder; ppIBitmapSource: var ptr IWicBitmapSource): WinResult {.inline, raises: [].} =
  type PfnGetPreview = proc (self: pointer; ppIBitmapSource: var ptr IWicBitmapSource): WinResult {.w32callback.}
  cast[PfnGetPreview](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetPreview)(self, ppIBitmapSource)
proc getColorContexts*(self: ptr IWicBitmapDecoder; cCount: uint32; ppIColorContexts: ptr UncheckedArray[ptr IWicColorContext]; pcActualCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetColorContexts = proc (self: pointer; cCount: uint32; ppIColorContexts: ptr UncheckedArray[ptr IWicColorContext]; pcActualCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetColorContexts](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetColorContexts)(self, cCount, ppIColorContexts, pcActualCount)
proc getThumbnail*(self: ptr IWicBitmapDecoder; ppIThumbnail: var ptr IWicBitmapSource): WinResult {.inline, raises: [].} =
  type PfnGetThumbnail = proc (self: pointer; ppIThumbnail: var ptr IWicBitmapSource): WinResult {.w32callback.}
  cast[PfnGetThumbnail](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetThumbnail)(self, ppIThumbnail)
proc getFrameCount*(self: ptr IWicBitmapDecoder; pCount: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetFrameCount = proc (self: pointer; pCount: var uint32): WinResult {.w32callback.}
  cast[PfnGetFrameCount](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetFrameCount)(self, pCount)
proc getFrame*(self: ptr IWicBitmapDecoder; index: uint32; ppIBitmapFrame: var ptr IWicBitmapFrameDecode): WinResult {.inline, raises: [].} =
  type PfnGetFrame = proc (self: pointer; index: uint32; ppIBitmapFrame: var ptr IWicBitmapFrameDecode): WinResult {.w32callback.}
  cast[PfnGetFrame](cast[ptr IWicBitmapDecoderVtbl](self.vtbl).GetFrame)(self, index, ppIBitmapFrame)
proc createInstance*(self: ptr IWicBitmapEncoderInfo; ppIBitmapEncoder: var ptr IWicBitmapEncoder): WinResult {.inline, raises: [].} =
  type PfnCreateInstance = proc (self: pointer; ppIBitmapEncoder: var ptr IWicBitmapEncoder): WinResult {.w32callback.}
  cast[PfnCreateInstance](cast[ptr IWicBitmapEncoderInfoVtbl](self.vtbl).CreateInstance)(self, ppIBitmapEncoder)
# skipped: IWicMetadataQueryWriter SetMetadataByName
proc removeMetadataByName*(self: ptr IWicMetadataQueryWriter; wzName: WtPWSTR): WinResult {.inline, raises: [].} =
  type PfnRemoveMetadataByName = proc (self: pointer; wzName: WtPWSTR): WinResult {.w32callback.}
  cast[PfnRemoveMetadataByName](cast[ptr IWicMetadataQueryWriterVtbl](self.vtbl).RemoveMetadataByName)(self, wzName)
# skipped: IWicBitmapFrameEncode Initialize
proc setSize*(self: ptr IWicBitmapFrameEncode; uiWidth: uint32; uiHeight: uint32): WinResult {.inline, raises: [].} =
  type PfnSetSize = proc (self: pointer; uiWidth: uint32; uiHeight: uint32): WinResult {.w32callback.}
  cast[PfnSetSize](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).SetSize)(self, uiWidth, uiHeight)
proc setResolution*(self: ptr IWicBitmapFrameEncode; dpiX: float64; dpiY: float64): WinResult {.inline, raises: [].} =
  type PfnSetResolution = proc (self: pointer; dpiX: float64; dpiY: float64): WinResult {.w32callback.}
  cast[PfnSetResolution](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).SetResolution)(self, dpiX, dpiY)
proc setPixelFormat*(self: ptr IWicBitmapFrameEncode; pPixelFormat: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnSetPixelFormat = proc (self: pointer; pPixelFormat: var WinGuid): WinResult {.w32callback.}
  cast[PfnSetPixelFormat](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).SetPixelFormat)(self, pPixelFormat)
proc setColorContexts*(self: ptr IWicBitmapFrameEncode; cCount: uint32; ppIColorContext: ptr UncheckedArray[ptr IWicColorContext]): WinResult {.inline, raises: [].} =
  type PfnSetColorContexts = proc (self: pointer; cCount: uint32; ppIColorContext: ptr UncheckedArray[ptr IWicColorContext]): WinResult {.w32callback.}
  cast[PfnSetColorContexts](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).SetColorContexts)(self, cCount, ppIColorContext)
proc setPalette*(self: ptr IWicBitmapFrameEncode; pIPalette: ptr IWicPalette): WinResult {.inline, raises: [].} =
  type PfnSetPalette = proc (self: pointer; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
  cast[PfnSetPalette](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).SetPalette)(self, pIPalette)
proc setThumbnail*(self: ptr IWicBitmapFrameEncode; pIThumbnail: ptr IWicBitmapSource): WinResult {.inline, raises: [].} =
  type PfnSetThumbnail = proc (self: pointer; pIThumbnail: ptr IWicBitmapSource): WinResult {.w32callback.}
  cast[PfnSetThumbnail](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).SetThumbnail)(self, pIThumbnail)
proc writePixels*(self: ptr IWicBitmapFrameEncode; lineCount: uint32; cbStride: uint32; cbBufferSize: uint32; pbPixels: ptr UncheckedArray[uint8]): WinResult {.inline, raises: [].} =
  type PfnWritePixels = proc (self: pointer; lineCount: uint32; cbStride: uint32; cbBufferSize: uint32; pbPixels: ptr UncheckedArray[uint8]): WinResult {.w32callback.}
  cast[PfnWritePixels](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).WritePixels)(self, lineCount, cbStride, cbBufferSize, pbPixels)
proc writeSource*(self: ptr IWicBitmapFrameEncode; pIBitmapSource: ptr IWicBitmapSource; prc: WicRect): WinResult {.inline, raises: [].} =
  type PfnWriteSource = proc (self: pointer; pIBitmapSource: ptr IWicBitmapSource; prc: WicRect): WinResult {.w32callback.}
  cast[PfnWriteSource](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).WriteSource)(self, pIBitmapSource, prc)
proc commit*(self: ptr IWicBitmapFrameEncode): WinResult {.inline, raises: [].} =
  type PfnCommit = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnCommit](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).Commit)(self)
proc getMetadataQueryWriter*(self: ptr IWicBitmapFrameEncode; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.inline, raises: [].} =
  type PfnGetMetadataQueryWriter = proc (self: pointer; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
  cast[PfnGetMetadataQueryWriter](cast[ptr IWicBitmapFrameEncodeVtbl](self.vtbl).GetMetadataQueryWriter)(self, ppIMetadataQueryWriter)
proc initialize*(self: ptr IWicBitmapEncoder; pIStream: ptr IStream; cacheOption: WicBitmapEncoderCacheOption): WinResult {.inline, raises: [].} =
  type PfnInitialize = proc (self: pointer; pIStream: ptr IStream; cacheOption: WicBitmapEncoderCacheOption): WinResult {.w32callback.}
  cast[PfnInitialize](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).Initialize)(self, pIStream, cacheOption)
proc getContainerFormat*(self: ptr IWicBitmapEncoder; pguidContainerFormat: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetContainerFormat = proc (self: pointer; pguidContainerFormat: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetContainerFormat](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).GetContainerFormat)(self, pguidContainerFormat)
proc getEncoderInfo*(self: ptr IWicBitmapEncoder; ppIEncoderInfo: var ptr IWicBitmapEncoderInfo): WinResult {.inline, raises: [].} =
  type PfnGetEncoderInfo = proc (self: pointer; ppIEncoderInfo: var ptr IWicBitmapEncoderInfo): WinResult {.w32callback.}
  cast[PfnGetEncoderInfo](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).GetEncoderInfo)(self, ppIEncoderInfo)
proc setColorContexts*(self: ptr IWicBitmapEncoder; cCount: uint32; ppIColorContext: ptr UncheckedArray[ptr IWicColorContext]): WinResult {.inline, raises: [].} =
  type PfnSetColorContexts = proc (self: pointer; cCount: uint32; ppIColorContext: ptr UncheckedArray[ptr IWicColorContext]): WinResult {.w32callback.}
  cast[PfnSetColorContexts](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).SetColorContexts)(self, cCount, ppIColorContext)
proc setPalette*(self: ptr IWicBitmapEncoder; pIPalette: ptr IWicPalette): WinResult {.inline, raises: [].} =
  type PfnSetPalette = proc (self: pointer; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
  cast[PfnSetPalette](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).SetPalette)(self, pIPalette)
proc setThumbnail*(self: ptr IWicBitmapEncoder; pIThumbnail: ptr IWicBitmapSource): WinResult {.inline, raises: [].} =
  type PfnSetThumbnail = proc (self: pointer; pIThumbnail: ptr IWicBitmapSource): WinResult {.w32callback.}
  cast[PfnSetThumbnail](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).SetThumbnail)(self, pIThumbnail)
proc setPreview*(self: ptr IWicBitmapEncoder; pIPreview: ptr IWicBitmapSource): WinResult {.inline, raises: [].} =
  type PfnSetPreview = proc (self: pointer; pIPreview: ptr IWicBitmapSource): WinResult {.w32callback.}
  cast[PfnSetPreview](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).SetPreview)(self, pIPreview)
# skipped: IWicBitmapEncoder CreateNewFrame
proc commit*(self: ptr IWicBitmapEncoder): WinResult {.inline, raises: [].} =
  type PfnCommit = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnCommit](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).Commit)(self)
proc getMetadataQueryWriter*(self: ptr IWicBitmapEncoder; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.inline, raises: [].} =
  type PfnGetMetadataQueryWriter = proc (self: pointer; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
  cast[PfnGetMetadataQueryWriter](cast[ptr IWicBitmapEncoderVtbl](self.vtbl).GetMetadataQueryWriter)(self, ppIMetadataQueryWriter)
proc initialize*(self: ptr IWicFormatConverter; pISource: ptr IWicBitmapSource; dstFormat: WinGuid; dither: WicBitmapDitherType; pIPalette: ptr IWicPalette; alphaThresholdPercent: float64; paletteTranslate: WicBitmapPaletteType): WinResult {.inline, raises: [].} =
  type PfnInitialize = proc (self: pointer; pISource: ptr IWicBitmapSource; dstFormat: ptr WinGuid; dither: WicBitmapDitherType; pIPalette: ptr IWicPalette; alphaThresholdPercent: float64; paletteTranslate: WicBitmapPaletteType): WinResult {.w32callback.}
  cast[PfnInitialize](cast[ptr IWicFormatConverterVtbl](self.vtbl).Initialize)(self, pISource, dstFormat.unsafeAddr, dither, pIPalette, alphaThresholdPercent, paletteTranslate)
proc canConvert*(self: ptr IWicFormatConverter; srcPixelFormat: WinGuid; dstPixelFormat: WinGuid; pfCanConvert: var WtBOOL): WinResult {.inline, raises: [].} =
  type PfnCanConvert = proc (self: pointer; srcPixelFormat: ptr WinGuid; dstPixelFormat: ptr WinGuid; pfCanConvert: var WtBOOL): WinResult {.w32callback.}
  cast[PfnCanConvert](cast[ptr IWicFormatConverterVtbl](self.vtbl).CanConvert)(self, srcPixelFormat.unsafeAddr, dstPixelFormat.unsafeAddr, pfCanConvert)
proc initialize*(self: ptr IWicBitmapScaler; pISource: ptr IWicBitmapSource; uiWidth: uint32; uiHeight: uint32; mode: WicBitmapInterpolationMode): WinResult {.inline, raises: [].} =
  type PfnInitialize = proc (self: pointer; pISource: ptr IWicBitmapSource; uiWidth: uint32; uiHeight: uint32; mode: WicBitmapInterpolationMode): WinResult {.w32callback.}
  cast[PfnInitialize](cast[ptr IWicBitmapScalerVtbl](self.vtbl).Initialize)(self, pISource, uiWidth, uiHeight, mode)
proc initialize*(self: ptr IWicBitmapClipper; pISource: ptr IWicBitmapSource; prc: WicRect): WinResult {.inline, raises: [].} =
  type PfnInitialize = proc (self: pointer; pISource: ptr IWicBitmapSource; prc: WicRect): WinResult {.w32callback.}
  cast[PfnInitialize](cast[ptr IWicBitmapClipperVtbl](self.vtbl).Initialize)(self, pISource, prc)
proc initialize*(self: ptr IWicBitmapFlipRotator; pISource: ptr IWicBitmapSource; options: WicBitmapTransformOptions): WinResult {.inline, raises: [].} =
  type PfnInitialize = proc (self: pointer; pISource: ptr IWicBitmapSource; options: WicBitmapTransformOptions): WinResult {.w32callback.}
  cast[PfnInitialize](cast[ptr IWicBitmapFlipRotatorVtbl](self.vtbl).Initialize)(self, pISource, options)
proc initializeFromIStream*(self: ptr IWicStream; pIStream: ptr IStream): WinResult {.inline, raises: [].} =
  type PfnInitializeFromIStream = proc (self: pointer; pIStream: ptr IStream): WinResult {.w32callback.}
  cast[PfnInitializeFromIStream](cast[ptr IWicStreamVtbl](self.vtbl).InitializeFromIStream)(self, pIStream)
proc initializeFromFilename*(self: ptr IWicStream; wzFileName: WtPWSTR; dwDesiredAccess: uint32): WinResult {.inline, raises: [].} =
  type PfnInitializeFromFilename = proc (self: pointer; wzFileName: WtPWSTR; dwDesiredAccess: uint32): WinResult {.w32callback.}
  cast[PfnInitializeFromFilename](cast[ptr IWicStreamVtbl](self.vtbl).InitializeFromFilename)(self, wzFileName, dwDesiredAccess)
proc initializeFromMemory*(self: ptr IWicStream; pbBuffer: ptr UncheckedArray[uint8]; cbBufferSize: uint32): WinResult {.inline, raises: [].} =
  type PfnInitializeFromMemory = proc (self: pointer; pbBuffer: ptr UncheckedArray[uint8]; cbBufferSize: uint32): WinResult {.w32callback.}
  cast[PfnInitializeFromMemory](cast[ptr IWicStreamVtbl](self.vtbl).InitializeFromMemory)(self, pbBuffer, cbBufferSize)
# skipped: IWicStream InitializeFromIStreamRegion
proc initialize*(self: ptr IWicColorTransform; pIBitmapSource: ptr IWicBitmapSource; pIContextSource: ptr IWicColorContext; pIContextDest: ptr IWicColorContext; pixelFmtDest: WinGuid): WinResult {.inline, raises: [].} =
  type PfnInitialize = proc (self: pointer; pIBitmapSource: ptr IWicBitmapSource; pIContextSource: ptr IWicColorContext; pIContextDest: ptr IWicColorContext; pixelFmtDest: ptr WinGuid): WinResult {.w32callback.}
  cast[PfnInitialize](cast[ptr IWicColorTransformVtbl](self.vtbl).Initialize)(self, pIBitmapSource, pIContextSource, pIContextDest, pixelFmtDest.unsafeAddr)
proc getSize*(self: ptr IWicBitmapLock; puiWidth: var uint32; puiHeight: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetSize = proc (self: pointer; puiWidth: var uint32; puiHeight: var uint32): WinResult {.w32callback.}
  cast[PfnGetSize](cast[ptr IWicBitmapLockVtbl](self.vtbl).GetSize)(self, puiWidth, puiHeight)
proc getStride*(self: ptr IWicBitmapLock; pcbStride: var uint32): WinResult {.inline, raises: [].} =
  type PfnGetStride = proc (self: pointer; pcbStride: var uint32): WinResult {.w32callback.}
  cast[PfnGetStride](cast[ptr IWicBitmapLockVtbl](self.vtbl).GetStride)(self, pcbStride)
proc getDataPointer*(self: ptr IWicBitmapLock; pcbBufferSize: var uint32; ppbData: ptr UncheckedArray[ptr uint8]): WinResult {.inline, raises: [].} =
  type PfnGetDataPointer = proc (self: pointer; pcbBufferSize: var uint32; ppbData: ptr UncheckedArray[ptr uint8]): WinResult {.w32callback.}
  cast[PfnGetDataPointer](cast[ptr IWicBitmapLockVtbl](self.vtbl).GetDataPointer)(self, pcbBufferSize, ppbData)
proc getPixelFormat*(self: ptr IWicBitmapLock; pPixelFormat: var WinGuid): WinResult {.inline, raises: [].} =
  type PfnGetPixelFormat = proc (self: pointer; pPixelFormat: var WinGuid): WinResult {.w32callback.}
  cast[PfnGetPixelFormat](cast[ptr IWicBitmapLockVtbl](self.vtbl).GetPixelFormat)(self, pPixelFormat)
proc lock*(self: ptr IWicBitmap; prcLock: WicRect; flags: WicBitmapLockFlags; ppILock: var ptr IWicBitmapLock): WinResult {.inline, raises: [].} =
  type PfnLock = proc (self: pointer; prcLock: WicRect; flags: WicBitmapLockFlags; ppILock: var ptr IWicBitmapLock): WinResult {.w32callback.}
  cast[PfnLock](cast[ptr IWicBitmapVtbl](self.vtbl).Lock)(self, prcLock, flags, ppILock)
proc setPalette*(self: ptr IWicBitmap; pIPalette: ptr IWicPalette): WinResult {.inline, raises: [].} =
  type PfnSetPalette = proc (self: pointer; pIPalette: ptr IWicPalette): WinResult {.w32callback.}
  cast[PfnSetPalette](cast[ptr IWicBitmapVtbl](self.vtbl).SetPalette)(self, pIPalette)
proc setResolution*(self: ptr IWicBitmap; dpiX: float64; dpiY: float64): WinResult {.inline, raises: [].} =
  type PfnSetResolution = proc (self: pointer; dpiX: float64; dpiY: float64): WinResult {.w32callback.}
  cast[PfnSetResolution](cast[ptr IWicBitmapVtbl](self.vtbl).SetResolution)(self, dpiX, dpiY)
proc commit*(self: ptr IWicFastMetadataEncoder): WinResult {.inline, raises: [].} =
  type PfnCommit = proc (self: pointer): WinResult {.w32callback.}
  cast[PfnCommit](cast[ptr IWicFastMetadataEncoderVtbl](self.vtbl).Commit)(self)
proc getMetadataQueryWriter*(self: ptr IWicFastMetadataEncoder; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.inline, raises: [].} =
  type PfnGetMetadataQueryWriter = proc (self: pointer; ppIMetadataQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
  cast[PfnGetMetadataQueryWriter](cast[ptr IWicFastMetadataEncoderVtbl](self.vtbl).GetMetadataQueryWriter)(self, ppIMetadataQueryWriter)
proc createDecoderFromFilename*(self: ptr IWicImagingFactory; wzFilename: WtPWSTR; pguidVendor: ptr WinGuid; dwDesiredAccess: uint32; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.inline, raises: [].} =
  type PfnCreateDecoderFromFilename = proc (self: pointer; wzFilename: WtPWSTR; pguidVendor: ptr WinGuid; dwDesiredAccess: uint32; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
  cast[PfnCreateDecoderFromFilename](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateDecoderFromFilename)(self, wzFilename, pguidVendor, dwDesiredAccess, metadataOptions, ppIDecoder)
proc createDecoderFromStream*(self: ptr IWicImagingFactory; pIStream: ptr IStream; pguidVendor: ptr WinGuid; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.inline, raises: [].} =
  type PfnCreateDecoderFromStream = proc (self: pointer; pIStream: ptr IStream; pguidVendor: ptr WinGuid; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
  cast[PfnCreateDecoderFromStream](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateDecoderFromStream)(self, pIStream, pguidVendor, metadataOptions, ppIDecoder)
proc createDecoderFromFileHandle*(self: ptr IWicImagingFactory; hFile: uint; pguidVendor: WinGuid; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.inline, raises: [].} =
  type PfnCreateDecoderFromFileHandle = proc (self: pointer; hFile: uint; pguidVendor: ptr WinGuid; metadataOptions: WicDecodeOptions; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
  cast[PfnCreateDecoderFromFileHandle](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateDecoderFromFileHandle)(self, hFile, pguidVendor.unsafeAddr, metadataOptions, ppIDecoder)
proc createComponentInfo*(self: ptr IWicImagingFactory; clsidComponent: WinGuid; ppIInfo: var ptr IWicComponentInfo): WinResult {.inline, raises: [].} =
  type PfnCreateComponentInfo = proc (self: pointer; clsidComponent: ptr WinGuid; ppIInfo: var ptr IWicComponentInfo): WinResult {.w32callback.}
  cast[PfnCreateComponentInfo](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateComponentInfo)(self, clsidComponent.unsafeAddr, ppIInfo)
proc createDecoder*(self: ptr IWicImagingFactory; guidContainerFormat: WinGuid; pguidVendor: WinGuid; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.inline, raises: [].} =
  type PfnCreateDecoder = proc (self: pointer; guidContainerFormat: ptr WinGuid; pguidVendor: ptr WinGuid; ppIDecoder: var ptr IWicBitmapDecoder): WinResult {.w32callback.}
  cast[PfnCreateDecoder](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateDecoder)(self, guidContainerFormat.unsafeAddr, pguidVendor.unsafeAddr, ppIDecoder)
proc createEncoder*(self: ptr IWicImagingFactory; guidContainerFormat: WinGuid; pguidVendor: WinGuid; ppIEncoder: var ptr IWicBitmapEncoder): WinResult {.inline, raises: [].} =
  type PfnCreateEncoder = proc (self: pointer; guidContainerFormat: ptr WinGuid; pguidVendor: ptr WinGuid; ppIEncoder: var ptr IWicBitmapEncoder): WinResult {.w32callback.}
  cast[PfnCreateEncoder](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateEncoder)(self, guidContainerFormat.unsafeAddr, pguidVendor.unsafeAddr, ppIEncoder)
proc createPalette*(self: ptr IWicImagingFactory; ppIPalette: var ptr IWicPalette): WinResult {.inline, raises: [].} =
  type PfnCreatePalette = proc (self: pointer; ppIPalette: var ptr IWicPalette): WinResult {.w32callback.}
  cast[PfnCreatePalette](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreatePalette)(self, ppIPalette)
proc createFormatConverter*(self: ptr IWicImagingFactory; ppIFormatConverter: var ptr IWicFormatConverter): WinResult {.inline, raises: [].} =
  type PfnCreateFormatConverter = proc (self: pointer; ppIFormatConverter: var ptr IWicFormatConverter): WinResult {.w32callback.}
  cast[PfnCreateFormatConverter](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateFormatConverter)(self, ppIFormatConverter)
proc createBitmapScaler*(self: ptr IWicImagingFactory; ppIBitmapScaler: var ptr IWicBitmapScaler): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapScaler = proc (self: pointer; ppIBitmapScaler: var ptr IWicBitmapScaler): WinResult {.w32callback.}
  cast[PfnCreateBitmapScaler](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapScaler)(self, ppIBitmapScaler)
proc createBitmapClipper*(self: ptr IWicImagingFactory; ppIBitmapClipper: var ptr IWicBitmapClipper): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapClipper = proc (self: pointer; ppIBitmapClipper: var ptr IWicBitmapClipper): WinResult {.w32callback.}
  cast[PfnCreateBitmapClipper](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapClipper)(self, ppIBitmapClipper)
proc createBitmapFlipRotator*(self: ptr IWicImagingFactory; ppIBitmapFlipRotator: var ptr IWicBitmapFlipRotator): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFlipRotator = proc (self: pointer; ppIBitmapFlipRotator: var ptr IWicBitmapFlipRotator): WinResult {.w32callback.}
  cast[PfnCreateBitmapFlipRotator](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapFlipRotator)(self, ppIBitmapFlipRotator)
proc createStream*(self: ptr IWicImagingFactory; ppIWICStream: var ptr IWicStream): WinResult {.inline, raises: [].} =
  type PfnCreateStream = proc (self: pointer; ppIWICStream: var ptr IWicStream): WinResult {.w32callback.}
  cast[PfnCreateStream](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateStream)(self, ppIWICStream)
proc createColorContext*(self: ptr IWicImagingFactory; ppIWICColorContext: var ptr IWicColorContext): WinResult {.inline, raises: [].} =
  type PfnCreateColorContext = proc (self: pointer; ppIWICColorContext: var ptr IWicColorContext): WinResult {.w32callback.}
  cast[PfnCreateColorContext](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateColorContext)(self, ppIWICColorContext)
proc createColorTransformer*(self: ptr IWicImagingFactory; ppIWICColorTransform: var ptr IWicColorTransform): WinResult {.inline, raises: [].} =
  type PfnCreateColorTransformer = proc (self: pointer; ppIWICColorTransform: var ptr IWicColorTransform): WinResult {.w32callback.}
  cast[PfnCreateColorTransformer](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateColorTransformer)(self, ppIWICColorTransform)
proc createBitmap*(self: ptr IWicImagingFactory; uiWidth: uint32; uiHeight: uint32; pixelFormat: WinGuid; option: WicBitmapCreateCacheOption; ppIBitmap: var ptr IWicBitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmap = proc (self: pointer; uiWidth: uint32; uiHeight: uint32; pixelFormat: ptr WinGuid; option: WicBitmapCreateCacheOption; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmap](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmap)(self, uiWidth, uiHeight, pixelFormat.unsafeAddr, option, ppIBitmap)
proc createBitmapFromSource*(self: ptr IWicImagingFactory; pIBitmapSource: ptr IWicBitmapSource; option: WicBitmapCreateCacheOption; ppIBitmap: var ptr IWicBitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFromSource = proc (self: pointer; pIBitmapSource: ptr IWicBitmapSource; option: WicBitmapCreateCacheOption; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmapFromSource](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapFromSource)(self, pIBitmapSource, option, ppIBitmap)
proc createBitmapFromSourceRect*(self: ptr IWicImagingFactory; pIBitmapSource: ptr IWicBitmapSource; x: uint32; y: uint32; width: uint32; height: uint32; ppIBitmap: var ptr IWicBitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFromSourceRect = proc (self: pointer; pIBitmapSource: ptr IWicBitmapSource; x: uint32; y: uint32; width: uint32; height: uint32; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmapFromSourceRect](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapFromSourceRect)(self, pIBitmapSource, x, y, width, height, ppIBitmap)
proc createBitmapFromMemory*(self: ptr IWicImagingFactory; uiWidth: uint32; uiHeight: uint32; pixelFormat: WinGuid; cbStride: uint32; cbBufferSize: uint32; pbBuffer: ptr UncheckedArray[uint8]; ppIBitmap: var ptr IWicBitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFromMemory = proc (self: pointer; uiWidth: uint32; uiHeight: uint32; pixelFormat: ptr WinGuid; cbStride: uint32; cbBufferSize: uint32; pbBuffer: ptr UncheckedArray[uint8]; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmapFromMemory](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapFromMemory)(self, uiWidth, uiHeight, pixelFormat.unsafeAddr, cbStride, cbBufferSize, pbBuffer, ppIBitmap)
proc createBitmapFromHBITMAP*(self: ptr IWicImagingFactory; hBitmap: WtHBITMAP; hPalette: WtHPALETTE; options: WicBitmapAlphaChannelOption; ppIBitmap: var ptr IWicBitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFromHBITMAP = proc (self: pointer; hBitmap: WtHBITMAP; hPalette: WtHPALETTE; options: WicBitmapAlphaChannelOption; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmapFromHBITMAP](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapFromHBITMAP)(self, hBitmap, hPalette, options, ppIBitmap)
proc createBitmapFromHICON*(self: ptr IWicImagingFactory; hIcon: WtHICON; ppIBitmap: var ptr IWicBitmap): WinResult {.inline, raises: [].} =
  type PfnCreateBitmapFromHICON = proc (self: pointer; hIcon: WtHICON; ppIBitmap: var ptr IWicBitmap): WinResult {.w32callback.}
  cast[PfnCreateBitmapFromHICON](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateBitmapFromHICON)(self, hIcon, ppIBitmap)
# skipped: IWicImagingFactory CreateComponentEnumerator
proc createFastMetadataEncoderFromDecoder*(self: ptr IWicImagingFactory; pIDecoder: ptr IWicBitmapDecoder; ppIFastEncoder: var ptr IWicFastMetadataEncoder): WinResult {.inline, raises: [].} =
  type PfnCreateFastMetadataEncoderFromDecoder = proc (self: pointer; pIDecoder: ptr IWicBitmapDecoder; ppIFastEncoder: var ptr IWicFastMetadataEncoder): WinResult {.w32callback.}
  cast[PfnCreateFastMetadataEncoderFromDecoder](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateFastMetadataEncoderFromDecoder)(self, pIDecoder, ppIFastEncoder)
proc createFastMetadataEncoderFromFrameDecode*(self: ptr IWicImagingFactory; pIFrameDecoder: ptr IWicBitmapFrameDecode; ppIFastEncoder: var ptr IWicFastMetadataEncoder): WinResult {.inline, raises: [].} =
  type PfnCreateFastMetadataEncoderFromFrameDecode = proc (self: pointer; pIFrameDecoder: ptr IWicBitmapFrameDecode; ppIFastEncoder: var ptr IWicFastMetadataEncoder): WinResult {.w32callback.}
  cast[PfnCreateFastMetadataEncoderFromFrameDecode](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateFastMetadataEncoderFromFrameDecode)(self, pIFrameDecoder, ppIFastEncoder)
proc createQueryWriter*(self: ptr IWicImagingFactory; guidMetadataFormat: WinGuid; pguidVendor: WinGuid; ppIQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.inline, raises: [].} =
  type PfnCreateQueryWriter = proc (self: pointer; guidMetadataFormat: ptr WinGuid; pguidVendor: ptr WinGuid; ppIQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
  cast[PfnCreateQueryWriter](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateQueryWriter)(self, guidMetadataFormat.unsafeAddr, pguidVendor.unsafeAddr, ppIQueryWriter)
proc createQueryWriterFromReader*(self: ptr IWicImagingFactory; pIQueryReader: ptr IWicMetadataQueryReader; pguidVendor: WinGuid; ppIQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.inline, raises: [].} =
  type PfnCreateQueryWriterFromReader = proc (self: pointer; pIQueryReader: ptr IWicMetadataQueryReader; pguidVendor: ptr WinGuid; ppIQueryWriter: var ptr IWicMetadataQueryWriter): WinResult {.w32callback.}
  cast[PfnCreateQueryWriterFromReader](cast[ptr IWicImagingFactoryVtbl](self.vtbl).CreateQueryWriterFromReader)(self, pIQueryReader, pguidVendor.unsafeAddr, ppIQueryWriter)
template winGuid*(t: typedesc[IWicComponentInfo]): WinGuid =
  WinGuid(Data1: 0x23bc3f0a'u32, Data2: 0x698b'u16, Data3: 0x4357'u16, Data4: [0x88'u8, 0x6b'u8, 0xf2'u8, 0x4d'u8, 0x50'u8, 0x67'u8, 0x13'u8, 0x34'u8])
template winGuid*(t: typedesc[IWicBitmapCodecInfo]): WinGuid =
  WinGuid(Data1: 0xe87a44c4'u32, Data2: 0xb76e'u16, Data3: 0x4c47'u16, Data4: [0x8b'u8, 0x09'u8, 0x29'u8, 0x8e'u8, 0xb1'u8, 0x2a'u8, 0x27'u8, 0x14'u8])
template winGuid*(t: typedesc[IWicBitmapDecoderInfo]): WinGuid =
  WinGuid(Data1: 0xd8cd007f'u32, Data2: 0xd08f'u16, Data3: 0x4191'u16, Data4: [0x9b'u8, 0xfc'u8, 0x23'u8, 0x6e'u8, 0xa7'u8, 0xf0'u8, 0xe4'u8, 0xb5'u8])
template winGuid*(t: typedesc[IWicBitmapSource]): WinGuid =
  WinGuid(Data1: 0x00000120'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicPalette]): WinGuid =
  WinGuid(Data1: 0x00000040'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicMetadataQueryReader]): WinGuid =
  WinGuid(Data1: 0x30989668'u32, Data2: 0xe1c9'u16, Data3: 0x4597'u16, Data4: [0xb3'u8, 0x95'u8, 0x45'u8, 0x8e'u8, 0xed'u8, 0xb8'u8, 0x08'u8, 0xdf'u8])
template winGuid*(t: typedesc[IWicColorContext]): WinGuid =
  WinGuid(Data1: 0x3c613a02'u32, Data2: 0x34b2'u16, Data3: 0x44ea'u16, Data4: [0x9a'u8, 0x7c'u8, 0x45'u8, 0xae'u8, 0xa9'u8, 0xc6'u8, 0xfd'u8, 0x6d'u8])
template winGuid*(t: typedesc[IWicBitmapFrameDecode]): WinGuid =
  WinGuid(Data1: 0x3b16811b'u32, Data2: 0x6a43'u16, Data3: 0x4ec9'u16, Data4: [0xa8'u8, 0x13'u8, 0x3d'u8, 0x93'u8, 0x0c'u8, 0x13'u8, 0xb9'u8, 0x40'u8])
template winGuid*(t: typedesc[IWicBitmapDecoder]): WinGuid =
  WinGuid(Data1: 0x9edde9e7'u32, Data2: 0x8dee'u16, Data3: 0x47ea'u16, Data4: [0x99'u8, 0xdf'u8, 0xe6'u8, 0xfa'u8, 0xf2'u8, 0xed'u8, 0x44'u8, 0xbf'u8])
template winGuid*(t: typedesc[IWicBitmapEncoderInfo]): WinGuid =
  WinGuid(Data1: 0x94c9b4ee'u32, Data2: 0xa09f'u16, Data3: 0x4f92'u16, Data4: [0x8a'u8, 0x1e'u8, 0x4a'u8, 0x9b'u8, 0xce'u8, 0x7e'u8, 0x76'u8, 0xfb'u8])
template winGuid*(t: typedesc[IWicMetadataQueryWriter]): WinGuid =
  WinGuid(Data1: 0xa721791a'u32, Data2: 0x0def'u16, Data3: 0x4d06'u16, Data4: [0xbd'u8, 0x91'u8, 0x21'u8, 0x18'u8, 0xbf'u8, 0x1d'u8, 0xb1'u8, 0x0b'u8])
template winGuid*(t: typedesc[IWicBitmapFrameEncode]): WinGuid =
  WinGuid(Data1: 0x00000105'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicBitmapEncoder]): WinGuid =
  WinGuid(Data1: 0x00000103'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicFormatConverter]): WinGuid =
  WinGuid(Data1: 0x00000301'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicBitmapScaler]): WinGuid =
  WinGuid(Data1: 0x00000302'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicBitmapClipper]): WinGuid =
  WinGuid(Data1: 0xe4fbcf03'u32, Data2: 0x223d'u16, Data3: 0x4e81'u16, Data4: [0x93'u8, 0x33'u8, 0xd6'u8, 0x35'u8, 0x55'u8, 0x6d'u8, 0xd1'u8, 0xb5'u8])
template winGuid*(t: typedesc[IWicBitmapFlipRotator]): WinGuid =
  WinGuid(Data1: 0x5009834f'u32, Data2: 0x2d6a'u16, Data3: 0x41ce'u16, Data4: [0x9e'u8, 0x1b'u8, 0x17'u8, 0xc5'u8, 0xaf'u8, 0xf7'u8, 0xa7'u8, 0x82'u8])
template winGuid*(t: typedesc[IWicStream]): WinGuid =
  WinGuid(Data1: 0x135ff860'u32, Data2: 0x22b7'u16, Data3: 0x4ddf'u16, Data4: [0xb0'u8, 0xf6'u8, 0x21'u8, 0x8f'u8, 0x4f'u8, 0x29'u8, 0x9a'u8, 0x43'u8])
template winGuid*(t: typedesc[IWicColorTransform]): WinGuid =
  WinGuid(Data1: 0xb66f034f'u32, Data2: 0xd0e2'u16, Data3: 0x40ab'u16, Data4: [0xb4'u8, 0x36'u8, 0x6d'u8, 0xe3'u8, 0x9e'u8, 0x32'u8, 0x1a'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicBitmapLock]): WinGuid =
  WinGuid(Data1: 0x00000123'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicBitmap]): WinGuid =
  WinGuid(Data1: 0x00000121'u32, Data2: 0xa8f2'u16, Data3: 0x4877'u16, Data4: [0xba'u8, 0x0a'u8, 0xfd'u8, 0x2b'u8, 0x66'u8, 0x45'u8, 0xfb'u8, 0x94'u8])
template winGuid*(t: typedesc[IWicFastMetadataEncoder]): WinGuid =
  WinGuid(Data1: 0xb84e2c09'u32, Data2: 0x78c9'u16, Data3: 0x4ac4'u16, Data4: [0x8b'u8, 0xd3'u8, 0x52'u8, 0x4a'u8, 0xe1'u8, 0x66'u8, 0x3a'u8, 0x2f'u8])
template winGuid*(t: typedesc[IWicImagingFactory]): WinGuid =
  WinGuid(Data1: 0xec5ec8a9'u32, Data2: 0xc395'u16, Data3: 0x4314'u16, Data4: [0x9c'u8, 0x77'u8, 0x54'u8, 0xd7'u8, 0xa9'u8, 0x35'u8, 0xff'u8, 0x70'u8])

