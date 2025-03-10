type
  DxgiFormat* {.size: 4.} = enum
    dxgiFormatUnknown = 0
    dxgiFormatR32G32B32A32Typeless = 1
    dxgiFormatR32G32B32A32Float = 2
    dxgiFormatR32G32B32A32Uint = 3
    dxgiFormatR32G32B32A32Sint = 4
    dxgiFormatR32G32B32Typeless = 5
    dxgiFormatR32G32B32Float = 6
    dxgiFormatR32G32B32Uint = 7
    dxgiFormatR32G32B32Sint = 8
    dxgiFormatR16G16B16A16Typeless = 9
    dxgiFormatR16G16B16A16Float = 10
    dxgiFormatR16G16B16A16Unorm = 11
    dxgiFormatR16G16B16A16Uint = 12
    dxgiFormatR16G16B16A16Snorm = 13
    dxgiFormatR16G16B16A16Sint = 14
    dxgiFormatR32G32Typeless = 15
    dxgiFormatR32G32Float = 16
    dxgiFormatR32G32Uint = 17
    dxgiFormatR32G32Sint = 18
    dxgiFormatR32G8X24Typeless = 19
    dxgiFormatD32FloatS8X24Uint = 20
    dxgiFormatR32FloatX8X24Typeless = 21
    dxgiFormatX32TypelessG8X24Uint = 22
    dxgiFormatR10G10B10A2Typeless = 23
    dxgiFormatR10G10B10A2Unorm = 24
    dxgiFormatR10G10B10A2Uint = 25
    dxgiFormatR11G11B10Float = 26
    dxgiFormatR8G8B8A8Typeless = 27
    dxgiFormatR8G8B8A8Unorm = 28
    dxgiFormatR8G8B8A8UnormSrgb = 29
    dxgiFormatR8G8B8A8Uint = 30
    dxgiFormatR8G8B8A8Snorm = 31
    dxgiFormatR8G8B8A8Sint = 32
    dxgiFormatR16G16Typeless = 33
    dxgiFormatR16G16Float = 34
    dxgiFormatR16G16Unorm = 35
    dxgiFormatR16G16Uint = 36
    dxgiFormatR16G16Snorm = 37
    dxgiFormatR16G16Sint = 38
    dxgiFormatR32Typeless = 39
    dxgiFormatD32Float = 40
    dxgiFormatR32Float = 41
    dxgiFormatR32Uint = 42
    dxgiFormatR32Sint = 43
    dxgiFormatR24G8Typeless = 44
    dxgiFormatD24UnormS8Uint = 45
    dxgiFormatR24UnormX8Typeless = 46
    dxgiFormatX24TypelessG8Uint = 47
    dxgiFormatR8G8Typeless = 48
    dxgiFormatR8G8Unorm = 49
    dxgiFormatR8G8Uint = 50
    dxgiFormatR8G8Snorm = 51
    dxgiFormatR8G8Sint = 52
    dxgiFormatR16Typeless = 53
    dxgiFormatR16Float = 54
    dxgiFormatD16Unorm = 55
    dxgiFormatR16Unorm = 56
    dxgiFormatR16Uint = 57
    dxgiFormatR16Snorm = 58
    dxgiFormatR16Sint = 59
    dxgiFormatR8Typeless = 60
    dxgiFormatR8Unorm = 61
    dxgiFormatR8Uint = 62
    dxgiFormatR8Snorm = 63
    dxgiFormatR8Sint = 64
    dxgiFormatA8Unorm = 65
    dxgiFormatR1Unorm = 66
    dxgiFormatR9G9B9E5Sharedexp = 67
    dxgiFormatR8G8B8G8Unorm = 68
    dxgiFormatG8R8G8B8Unorm = 69
    dxgiFormatBC1Typeless = 70
    dxgiFormatBC1Unorm = 71
    dxgiFormatBC1UnormSrgb = 72
    dxgiFormatBC2Typeless = 73
    dxgiFormatBC2Unorm = 74
    dxgiFormatBC2UnormSrgb = 75
    dxgiFormatBC3Typeless = 76
    dxgiFormatBC3Unorm = 77
    dxgiFormatBC3UnormSrgb = 78
    dxgiFormatBC4Typeless = 79
    dxgiFormatBC4Unorm = 80
    dxgiFormatBC4Snorm = 81
    dxgiFormatBC5Typeless = 82
    dxgiFormatBC5Unorm = 83
    dxgiFormatBC5Snorm = 84
    dxgiFormatB5G6R5Unorm = 85
    dxgiFormatB5G5R5A1Unorm = 86
    dxgiFormatB8G8R8A8Unorm = 87
    dxgiFormatB8G8R8X8Unorm = 88
    dxgiFormatR10G10B10XrBiasA2Unorm = 89
    dxgiFormatB8G8R8A8Typeless = 90
    dxgiFormatB8G8R8A8UnormSrgb = 91
    dxgiFormatB8G8R8X8Typeless = 92
    dxgiFormatB8G8R8X8UnormSrgb = 93
    dxgiFormatBC6HTypeless = 94
    dxgiFormatBC6HUF16 = 95
    dxgiFormatBC6HSF16 = 96
    dxgiFormatBC7Typeless = 97
    dxgiFormatBC7Unorm = 98
    dxgiFormatBC7UnormSrgb = 99
    dxgiFormatAyuv = 100
    dxgiFormatY410 = 101
    dxgiFormatY416 = 102
    dxgiFormatNV12 = 103
    dxgiFormatP010 = 104
    dxgiFormatP016 = 105
    dxgiFormat420Opaque = 106
    dxgiFormatYUY2 = 107
    dxgiFormatY210 = 108
    dxgiFormatY216 = 109
    dxgiFormatNV11 = 110
    dxgiFormatAI44 = 111
    dxgiFormatIA44 = 112
    dxgiFormatP8 = 113
    dxgiFormatA8P8 = 114
    dxgiFormatB4G4R4A4Unorm = 115
    dxgiFormatP208 = 130
    dxgiFormatV208 = 131
    dxgiFormatV408 = 132
    dxgiFormatSamplerFeedbackMinMipOpaque = 189
    dxgiFormatSamplerFeedbackMipRegionUsedOpaque = 190
