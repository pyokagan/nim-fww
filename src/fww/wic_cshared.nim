type
  WicColorContextType* {.size: 4.} = enum
    wicColorContextUninitialized = 0
    wicColorContextProfile = 1
    wicColorContextExifColorSpace = 2
  WicBitmapCreateCacheOption* {.size: 4.} = enum
    wicBitmapNoCache = 0
    wicBitmapCacheOnDemand = 1
    wicBitmapCacheOnLoad = 2
  WicDecodeOptions* {.size: 4.} = enum
    wicDecodeMetadataCacheOnDemand = 0
    wicDecodeMetadataCacheOnLoad = 1
  WicBitmapEncoderCacheOption* {.size: 4.} = enum
    wicBitmapEncoderCacheInMemory = 0
    wicBitmapEncoderCacheTempFile = 1
    wicBitmapEncoderNoCache = 2
  WicComponentType* = distinct int32
  WicComponentEnumerateOptions* = distinct int32
  WicBitmapInterpolationMode* {.size: 4.} = enum
    wicBitmapInterpolationModeNearestNeighbor = 0
    wicBitmapInterpolationModeLinear = 1
    wicBitmapInterpolationModeCubic = 2
    wicBitmapInterpolationModeFant = 3
    wicBitmapInterpolationModeHighQualityCubic = 4
  WicBitmapPaletteType* {.size: 4.} = enum
    wicBitmapPaletteTypeCustom = 0
    wicBitmapPaletteTypeMedianCut = 1
    wicBitmapPaletteTypeFixedBW = 2
    wicBitmapPaletteTypeFixedHalftone8 = 3
    wicBitmapPaletteTypeFixedHalftone27 = 4
    wicBitmapPaletteTypeFixedHalftone64 = 5
    wicBitmapPaletteTypeFixedHalftone125 = 6
    wicBitmapPaletteTypeFixedHalftone216 = 7
    wicBitmapPaletteTypeFixedHalftone252 = 8
    wicBitmapPaletteTypeFixedHalftone256 = 9
    wicBitmapPaletteTypeFixedGray4 = 10
    wicBitmapPaletteTypeFixedGray16 = 11
    wicBitmapPaletteTypeFixedGray256 = 12
  WicBitmapDitherType* {.size: 4.} = enum
    wicBitmapDitherTypeNone = 0
    wicBitmapDitherTypeOrdered4x4 = 1
    wicBitmapDitherTypeOrdered8x8 = 2
    wicBitmapDitherTypeOrdered16x16 = 3
    wicBitmapDitherTypeSpiral4x4 = 4
    wicBitmapDitherTypeSpiral8x8 = 5
    wicBitmapDitherTypeDualSpiral4x4 = 6
    wicBitmapDitherTypeDualSpiral8x8 = 7
    wicBitmapDitherTypeErrorDiffusion = 8
  WicBitmapAlphaChannelOption* {.size: 4.} = enum
    wicBitmapUseAlpha = 0
    wicBitmapUsePremultipliedAlpha = 1
    wicBitmapIgnoreAlpha = 2
  WicBitmapTransformOptions* = distinct int32
  WicBitmapLockFlags* = distinct int32
  WicBitmapDecoderCapabilities* = distinct int32
  WicProgressOperation* = distinct int32
  WicProgressNotification* = distinct int32
  WicComponentSigning* {.size: 4.} = enum
    wicComponentDisabled = -2147483648
    wicComponentSigned = 1
    wicComponentUnsigned = 2
    wicComponentSafe = 4
  WicGifLogicalScreenDescriptorProperties* {.size: 4.} = enum
    wicGifLogicalScreenSignature = 1
    wicGifLogicalScreenDescriptorWidth = 2
    wicGifLogicalScreenDescriptorHeight = 3
    wicGifLogicalScreenDescriptorGlobalColorTableFlag = 4
    wicGifLogicalScreenDescriptorColorResolution = 5
    wicGifLogicalScreenDescriptorSortFlag = 6
    wicGifLogicalScreenDescriptorGlobalColorTableSize = 7
    wicGifLogicalScreenDescriptorBackgroundColorIndex = 8
    wicGifLogicalScreenDescriptorPixelAspectRatio = 9
  WicGifImageDescriptorProperties* {.size: 4.} = enum
    wicGifImageDescriptorLeft = 1
    wicGifImageDescriptorTop = 2
    wicGifImageDescriptorWidth = 3
    wicGifImageDescriptorHeight = 4
    wicGifImageDescriptorLocalColorTableFlag = 5
    wicGifImageDescriptorInterlaceFlag = 6
    wicGifImageDescriptorSortFlag = 7
    wicGifImageDescriptorLocalColorTableSize = 8
  WicGifGraphicControlExtensionProperties* {.size: 4.} = enum
    wicGifGraphicControlExtensionDisposal = 1
    wicGifGraphicControlExtensionUserInputFlag = 2
    wicGifGraphicControlExtensionTransparencyFlag = 3
    wicGifGraphicControlExtensionDelay = 4
    wicGifGraphicControlExtensionTransparentColorIndex = 5
  WicGifApplicationExtensionProperties* {.size: 4.} = enum
    wicGifApplicationExtensionApplication = 1
    wicGifApplicationExtensionData = 2
  WicGifCommentExtensionProperties* {.size: 4.} = enum
    wicGifCommentExtensionText = 1
  WicJpegCommentProperties* {.size: 4.} = enum
    wicJpegCommentText = 1
  WicJpegLuminanceProperties* {.size: 4.} = enum
    wicJpegLuminanceTable = 1
  WicJpegChrominanceProperties* {.size: 4.} = enum
    wicJpegChrominanceTable = 1
  Wic8BIMIptcProperties* {.size: 4.} = enum
    wic8BIMIptcPString = 0
    wic8BIMIptcEmbeddedIPTC = 1
  Wic8BIMResolutionInfoProperties* {.size: 4.} = enum
    wic8BIMResolutionInfoPString = 1
    wic8BIMResolutionInfoHResolution = 2
    wic8BIMResolutionInfoHResolutionUnit = 3
    wic8BIMResolutionInfoWidthUnit = 4
    wic8BIMResolutionInfoVResolution = 5
    wic8BIMResolutionInfoVResolutionUnit = 6
    wic8BIMResolutionInfoHeightUnit = 7
  Wic8BIMIptcDigestProperties* {.size: 4.} = enum
    wic8BIMIptcDigestPString = 1
    wic8BIMIptcDigestIptcDigest = 2
  WicPngGamaProperties* {.size: 4.} = enum
    wicPngGamaGamma = 1
  WicPngBkgdProperties* {.size: 4.} = enum
    wicPngBkgdBackgroundColor = 1
  WicPngItxtProperties* {.size: 4.} = enum
    wicPngItxtKeyword = 1
    wicPngItxtCompressionFlag = 2
    wicPngItxtLanguageTag = 3
    wicPngItxtTranslatedKeyword = 4
    wicPngItxtText = 5
  WicPngChrmProperties* {.size: 4.} = enum
    wicPngChrmWhitePointX = 1
    wicPngChrmWhitePointY = 2
    wicPngChrmRedX = 3
    wicPngChrmRedY = 4
    wicPngChrmGreenX = 5
    wicPngChrmGreenY = 6
    wicPngChrmBlueX = 7
    wicPngChrmBlueY = 8
  WicPngHistProperties* {.size: 4.} = enum
    wicPngHistFrequencies = 1
  WicPngIccpProperties* {.size: 4.} = enum
    wicPngIccpProfileName = 1
    wicPngIccpProfileData = 2
  WicPngSrgbProperties* {.size: 4.} = enum
    wicPngSrgbRenderingIntent = 1
  WicPngTimeProperties* {.size: 4.} = enum
    wicPngTimeYear = 1
    wicPngTimeMonth = 2
    wicPngTimeDay = 3
    wicPngTimeHour = 4
    wicPngTimeMinute = 5
    wicPngTimeSecond = 6
  WicHeifProperties* {.size: 4.} = enum
    wicHeifOrientation = 1
  WicHeifHdrProperties* {.size: 4.} = enum
    wicHeifHdrMaximumLuminanceLevel = 1
    wicHeifHdrMaximumFrameAverageLuminanceLevel = 2
    wicHeifHdrMinimumMasteringDisplayLuminanceLevel = 3
    wicHeifHdrMaximumMasteringDisplayLuminanceLevel = 4
    wicHeifHdrCustomVideoPrimaries = 5
  WicWebpAnimProperties* {.size: 4.} = enum
    wicWebpAnimLoopCount = 1
  WicWebpAnmfProperties* {.size: 4.} = enum
    wicWebpAnmfFrameDuration = 1
  WicSectionAccessLevel* {.size: 4.} = enum
    wicSectionAccessLevelRead = 1
    wicSectionAccessLevelReadWrite = 3
  WicPixelFormatNumericRepresentation* {.size: 4.} = enum
    wicPixelFormatNumericRepresentationUnspecified = 0
    wicPixelFormatNumericRepresentationIndexed = 1
    wicPixelFormatNumericRepresentationUnsignedInteger = 2
    wicPixelFormatNumericRepresentationSignedInteger = 3
    wicPixelFormatNumericRepresentationFixed = 4
    wicPixelFormatNumericRepresentationFloat = 5
  WicPlanarOptions* {.size: 4.} = enum
    wicPlanarOptionsDefault = 0
    wicPlanarOptionsPreserveSubsampling = 1
  WicJpegIndexingOptions* {.size: 4.} = enum
    wicJpegIndexingOptionsGenerateOnDemand = 0
    wicJpegIndexingOptionsGenerateOnLoad = 1
  WicJpegTransferMatrix* {.size: 4.} = enum
    wicJpegTransferMatrixIdentity = 0
    wicJpegTransferMatrixBT601 = 1
  WicJpegScanType* {.size: 4.} = enum
    wicJpegScanTypeInterleaved = 0
    wicJpegScanTypePlanarComponents = 1
    wicJpegScanTypeProgressive = 2
  WicTiffCompressionOption* {.size: 4.} = enum
    wicTiffCompressionDontCare = 0
    wicTiffCompressionNone = 1
    wicTiffCompressionCCITT3 = 2
    wicTiffCompressionCCITT4 = 3
    wicTiffCompressionLZW = 4
    wicTiffCompressionRLE = 5
    wicTiffCompressionZIP = 6
    wicTiffCompressionLZWHDifferencing = 7
  WicJpegYCrCbSubsamplingOption* {.size: 4.} = enum
    wicJpegYCrCbSubsamplingDefault = 0
    wicJpegYCrCbSubsampling420 = 1
    wicJpegYCrCbSubsampling422 = 2
    wicJpegYCrCbSubsampling444 = 3
    wicJpegYCrCbSubsampling440 = 4
  WicPngFilterOption* {.size: 4.} = enum
    wicPngFilterUnspecified = 0
    wicPngFilterNone = 1
    wicPngFilterSub = 2
    wicPngFilterUp = 3
    wicPngFilterAverage = 4
    wicPngFilterPaeth = 5
    wicPngFilterAdaptive = 6
  WicNamedWhitePoint* {.size: 4.} = enum
    wicWhitePointDefault = 1
    wicWhitePointDaylight = 2
    wicWhitePointCloudy = 4
    wicWhitePointShade = 8
    wicWhitePointTungsten = 16
    wicWhitePointFluorescent = 32
    wicWhitePointFlash = 64
    wicWhitePointUnderwater = 128
    wicWhitePointCustom = 256
    wicWhitePointAutoWhiteBalance = 512
  WicRawCapabilities* {.size: 4.} = enum
    wicRawCapabilityNotSupported = 0
    wicRawCapabilityGetSupported = 1
    wicRawCapabilityFullySupported = 2
  WicRawRotationCapabilities* {.size: 4.} = enum
    wicRawRotationCapabilityNotSupported = 0
    wicRawRotationCapabilityGetSupported = 1
    wicRawRotationCapabilityNinetyDegreesSupported = 2
    wicRawRotationCapabilityFullySupported = 3
  WicRawParameterSet* {.size: 4.} = enum
    wicAsShotParameterSet = 1
    wicUserAdjustedParameterSet = 2
    wicAutoAdjustedParameterSet = 3
  WicRawRenderMode* {.size: 4.} = enum
    wicRawRenderModeDraft = 1
    wicRawRenderModeNormal = 2
    wicRawRenderModeBestQuality = 3
  WicDdsDimension* {.size: 4.} = enum
    wicDdsTexture1D = 0
    wicDdsTexture2D = 1
    wicDdsTexture3D = 2
    wicDdsTextureCube = 3
  WicDdsAlphaMode* {.size: 4.} = enum
    wicDdsAlphaModeUnknown = 0
    wicDdsAlphaModeStraight = 1
    wicDdsAlphaModePremultiplied = 2
    wicDdsAlphaModeOpaque = 3
    wicDdsAlphaModeCustom = 4
  WicMetadataCreationOptions* {.size: 4.} = enum
    wicMetadataCreationMask = -65536
    wicMetadataCreationDefault = 0
    wicMetadataCreationFailUnknown = 65536
  WicPersistOptions* {.size: 4.} = enum
    wicPersistOptionDefault = 0
    wicPersistOptionBigEndian = 1
    wicPersistOptionStrictFormat = 2
    wicPersistOptionNoCacheStream = 4
    wicPersistOptionPreferUTF8 = 8
    wicPersistOptionMask = 65535
defineFlags(WicComponentType)
defineFlags(WicComponentEnumerateOptions)
defineFlags(WicBitmapTransformOptions)
defineFlags(WicBitmapLockFlags)
defineFlags(WicBitmapDecoderCapabilities)
defineFlags(WicProgressOperation)
defineFlags(WicProgressNotification)
const
  wicComponentTypeDecoder* = WicComponentType 1
  wicComponentTypeEncoder* = WicComponentType 2
  wicComponentTypePixelFormatConverter* = WicComponentType 4
  wicComponentTypeMetadataReader* = WicComponentType 8
  wicComponentTypeMetadataWriter* = WicComponentType 16
  wicComponentTypePixelFormat* = WicComponentType 32
  wicComponentTypeAllComponents* = WicComponentType 63
  wicComponentEnumerateDefault* = WicComponentEnumerateOptions 0
  wicComponentEnumerateRefresh* = WicComponentEnumerateOptions 1
  wicComponentEnumerateDisabled* = WicComponentEnumerateOptions -2147483648
  wicComponentEnumerateUnsigned* = WicComponentEnumerateOptions 1073741824
  wicComponentEnumerateBuiltInOnly* = WicComponentEnumerateOptions 536870912
  wicBitmapPaletteTypeFixedWebPalette* = WicBitmapPaletteType 7
  wicBitmapDitherTypeSolid* = WicBitmapDitherType 0
  wicBitmapTransformRotate0* = WicBitmapTransformOptions 0
  wicBitmapTransformRotate90* = WicBitmapTransformOptions 1
  wicBitmapTransformRotate180* = WicBitmapTransformOptions 2
  wicBitmapTransformRotate270* = WicBitmapTransformOptions 3
  wicBitmapTransformFlipHorizontal* = WicBitmapTransformOptions 8
  wicBitmapTransformFlipVertical* = WicBitmapTransformOptions 16
  wicBitmapLockRead* = WicBitmapLockFlags 1
  wicBitmapLockWrite* = WicBitmapLockFlags 2
  wicBitmapDecoderCapabilitySameEncoder* = WicBitmapDecoderCapabilities 1
  wicBitmapDecoderCapabilityCanDecodeAllImages* = WicBitmapDecoderCapabilities 2
  wicBitmapDecoderCapabilityCanDecodeSomeImages* = WicBitmapDecoderCapabilities 4
  wicBitmapDecoderCapabilityCanEnumerateMetadata* = WicBitmapDecoderCapabilities 8
  wicBitmapDecoderCapabilityCanDecodeThumbnail* = WicBitmapDecoderCapabilities 16
  wicProgressOperationCopyPixels* = WicProgressOperation 1
  wicProgressOperationWritePixels* = WicProgressOperation 2
  wicProgressOperationAll* = WicProgressOperation 65535
  wicProgressNotificationBegin* = WicProgressNotification 65536
  wicProgressNotificationEnd* = WicProgressNotification 131072
  wicProgressNotificationFrequent* = WicProgressNotification 262144
  wicProgressNotificationAll* = WicProgressNotification -65536
  wicWhitePointAsShot* = WicNamedWhitePoint 1
  wicMetadataCreationAllowUnknown* = WicMetadataCreationOptions 0
  wicPersistOptionLittleEndian* = WicPersistOptions 0
type
  IWicComponentInfo* = object of IUnknown # {23bc3f0a-698b-4357-886b-f24d50671334}
    discard
  IWicBitmapCodecInfo* = object of IWicComponentInfo # {e87a44c4-b76e-4c47-8b09-298eb12a2714}
    discard
  IWicBitmapDecoderInfo* = object of IWicBitmapCodecInfo # {d8cd007f-d08f-4191-9bfc-236ea7f0e4b5}
    discard
  IWicBitmapSource* = object of IUnknown # {00000120-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicPalette* = object of IUnknown # {00000040-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicMetadataQueryReader* = object of IUnknown # {30989668-e1c9-4597-b395-458eedb808df}
    discard
  IWicColorContext* = object of IUnknown # {3c613a02-34b2-44ea-9a7c-45aea9c6fd6d}
    discard
  IWicBitmapFrameDecode* = object of IWicBitmapSource # {3b16811b-6a43-4ec9-a813-3d930c13b940}
    discard
  IWicBitmapDecoder* = object of IUnknown # {9edde9e7-8dee-47ea-99df-e6faf2ed44bf}
    discard
  IWicBitmapEncoderInfo* = object of IWicBitmapCodecInfo # {94c9b4ee-a09f-4f92-8a1e-4a9bce7e76fb}
    discard
  IWicMetadataQueryWriter* = object of IWicMetadataQueryReader # {a721791a-0def-4d06-bd91-2118bf1db10b}
    discard
  IWicBitmapFrameEncode* = object of IUnknown # {00000105-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicBitmapEncoder* = object of IUnknown # {00000103-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicFormatConverter* = object of IWicBitmapSource # {00000301-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicBitmapScaler* = object of IWicBitmapSource # {00000302-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicBitmapClipper* = object of IWicBitmapSource # {e4fbcf03-223d-4e81-9333-d635556dd1b5}
    discard
  IWicBitmapFlipRotator* = object of IWicBitmapSource # {5009834f-2d6a-41ce-9e1b-17c5aff7a782}
    discard
  IWicStream* = object of IStream # {135ff860-22b7-4ddf-b0f6-218f4f299a43}
    discard
  IWicColorTransform* = object of IWicBitmapSource # {b66f034f-d0e2-40ab-b436-6de39e321a94}
    discard
  IWicBitmapLock* = object of IUnknown # {00000123-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicBitmap* = object of IWicBitmapSource # {00000121-a8f2-4877-ba0a-fd2b6645fb94}
    discard
  IWicFastMetadataEncoder* = object of IUnknown # {b84e2c09-78c9-4ac4-8bd3-524ae1663a2f}
    discard
  IWicImagingFactory* = object of IUnknown # {ec5ec8a9-c395-4314-9c77-54d7a935ff70}
    discard

