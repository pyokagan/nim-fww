type
  DwriteFontAxisTag* = distinct int32
  DwriteMeasuringMode* {.size: 4.} = enum
    dwriteMeasuringModeNatural = 0
    dwriteMeasuringModeGdiClassic = 1
    dwriteMeasuringModeGdiNatural = 2
  DwriteGlyphImageFormats* = distinct int32
  DwriteFontFileType* {.size: 4.} = enum
    dwriteFontFileTypeUnknown = 0
    dwriteFontFileTypeCff = 1
    dwriteFontFileTypeTruetype = 2
    dwriteFontFileTypeOpentypeCollection = 3
    dwriteFontFileTypeType1Pfm = 4
    dwriteFontFileTypeType1Pfb = 5
    dwriteFontFileTypeVector = 6
    dwriteFontFileTypeBitmap = 7
  DwriteFontFaceType* {.size: 4.} = enum
    dwriteFontFaceTypeCff = 0
    dwriteFontFaceTypeTruetype = 1
    dwriteFontFaceTypeOpentypeCollection = 2
    dwriteFontFaceTypeType1 = 3
    dwriteFontFaceTypeVector = 4
    dwriteFontFaceTypeBitmap = 5
    dwriteFontFaceTypeUnknown = 6
    dwriteFontFaceTypeRawCff = 7
  DwriteFontSimulations* = distinct int32
  DwriteFontStretch* {.size: 4.} = enum
    dwriteFontStretchUndefined = 0
    dwriteFontStretchUltraCondensed = 1
    dwriteFontStretchExtraCondensed = 2
    dwriteFontStretchCondensed = 3
    dwriteFontStretchSemiCondensed = 4
    dwriteFontStretchNormal = 5
    dwriteFontStretchSemiExpanded = 6
    dwriteFontStretchExpanded = 7
    dwriteFontStretchExtraExpanded = 8
    dwriteFontStretchUltraExpanded = 9
  DwriteFontStyle* {.size: 4.} = enum
    dwriteFontStyleNormal = 0
    dwriteFontStyleOblique = 1
    dwriteFontStyleItalic = 2
  DwriteInformationalStringId* {.size: 4.} = enum
    dwriteInformationalStringNone = 0
    dwriteInformationalStringCopyrightNotice = 1
    dwriteInformationalStringVersionStrings = 2
    dwriteInformationalStringTrademark = 3
    dwriteInformationalStringManufacturer = 4
    dwriteInformationalStringDesigner = 5
    dwriteInformationalStringDesignerUrl = 6
    dwriteInformationalStringDescription = 7
    dwriteInformationalStringFontVendorUrl = 8
    dwriteInformationalStringLicenseDescription = 9
    dwriteInformationalStringLicenseInfoUrl = 10
    dwriteInformationalStringWin32FamilyNames = 11
    dwriteInformationalStringWin32SubfamilyNames = 12
    dwriteInformationalStringTypographicFamilyNames = 13
    dwriteInformationalStringTypographicSubfamilyNames = 14
    dwriteInformationalStringSampleText = 15
    dwriteInformationalStringFullName = 16
    dwriteInformationalStringPostscriptName = 17
    dwriteInformationalStringPostscriptCidName = 18
    dwriteInformationalStringWeightStretchStyleFamilyName = 19
    dwriteInformationalStringDesignScriptLanguageTag = 20
    dwriteInformationalStringSupportedScriptLanguageTag = 21
  DwriteFactoryType* {.size: 4.} = enum
    dwriteFactoryTypeShared = 0
    dwriteFactoryTypeIsolated = 1
  DwritePixelGeometry* {.size: 4.} = enum
    dwritePixelGeometryFlat = 0
    dwritePixelGeometryRgb = 1
    dwritePixelGeometryBgr = 2
  DwriteRenderingMode* {.size: 4.} = enum
    dwriteRenderingModeDefault = 0
    dwriteRenderingModeAliased = 1
    dwriteRenderingModeGdiClassic = 2
    dwriteRenderingModeGdiNatural = 3
    dwriteRenderingModeNatural = 4
    dwriteRenderingModeNaturalSymmetric = 5
    dwriteRenderingModeOutline = 6
  DwriteReadingDirection* {.size: 4.} = enum
    dwriteReadingDirectionLeftToRight = 0
    dwriteReadingDirectionRightToLeft = 1
    dwriteReadingDirectionTopToBottom = 2
    dwriteReadingDirectionBottomToTop = 3
  DwriteFlowDirection* {.size: 4.} = enum
    dwriteFlowDirectionTopToBottom = 0
    dwriteFlowDirectionBottomToTop = 1
    dwriteFlowDirectionLeftToRight = 2
    dwriteFlowDirectionRightToLeft = 3
  DwriteTextAlignment* {.size: 4.} = enum
    dwriteTextAlignmentLeading = 0
    dwriteTextAlignmentTrailing = 1
    dwriteTextAlignmentCenter = 2
    dwriteTextAlignmentJustified = 3
  DwriteParagraphAlignment* {.size: 4.} = enum
    dwriteParagraphAlignmentNear = 0
    dwriteParagraphAlignmentFar = 1
    dwriteParagraphAlignmentCenter = 2
  DwriteWordWrapping* {.size: 4.} = enum
    dwriteWordWrappingWrap = 0
    dwriteWordWrappingNoWrap = 1
    dwriteWordWrappingEmergencyBreak = 2
    dwriteWordWrappingWholeWord = 3
    dwriteWordWrappingCharacter = 4
  DwriteLineSpacingMethod* {.size: 4.} = enum
    dwriteLineSpacingMethodDefault = 0
    dwriteLineSpacingMethodUniform = 1
    dwriteLineSpacingMethodProportional = 2
  DwriteTrimmingGranularity* {.size: 4.} = enum
    dwriteTrimmingGranularityNone = 0
    dwriteTrimmingGranularityCharacter = 1
    dwriteTrimmingGranularityWord = 2
  DwriteFontFeatureTag* = distinct int32
  DwriteScriptShapes* = distinct int32
  DwriteBreakCondition* {.size: 4.} = enum
    dwriteBreakConditionNeutral = 0
    dwriteBreakConditionCanBreak = 1
    dwriteBreakConditionMayNotBreak = 2
    dwriteBreakConditionMustBreak = 3
  DwriteNumberSubstitutionMethod* {.size: 4.} = enum
    dwriteNumberSubstitutionMethodFromCulture = 0
    dwriteNumberSubstitutionMethodContextual = 1
    dwriteNumberSubstitutionMethodNone = 2
    dwriteNumberSubstitutionMethodNational = 3
    dwriteNumberSubstitutionMethodTraditional = 4
  DwriteTextureType* {.size: 4.} = enum
    dwriteTextureAliased1x1 = 0
    dwriteTextureCleartype3x1 = 1
  DwritePanoseFamily* {.size: 4.} = enum
    dwritePanoseFamilyAny = 0
    dwritePanoseFamilyNoFit = 1
    dwritePanoseFamilyTextDisplay = 2
    dwritePanoseFamilyScript = 3
    dwritePanoseFamilyDecorative = 4
    dwritePanoseFamilySymbol = 5
  DwritePanoseSerifStyle* {.size: 4.} = enum
    dwritePanoseSerifStyleAny = 0
    dwritePanoseSerifStyleNoFit = 1
    dwritePanoseSerifStyleCove = 2
    dwritePanoseSerifStyleObtuseCove = 3
    dwritePanoseSerifStyleSquareCove = 4
    dwritePanoseSerifStyleObtuseSquareCove = 5
    dwritePanoseSerifStyleSquare = 6
    dwritePanoseSerifStyleThin = 7
    dwritePanoseSerifStyleOval = 8
    dwritePanoseSerifStyleExaggerated = 9
    dwritePanoseSerifStyleTriangle = 10
    dwritePanoseSerifStyleNormalSans = 11
    dwritePanoseSerifStyleObtuseSans = 12
    dwritePanoseSerifStylePerpendicularSans = 13
    dwritePanoseSerifStyleFlared = 14
    dwritePanoseSerifStyleRounded = 15
    dwritePanoseSerifStyleScript = 16
  DwritePanoseWeight* {.size: 4.} = enum
    dwritePanoseWeightAny = 0
    dwritePanoseWeightNoFit = 1
    dwritePanoseWeightVeryLight = 2
    dwritePanoseWeightLight = 3
    dwritePanoseWeightThin = 4
    dwritePanoseWeightBook = 5
    dwritePanoseWeightMedium = 6
    dwritePanoseWeightDemi = 7
    dwritePanoseWeightBold = 8
    dwritePanoseWeightHeavy = 9
    dwritePanoseWeightBlack = 10
    dwritePanoseWeightExtraBlack = 11
  DwritePanoseProportion* {.size: 4.} = enum
    dwritePanoseProportionAny = 0
    dwritePanoseProportionNoFit = 1
    dwritePanoseProportionOldStyle = 2
    dwritePanoseProportionModern = 3
    dwritePanoseProportionEvenWidth = 4
    dwritePanoseProportionExpanded = 5
    dwritePanoseProportionCondensed = 6
    dwritePanoseProportionVeryExpanded = 7
    dwritePanoseProportionVeryCondensed = 8
    dwritePanoseProportionMonospaced = 9
  DwritePanoseContrast* {.size: 4.} = enum
    dwritePanoseContrastAny = 0
    dwritePanoseContrastNoFit = 1
    dwritePanoseContrastNone = 2
    dwritePanoseContrastVeryLow = 3
    dwritePanoseContrastLow = 4
    dwritePanoseContrastMediumLow = 5
    dwritePanoseContrastMedium = 6
    dwritePanoseContrastMediumHigh = 7
    dwritePanoseContrastHigh = 8
    dwritePanoseContrastVeryHigh = 9
    dwritePanoseContrastHorizontalLow = 10
    dwritePanoseContrastHorizontalMedium = 11
    dwritePanoseContrastHorizontalHigh = 12
    dwritePanoseContrastBroken = 13
  DwritePanoseStrokeVariation* {.size: 4.} = enum
    dwritePanoseStrokeVariationAny = 0
    dwritePanoseStrokeVariationNoFit = 1
    dwritePanoseStrokeVariationNoVariation = 2
    dwritePanoseStrokeVariationGradualDiagonal = 3
    dwritePanoseStrokeVariationGradualTransitional = 4
    dwritePanoseStrokeVariationGradualVertical = 5
    dwritePanoseStrokeVariationGradualHorizontal = 6
    dwritePanoseStrokeVariationRapidVertical = 7
    dwritePanoseStrokeVariationRapidHorizontal = 8
    dwritePanoseStrokeVariationInstantVertical = 9
    dwritePanoseStrokeVariationInstantHorizontal = 10
  DwritePanoseArmStyle* {.size: 4.} = enum
    dwritePanoseArmStyleAny = 0
    dwritePanoseArmStyleNoFit = 1
    dwritePanoseArmStyleStraightArmsHorizontal = 2
    dwritePanoseArmStyleStraightArmsWedge = 3
    dwritePanoseArmStyleStraightArmsVertical = 4
    dwritePanoseArmStyleStraightArmsSingleSerif = 5
    dwritePanoseArmStyleStraightArmsDoubleSerif = 6
    dwritePanoseArmStyleNonstraightArmsHorizontal = 7
    dwritePanoseArmStyleNonstraightArmsWedge = 8
    dwritePanoseArmStyleNonstraightArmsVertical = 9
    dwritePanoseArmStyleNonstraightArmsSingleSerif = 10
    dwritePanoseArmStyleNonstraightArmsDoubleSerif = 11
  DwritePanoseLetterform* {.size: 4.} = enum
    dwritePanoseLetterformAny = 0
    dwritePanoseLetterformNoFit = 1
    dwritePanoseLetterformNormalContact = 2
    dwritePanoseLetterformNormalWeighted = 3
    dwritePanoseLetterformNormalBoxed = 4
    dwritePanoseLetterformNormalFlattened = 5
    dwritePanoseLetterformNormalRounded = 6
    dwritePanoseLetterformNormalOffCenter = 7
    dwritePanoseLetterformNormalSquare = 8
    dwritePanoseLetterformObliqueContact = 9
    dwritePanoseLetterformObliqueWeighted = 10
    dwritePanoseLetterformObliqueBoxed = 11
    dwritePanoseLetterformObliqueFlattened = 12
    dwritePanoseLetterformObliqueRounded = 13
    dwritePanoseLetterformObliqueOffCenter = 14
    dwritePanoseLetterformObliqueSquare = 15
  DwritePanoseMidline* {.size: 4.} = enum
    dwritePanoseMidlineAny = 0
    dwritePanoseMidlineNoFit = 1
    dwritePanoseMidlineStandardTrimmed = 2
    dwritePanoseMidlineStandardPointed = 3
    dwritePanoseMidlineStandardSerifed = 4
    dwritePanoseMidlineHighTrimmed = 5
    dwritePanoseMidlineHighPointed = 6
    dwritePanoseMidlineHighSerifed = 7
    dwritePanoseMidlineConstantTrimmed = 8
    dwritePanoseMidlineConstantPointed = 9
    dwritePanoseMidlineConstantSerifed = 10
    dwritePanoseMidlineLowTrimmed = 11
    dwritePanoseMidlineLowPointed = 12
    dwritePanoseMidlineLowSerifed = 13
  DwritePanoseXheight* {.size: 4.} = enum
    dwritePanoseXheightAny = 0
    dwritePanoseXheightNoFit = 1
    dwritePanoseXheightConstantSmall = 2
    dwritePanoseXheightConstantStandard = 3
    dwritePanoseXheightConstantLarge = 4
    dwritePanoseXheightDuckingSmall = 5
    dwritePanoseXheightDuckingStandard = 6
    dwritePanoseXheightDuckingLarge = 7
  DwritePanoseToolKind* {.size: 4.} = enum
    dwritePanoseToolKindAny = 0
    dwritePanoseToolKindNoFit = 1
    dwritePanoseToolKindFlatNib = 2
    dwritePanoseToolKindPressurePoint = 3
    dwritePanoseToolKindEngraved = 4
    dwritePanoseToolKindBall = 5
    dwritePanoseToolKindBrush = 6
    dwritePanoseToolKindRough = 7
    dwritePanoseToolKindFeltPenBrushTip = 8
    dwritePanoseToolKindWildBrush = 9
  DwritePanoseSpacing* {.size: 4.} = enum
    dwritePanoseSpacingAny = 0
    dwritePanoseSpacingNoFit = 1
    dwritePanoseSpacingProportionalSpaced = 2
    dwritePanoseSpacingMonospaced = 3
  DwritePanoseAspectRatio* {.size: 4.} = enum
    dwritePanoseAspectRatioAny = 0
    dwritePanoseAspectRatioNoFit = 1
    dwritePanoseAspectRatioVeryCondensed = 2
    dwritePanoseAspectRatioCondensed = 3
    dwritePanoseAspectRatioNormal = 4
    dwritePanoseAspectRatioExpanded = 5
    dwritePanoseAspectRatioVeryExpanded = 6
  DwritePanoseScriptTopology* {.size: 4.} = enum
    dwritePanoseScriptTopologyAny = 0
    dwritePanoseScriptTopologyNoFit = 1
    dwritePanoseScriptTopologyRomanDisconnected = 2
    dwritePanoseScriptTopologyRomanTrailing = 3
    dwritePanoseScriptTopologyRomanConnected = 4
    dwritePanoseScriptTopologyCursiveDisconnected = 5
    dwritePanoseScriptTopologyCursiveTrailing = 6
    dwritePanoseScriptTopologyCursiveConnected = 7
    dwritePanoseScriptTopologyBlackletterDisconnected = 8
    dwritePanoseScriptTopologyBlackletterTrailing = 9
    dwritePanoseScriptTopologyBlackletterConnected = 10
  DwritePanoseScriptForm* {.size: 4.} = enum
    dwritePanoseScriptFormAny = 0
    dwritePanoseScriptFormNoFit = 1
    dwritePanoseScriptFormUprightNoWrapping = 2
    dwritePanoseScriptFormUprightSomeWrapping = 3
    dwritePanoseScriptFormUprightMoreWrapping = 4
    dwritePanoseScriptFormUprightExtremeWrapping = 5
    dwritePanoseScriptFormObliqueNoWrapping = 6
    dwritePanoseScriptFormObliqueSomeWrapping = 7
    dwritePanoseScriptFormObliqueMoreWrapping = 8
    dwritePanoseScriptFormObliqueExtremeWrapping = 9
    dwritePanoseScriptFormExaggeratedNoWrapping = 10
    dwritePanoseScriptFormExaggeratedSomeWrapping = 11
    dwritePanoseScriptFormExaggeratedMoreWrapping = 12
    dwritePanoseScriptFormExaggeratedExtremeWrapping = 13
  DwritePanoseFinials* {.size: 4.} = enum
    dwritePanoseFinialsAny = 0
    dwritePanoseFinialsNoFit = 1
    dwritePanoseFinialsNoneNoLoops = 2
    dwritePanoseFinialsNoneClosedLoops = 3
    dwritePanoseFinialsNoneOpenLoops = 4
    dwritePanoseFinialsSharpNoLoops = 5
    dwritePanoseFinialsSharpClosedLoops = 6
    dwritePanoseFinialsSharpOpenLoops = 7
    dwritePanoseFinialsTaperedNoLoops = 8
    dwritePanoseFinialsTaperedClosedLoops = 9
    dwritePanoseFinialsTaperedOpenLoops = 10
    dwritePanoseFinialsRoundNoLoops = 11
    dwritePanoseFinialsRoundClosedLoops = 12
    dwritePanoseFinialsRoundOpenLoops = 13
  DwritePanoseXascent* {.size: 4.} = enum
    dwritePanoseXascentAny = 0
    dwritePanoseXascentNoFit = 1
    dwritePanoseXascentVeryLow = 2
    dwritePanoseXascentLow = 3
    dwritePanoseXascentMedium = 4
    dwritePanoseXascentHigh = 5
    dwritePanoseXascentVeryHigh = 6
  DwritePanoseDecorativeClass* {.size: 4.} = enum
    dwritePanoseDecorativeClassAny = 0
    dwritePanoseDecorativeClassNoFit = 1
    dwritePanoseDecorativeClassDerivative = 2
    dwritePanoseDecorativeClassNonstandardTopology = 3
    dwritePanoseDecorativeClassNonstandardElements = 4
    dwritePanoseDecorativeClassNonstandardAspect = 5
    dwritePanoseDecorativeClassInitials = 6
    dwritePanoseDecorativeClassCartoon = 7
    dwritePanoseDecorativeClassPictureStems = 8
    dwritePanoseDecorativeClassOrnamented = 9
    dwritePanoseDecorativeClassTextAndBackground = 10
    dwritePanoseDecorativeClassCollage = 11
    dwritePanoseDecorativeClassMontage = 12
  DwritePanoseAspect* {.size: 4.} = enum
    dwritePanoseAspectAny = 0
    dwritePanoseAspectNoFit = 1
    dwritePanoseAspectSuperCondensed = 2
    dwritePanoseAspectVeryCondensed = 3
    dwritePanoseAspectCondensed = 4
    dwritePanoseAspectNormal = 5
    dwritePanoseAspectExtended = 6
    dwritePanoseAspectVeryExtended = 7
    dwritePanoseAspectSuperExtended = 8
    dwritePanoseAspectMonospaced = 9
  DwritePanoseFill* {.size: 4.} = enum
    dwritePanoseFillAny = 0
    dwritePanoseFillNoFit = 1
    dwritePanoseFillStandardSolidFill = 2
    dwritePanoseFillNoFill = 3
    dwritePanoseFillPatternedFill = 4
    dwritePanoseFillComplexFill = 5
    dwritePanoseFillShapedFill = 6
    dwritePanoseFillDrawnDistressed = 7
  DwritePanoseLining* {.size: 4.} = enum
    dwritePanoseLiningAny = 0
    dwritePanoseLiningNoFit = 1
    dwritePanoseLiningNone = 2
    dwritePanoseLiningInline = 3
    dwritePanoseLiningOutline = 4
    dwritePanoseLiningEngraved = 5
    dwritePanoseLiningShadow = 6
    dwritePanoseLiningRelief = 7
    dwritePanoseLiningBackdrop = 8
  DwritePanoseDecorativeTopology* {.size: 4.} = enum
    dwritePanoseDecorativeTopologyAny = 0
    dwritePanoseDecorativeTopologyNoFit = 1
    dwritePanoseDecorativeTopologyStandard = 2
    dwritePanoseDecorativeTopologySquare = 3
    dwritePanoseDecorativeTopologyMultipleSegment = 4
    dwritePanoseDecorativeTopologyArtDeco = 5
    dwritePanoseDecorativeTopologyUnevenWeighting = 6
    dwritePanoseDecorativeTopologyDiverseArms = 7
    dwritePanoseDecorativeTopologyDiverseForms = 8
    dwritePanoseDecorativeTopologyLombardicForms = 9
    dwritePanoseDecorativeTopologyUpperCaseInLowerCase = 10
    dwritePanoseDecorativeTopologyImpliedTopology = 11
    dwritePanoseDecorativeTopologyHorseshoeEAndA = 12
    dwritePanoseDecorativeTopologyCursive = 13
    dwritePanoseDecorativeTopologyBlackletter = 14
    dwritePanoseDecorativeTopologySwashVariance = 15
  DwritePanoseCharacterRanges* {.size: 4.} = enum
    dwritePanoseCharacterRangesAny = 0
    dwritePanoseCharacterRangesNoFit = 1
    dwritePanoseCharacterRangesExtendedCollection = 2
    dwritePanoseCharacterRangesLiterals = 3
    dwritePanoseCharacterRangesNoLowerCase = 4
    dwritePanoseCharacterRangesSmallCaps = 5
  DwritePanoseSymbolKind* {.size: 4.} = enum
    dwritePanoseSymbolKindAny = 0
    dwritePanoseSymbolKindNoFit = 1
    dwritePanoseSymbolKindMontages = 2
    dwritePanoseSymbolKindPictures = 3
    dwritePanoseSymbolKindShapes = 4
    dwritePanoseSymbolKindScientific = 5
    dwritePanoseSymbolKindMusic = 6
    dwritePanoseSymbolKindExpert = 7
    dwritePanoseSymbolKindPatterns = 8
    dwritePanoseSymbolKindBoarders = 9
    dwritePanoseSymbolKindIcons = 10
    dwritePanoseSymbolKindLogos = 11
    dwritePanoseSymbolKindIndustrySpecific = 12
  DwritePanoseSymbolAspectRatio* {.size: 4.} = enum
    dwritePanoseSymbolAspectRatioAny = 0
    dwritePanoseSymbolAspectRatioNoFit = 1
    dwritePanoseSymbolAspectRatioNoWidth = 2
    dwritePanoseSymbolAspectRatioExceptionallyWide = 3
    dwritePanoseSymbolAspectRatioSuperWide = 4
    dwritePanoseSymbolAspectRatioVeryWide = 5
    dwritePanoseSymbolAspectRatioWide = 6
    dwritePanoseSymbolAspectRatioNormal = 7
    dwritePanoseSymbolAspectRatioNarrow = 8
    dwritePanoseSymbolAspectRatioVeryNarrow = 9
  DwriteOutlineThreshold* {.size: 4.} = enum
    dwriteOutlineThresholdAntialiased = 0
    dwriteOutlineThresholdAliased = 1
  DwriteBaseline* {.size: 4.} = enum
    dwriteBaselineDefault = 0
    dwriteBaselineRoman = 1
    dwriteBaselineCentral = 2
    dwriteBaselineMath = 3
    dwriteBaselineHanging = 4
    dwriteBaselineIdeographicBottom = 5
    dwriteBaselineIdeographicTop = 6
    dwriteBaselineMinimum = 7
    dwriteBaselineMaximum = 8
  DwriteVerticalGlyphOrientation* {.size: 4.} = enum
    dwriteVerticalGlyphOrientationDefault = 0
    dwriteVerticalGlyphOrientationStacked = 1
  DwriteGlyphOrientationAngle* {.size: 4.} = enum
    dwriteGlyphOrientationAngle0Degrees = 0
    dwriteGlyphOrientationAngle90Degrees = 1
    dwriteGlyphOrientationAngle180Degrees = 2
    dwriteGlyphOrientationAngle270Degrees = 3
  DwriteTextAntialiasMode* {.size: 4.} = enum
    dwriteTextAntialiasModeCleartype = 0
    dwriteTextAntialiasModeGrayscale = 1
  DwriteOpticalAlignment* {.size: 4.} = enum
    dwriteOpticalAlignmentNone = 0
    dwriteOpticalAlignmentNoSideBearings = 1
  DwriteGridFitMode* {.size: 4.} = enum
    dwriteGridFitModeDefault = 0
    dwriteGridFitModeDisabled = 1
    dwriteGridFitModeEnabled = 2
  DwriteFontPropertyId* {.size: 4.} = enum
    dwriteFontPropertyIdNone = 0
    dwriteFontPropertyIdWeightStretchStyleFamilyName = 1
    dwriteFontPropertyIdTypographicFamilyName = 2
    dwriteFontPropertyIdWeightStretchStyleFaceName = 3
    dwriteFontPropertyIdFullName = 4
    dwriteFontPropertyIdWin32FamilyName = 5
    dwriteFontPropertyIdPostscriptName = 6
    dwriteFontPropertyIdDesignScriptLanguageTag = 7
    dwriteFontPropertyIdSupportedScriptLanguageTag = 8
    dwriteFontPropertyIdSemanticTag = 9
    dwriteFontPropertyIdWeight = 10
    dwriteFontPropertyIdStretch = 11
    dwriteFontPropertyIdStyle = 12
    dwriteFontPropertyIdTypographicFaceName = 13
    dwriteFontPropertyIdTotalRs3 = 14
  DwriteLocality* {.size: 4.} = enum
    dwriteLocalityRemote = 0
    dwriteLocalityPartial = 1
    dwriteLocalityLocal = 2
  DwriteRenderingMode1* {.size: 4.} = enum
    dwriteRenderingMode1Default = 0
    dwriteRenderingMode1Aliased = 1
    dwriteRenderingMode1GdiClassic = 2
    dwriteRenderingMode1GdiNatural = 3
    dwriteRenderingMode1Natural = 4
    dwriteRenderingMode1NaturalSymmetric = 5
    dwriteRenderingMode1Outline = 6
    dwriteRenderingMode1NaturalSymmetricDownsampled = 7
  DwriteFontLineGapUsage* {.size: 4.} = enum
    dwriteFontLineGapUsageDefault = 0
    dwriteFontLineGapUsageDisabled = 1
    dwriteFontLineGapUsageEnabled = 2
  DwriteContainerType* {.size: 4.} = enum
    dwriteContainerTypeUnknown = 0
    dwriteContainerTypeWoff = 1
    dwriteContainerTypeWoff2 = 2
  DwriteFontFamilyModel* {.size: 4.} = enum
    dwriteFontFamilyModelTypographic = 0
    dwriteFontFamilyModelWeightStretchStyle = 1
  DwriteAutomaticFontAxes* = distinct int32
  DwriteFontAxisAttributes* = distinct int32
  DwriteFontSourceType* {.size: 4.} = enum
    dwriteFontSourceTypeUnknown = 0
    dwriteFontSourceTypePerMachine = 1
    dwriteFontSourceTypePerUser = 2
    dwriteFontSourceTypeAppxPackage = 3
    dwriteFontSourceTypeRemoteFontProvider = 4
defineTag(DwriteFontAxisTag)
defineFlags(DwriteGlyphImageFormats)
defineFlags(DwriteFontSimulations)
defineTag(DwriteFontFeatureTag)
defineFlags(DwriteScriptShapes)
defineFlags(DwriteAutomaticFontAxes)
defineFlags(DwriteFontAxisAttributes)
const
  dwriteFontAxisTagWeight* = DwriteFontAxisTag 1952999287
  dwriteFontAxisTagWidth* = DwriteFontAxisTag 1752458359
  dwriteFontAxisTagSlant* = DwriteFontAxisTag 1953393779
  dwriteFontAxisTagOpticalSize* = DwriteFontAxisTag 2054385775
  dwriteFontAxisTagItalic* = DwriteFontAxisTag 1818326121
  dwriteGlyphImageFormatsNone* = DwriteGlyphImageFormats 0
  dwriteGlyphImageFormatsTruetype* = DwriteGlyphImageFormats 1
  dwriteGlyphImageFormatsCff* = DwriteGlyphImageFormats 2
  dwriteGlyphImageFormatsColr* = DwriteGlyphImageFormats 4
  dwriteGlyphImageFormatsSvg* = DwriteGlyphImageFormats 8
  dwriteGlyphImageFormatsPng* = DwriteGlyphImageFormats 16
  dwriteGlyphImageFormatsJpeg* = DwriteGlyphImageFormats 32
  dwriteGlyphImageFormatsTiff* = DwriteGlyphImageFormats 64
  dwriteGlyphImageFormatsPremultipliedB8g8r8a8* = DwriteGlyphImageFormats 128
  dwriteFontFileTypeTruetypeCollection* = DwriteFontFileType 3
  dwriteFontFaceTypeTruetypeCollection* = DwriteFontFaceType 2
  dwriteFontSimulationsNone* = DwriteFontSimulations 0
  dwriteFontSimulationsBold* = DwriteFontSimulations 1
  dwriteFontSimulationsOblique* = DwriteFontSimulations 2
  dwriteFontStretchMedium* = DwriteFontStretch 5
  dwriteInformationalStringPreferredFamilyNames* = DwriteInformationalStringId 13
  dwriteInformationalStringPreferredSubfamilyNames* = DwriteInformationalStringId 14
  dwriteInformationalStringWwsFamilyName* = DwriteInformationalStringId 19
  dwriteRenderingModeCleartypeGdiClassic* = DwriteRenderingMode 2
  dwriteRenderingModeCleartypeGdiNatural* = DwriteRenderingMode 3
  dwriteRenderingModeCleartypeNatural* = DwriteRenderingMode 4
  dwriteRenderingModeCleartypeNaturalSymmetric* = DwriteRenderingMode 5
  dwriteFontFeatureTagAlternativeFractions* = DwriteFontFeatureTag 1668441697
  dwriteFontFeatureTagPetiteCapitalsFromCapitals* = DwriteFontFeatureTag 1668297315
  dwriteFontFeatureTagSmallCapitalsFromCapitals* = DwriteFontFeatureTag 1668493923
  dwriteFontFeatureTagContextualAlternates* = DwriteFontFeatureTag 1953259875
  dwriteFontFeatureTagCaseSensitiveForms* = DwriteFontFeatureTag 1702060387
  dwriteFontFeatureTagGlyphCompositionDecomposition* = DwriteFontFeatureTag 1886217059
  dwriteFontFeatureTagContextualLigatures* = DwriteFontFeatureTag 1734962275
  dwriteFontFeatureTagCapitalSpacing* = DwriteFontFeatureTag 1886613603
  dwriteFontFeatureTagContextualSwash* = DwriteFontFeatureTag 1752658787
  dwriteFontFeatureTagCursivePositioning* = DwriteFontFeatureTag 1936880995
  dwriteFontFeatureTagDefault* = DwriteFontFeatureTag 1953261156
  dwriteFontFeatureTagDiscretionaryLigatures* = DwriteFontFeatureTag 1734962276
  dwriteFontFeatureTagExpertForms* = DwriteFontFeatureTag 1953527909
  dwriteFontFeatureTagFractions* = DwriteFontFeatureTag 1667330662
  dwriteFontFeatureTagFullWidth* = DwriteFontFeatureTag 1684633446
  dwriteFontFeatureTagHalfForms* = DwriteFontFeatureTag 1718378856
  dwriteFontFeatureTagHalantForms* = DwriteFontFeatureTag 1852596584
  dwriteFontFeatureTagAlternateHalfWidth* = DwriteFontFeatureTag 1953259880
  dwriteFontFeatureTagHistoricalForms* = DwriteFontFeatureTag 1953720680
  dwriteFontFeatureTagHorizontalKanaAlternates* = DwriteFontFeatureTag 1634626408
  dwriteFontFeatureTagHistoricalLigatures* = DwriteFontFeatureTag 1734962280
  dwriteFontFeatureTagHalfWidth* = DwriteFontFeatureTag 1684633448
  dwriteFontFeatureTagHojoKanjiForms* = DwriteFontFeatureTag 1869246312
  dwriteFontFeatureTagJis04Forms* = DwriteFontFeatureTag 875589738
  dwriteFontFeatureTagJis78Forms* = DwriteFontFeatureTag 943157354
  dwriteFontFeatureTagJis83Forms* = DwriteFontFeatureTag 859336810
  dwriteFontFeatureTagJis90Forms* = DwriteFontFeatureTag 809070698
  dwriteFontFeatureTagKerning* = DwriteFontFeatureTag 1852990827
  dwriteFontFeatureTagStandardLigatures* = DwriteFontFeatureTag 1634167148
  dwriteFontFeatureTagLiningFigures* = DwriteFontFeatureTag 1836412524
  dwriteFontFeatureTagLocalizedForms* = DwriteFontFeatureTag 1818455916
  dwriteFontFeatureTagMarkPositioning* = DwriteFontFeatureTag 1802658157
  dwriteFontFeatureTagMathematicalGreek* = DwriteFontFeatureTag 1802659693
  dwriteFontFeatureTagMarkToMarkPositioning* = DwriteFontFeatureTag 1802333037
  dwriteFontFeatureTagAlternateAnnotationForms* = DwriteFontFeatureTag 1953259886
  dwriteFontFeatureTagNlcKanjiForms* = DwriteFontFeatureTag 1801677934
  dwriteFontFeatureTagOldStyleFigures* = DwriteFontFeatureTag 1836412527
  dwriteFontFeatureTagOrdinals* = DwriteFontFeatureTag 1852076655
  dwriteFontFeatureTagProportionalAlternateWidth* = DwriteFontFeatureTag 1953259888
  dwriteFontFeatureTagPetiteCapitals* = DwriteFontFeatureTag 1885430640
  dwriteFontFeatureTagProportionalFigures* = DwriteFontFeatureTag 1836412528
  dwriteFontFeatureTagProportionalWidths* = DwriteFontFeatureTag 1684633456
  dwriteFontFeatureTagQuarterWidths* = DwriteFontFeatureTag 1684633457
  dwriteFontFeatureTagRequiredLigatures* = DwriteFontFeatureTag 1734962290
  dwriteFontFeatureTagRubyNotationForms* = DwriteFontFeatureTag 2036495730
  dwriteFontFeatureTagStylisticAlternates* = DwriteFontFeatureTag 1953259891
  dwriteFontFeatureTagScientificInferiors* = DwriteFontFeatureTag 1718511987
  dwriteFontFeatureTagSmallCapitals* = DwriteFontFeatureTag 1885564275
  dwriteFontFeatureTagSimplifiedForms* = DwriteFontFeatureTag 1819307379
  dwriteFontFeatureTagStylisticSet1* = DwriteFontFeatureTag 825258867
  dwriteFontFeatureTagStylisticSet2* = DwriteFontFeatureTag 842036083
  dwriteFontFeatureTagStylisticSet3* = DwriteFontFeatureTag 858813299
  dwriteFontFeatureTagStylisticSet4* = DwriteFontFeatureTag 875590515
  dwriteFontFeatureTagStylisticSet5* = DwriteFontFeatureTag 892367731
  dwriteFontFeatureTagStylisticSet6* = DwriteFontFeatureTag 909144947
  dwriteFontFeatureTagStylisticSet7* = DwriteFontFeatureTag 925922163
  dwriteFontFeatureTagStylisticSet8* = DwriteFontFeatureTag 942699379
  dwriteFontFeatureTagStylisticSet9* = DwriteFontFeatureTag 959476595
  dwriteFontFeatureTagStylisticSet10* = DwriteFontFeatureTag 808547187
  dwriteFontFeatureTagStylisticSet11* = DwriteFontFeatureTag 825324403
  dwriteFontFeatureTagStylisticSet12* = DwriteFontFeatureTag 842101619
  dwriteFontFeatureTagStylisticSet13* = DwriteFontFeatureTag 858878835
  dwriteFontFeatureTagStylisticSet14* = DwriteFontFeatureTag 875656051
  dwriteFontFeatureTagStylisticSet15* = DwriteFontFeatureTag 892433267
  dwriteFontFeatureTagStylisticSet16* = DwriteFontFeatureTag 909210483
  dwriteFontFeatureTagStylisticSet17* = DwriteFontFeatureTag 925987699
  dwriteFontFeatureTagStylisticSet18* = DwriteFontFeatureTag 942764915
  dwriteFontFeatureTagStylisticSet19* = DwriteFontFeatureTag 959542131
  dwriteFontFeatureTagStylisticSet20* = DwriteFontFeatureTag 808612723
  dwriteFontFeatureTagSubscript* = DwriteFontFeatureTag 1935832435
  dwriteFontFeatureTagSuperscript* = DwriteFontFeatureTag 1936749939
  dwriteFontFeatureTagSwash* = DwriteFontFeatureTag 1752397683
  dwriteFontFeatureTagTitling* = DwriteFontFeatureTag 1819568500
  dwriteFontFeatureTagTraditionalNameForms* = DwriteFontFeatureTag 1835101812
  dwriteFontFeatureTagTabularFigures* = DwriteFontFeatureTag 1836412532
  dwriteFontFeatureTagTraditionalForms* = DwriteFontFeatureTag 1684107892
  dwriteFontFeatureTagThirdWidths* = DwriteFontFeatureTag 1684633460
  dwriteFontFeatureTagUnicase* = DwriteFontFeatureTag 1667853941
  dwriteFontFeatureTagVerticalWriting* = DwriteFontFeatureTag 1953654134
  dwriteFontFeatureTagVerticalAlternatesAndRotation* = DwriteFontFeatureTag 846492278
  dwriteFontFeatureTagSlashedZero* = DwriteFontFeatureTag 1869768058
  dwriteScriptShapesDefault* = DwriteScriptShapes 0
  dwriteScriptShapesNoVisual* = DwriteScriptShapes 1
  dwritePanoseFamilyPictorial* = DwritePanoseFamily 5
  dwritePanoseSerifStyleBone* = DwritePanoseSerifStyle 8
  dwritePanoseSerifStylePerpSans* = DwritePanoseSerifStyle 13
  dwritePanoseWeightNord* = DwritePanoseWeight 11
  dwritePanoseArmStyleStraightArmsHorz* = DwritePanoseArmStyle 2
  dwritePanoseArmStyleStraightArmsVert* = DwritePanoseArmStyle 4
  dwritePanoseArmStyleBentArmsHorz* = DwritePanoseArmStyle 7
  dwritePanoseArmStyleBentArmsWedge* = DwritePanoseArmStyle 8
  dwritePanoseArmStyleBentArmsVert* = DwritePanoseArmStyle 9
  dwritePanoseArmStyleBentArmsSingleSerif* = DwritePanoseArmStyle 10
  dwritePanoseArmStyleBentArmsDoubleSerif* = DwritePanoseArmStyle 11
  dwritePanoseXheightConstantStd* = DwritePanoseXheight 3
  dwritePanoseXheightDuckingStd* = DwritePanoseXheight 6
  dwriteFontPropertyIdFamilyName* = DwriteFontPropertyId 1
  dwriteFontPropertyIdPreferredFamilyName* = DwriteFontPropertyId 2
  dwriteFontPropertyIdFaceName* = DwriteFontPropertyId 3
  dwriteFontPropertyIdTotal* = DwriteFontPropertyId 13
  dwriteAutomaticFontAxesNone* = DwriteAutomaticFontAxes 0
  dwriteAutomaticFontAxesOpticalSize* = DwriteAutomaticFontAxes 1
  dwriteFontAxisAttributesNone* = DwriteFontAxisAttributes 0
  dwriteFontAxisAttributesVariable* = DwriteFontAxisAttributes 1
  dwriteFontAxisAttributesHidden* = DwriteFontAxisAttributes 2
type
  IDwriteLocalizedStrings* = object of IUnknown # {08256209-099a-4b34-b86d-c22b110e7771}
    discard
  IDwriteFontFileStream* = object of IUnknown # {6d4865fe-0ab8-4d91-8f62-5dd6be34a3e0}
    discard
  IDwriteFontFileLoader* = object of IUnknown # {727cad4e-d6af-4c9e-8a08-d695b11caa49}
    discard
  IDwriteFontFile* = object of IUnknown # {739d886a-cef5-47dc-8769-1a8b41bebbb0}
    discard
  IDwriteRenderingParams* = object of IUnknown # {2f0da53a-2add-47cd-82ee-d9ec34688e75}
    discard
  IDwriteFontFace* = object of IUnknown # {5f49804d-7024-4d43-bfa9-d25984f53849}
    discard
  IDwriteFont* = object of IUnknown # {acd16696-8c14-4f5d-877e-fe3fc1d32737}
    discard
  IDwriteFontList* = object of IUnknown # {1a0d8438-1d97-4ec1-aef9-a2fb86ed6acb}
    discard
  IDwriteFontFamily* = object of IDwriteFontList # {da20d8ef-812a-4c43-9802-62ec4abd7add}
    discard
  IDwriteFontCollection* = object of IUnknown # {a84cee02-3eea-4eee-a827-87c1a02a0fcc}
    discard
  IDwriteFontFileEnumerator* = object of IUnknown # {72755049-5ff7-435d-8348-4be97cfa6c7c}
    discard
  IDwriteFontCollectionLoader* = object of IUnknown # {cca920e4-52f0-492b-bfa8-29c72ee0a468}
    discard
  IDwritePixelSnapping* = object of IUnknown # {eaf3a2da-ecf4-4d24-b644-b34f6842024b}
    discard
  IDwriteTextRenderer* = object of IDwritePixelSnapping # {ef8a8135-5cc6-45fe-8825-c5a0724eb819}
    discard
  IDwriteInlineObject* = object of IUnknown # {8339fde3-106f-47ab-8373-1c6295eb10b3}
    discard
  IDwriteTextFormat* = object of IUnknown # {9c906818-31d7-4fd3-a151-7c5e225db55a}
    discard
  IDwriteTypography* = object of IUnknown # {55f1112b-1dc2-4b3c-9541-f46894ed85b6}
    discard
  IDwriteBitmapRenderTarget* = object of IUnknown # {5e5a32a3-8dff-4773-9ff6-0696eab77267}
    discard
  IDwriteGdiInterop* = object of IUnknown # {1edd9491-9853-4299-898f-6432983b6f3a}
    discard
  IDwriteTextLayout* = object of IDwriteTextFormat # {53737037-6d14-410b-9bfe-0b182bb70961}
    discard
  IDwriteNumberSubstitution* = object of IUnknown # {14885cc9-bab0-4f90-b6ed-5c366a2cd03d}
    discard
  IDwriteTextAnalysisSource* = object of IUnknown # {688e1a58-5094-47c8-adc8-fbcea60ae92b}
    discard
  IDwriteTextAnalysisSink* = object of IUnknown # {5810cd44-0ca0-4701-b3fa-bec5182ae4f6}
    discard
  IDwriteTextAnalyzer* = object of IUnknown # {b7e6163e-7f46-43b4-84b3-e4e6249c365d}
    discard
  IDwriteGlyphRunAnalysis* = object of IUnknown # {7d97dbf7-e085-42d4-81e3-6a883bded118}
    discard
  IDwriteFactory* = object of IUnknown # {b859ee5a-d838-4b5b-a2e8-1adc7d93db48}
    discard
  # DwriteFontFaceType* = int32 # enum
  WtBOOL = int32
  # DwriteFontFileType* = int32 # enum
  # DwriteFontSimulations* = uint32 # enum
  DwriteFontMetrics* {.pure, byref.} = object
    designUnitsPerEm*: uint16
    ascent*: uint16
    descent*: uint16
    lineGap*: int16
    capHeight*: uint16
    xHeight*: uint16
    underlinePosition*: int16
    underlineThickness*: uint16
    strikethroughPosition*: int16
    strikethroughThickness*: uint16
  DwriteGlyphMetrics* {.pure, byref.} = object
    leftSideBearing*: int32
    advanceWidth*: uint32
    rightSideBearing*: int32
    topSideBearing*: int32
    advanceHeight*: uint32
    bottomSideBearing*: int32
    verticalOriginY*: int32
  DwriteGlyphOffset* {.pure, byref.} = object
    advanceOffset*: float32
    ascenderOffset*: float32
  # DwriteMeasuringMode* = int32 # enum
  # DwritePixelGeometry* = int32 # enum
  # DwriteRenderingMode* = int32 # enum
  DwriteMatrix* {.pure, byref.} = object
    m11*: float32
    m12*: float32
    m21*: float32
    m22*: float32
    dx*: float32
    dy*: float32
  DwriteGlyphRun* {.pure, byref.} = object
    fontFace*: ptr IDwriteFontFace
    fontEmSize*: float32
    glyphCount*: uint32
    glyphIndices*: ptr uint16
    glyphAdvances*: ptr float32
    glyphOffsets*: ptr DwriteGlyphOffset
    isSideways*: WtBOOL
    bidiLevel*: uint32
  WtPWSTR = ptr UncheckedArray[uint16]
  DwriteGlyphRunDescription* {.pure, byref.} = object
    localeName*: WtPWSTR
    string*: WtPWSTR
    stringLength*: uint32
    clusterMap*: ptr uint16
    textPosition*: uint32

