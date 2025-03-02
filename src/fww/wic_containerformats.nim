type
  WicContainerFormat* = enum
    wicContainerFormatUnknown
    wicContainerFormatBmp
    wicContainerFormatPng
    wicContainerFormatIco
    wicContainerFormatJpeg
    wicContainerFormatTiff
    wicContainerFormatGif
    wicContainerFormatWmp
    wicContainerFormatDds
    wicContainerFormatAdng
    wicContainerFormatHeif
    wicContainerFormatWebp
    wicContainerFormatRaw

const
  WicContainerFormatGuids*: array[WicContainerFormat, WinGuid] = [
    wicContainerFormatUnknown: WinGuid(),
    wicContainerFormatBmp: WinGuid(Data1: 0x0af1d87e'u32, Data2: 0xfcfe'u16, Data3: 0x4188'u16, Data4: [0xbd'u8, 0xeb'u8, 0xa7'u8, 0x90'u8, 0x64'u8, 0x71'u8, 0xcb'u8, 0xe3'u8]),
    wicContainerFormatPng: WinGuid(Data1: 0x1b7cfaf4'u32, Data2: 0x713f'u16, Data3: 0x473c'u16, Data4: [0xbb'u8, 0xcd'u8, 0x61'u8, 0x37'u8, 0x42'u8, 0x5f'u8, 0xae'u8, 0xaf'u8]),
    wicContainerFormatIco: WinGuid(Data1: 0xa3a860c4'u32, Data2: 0x338f'u16, Data3: 0x4c17'u16, Data4: [0x91'u8, 0x9a'u8, 0xfb'u8, 0xa4'u8, 0xb5'u8, 0x62'u8, 0x8f'u8, 0x21'u8]),
    wicContainerFormatJpeg: WinGuid(Data1: 0x19e4a5aa'u32, Data2: 0x5662'u16, Data3: 0x4fc5'u16, Data4: [0xa0'u8, 0xc0'u8, 0x17'u8, 0x58'u8, 0x02'u8, 0x8e'u8, 0x10'u8, 0x57'u8]),
    wicContainerFormatTiff: WinGuid(Data1: 0x163bcc30'u32, Data2: 0xe2e9'u16, Data3: 0x4f0b'u16, Data4: [0x96'u8, 0x1d'u8, 0xa3'u8, 0xe9'u8, 0xfd'u8, 0xb7'u8, 0x88'u8, 0xa3'u8]),
    wicContainerFormatGif: WinGuid(Data1: 0x1f8a5601'u32, Data2: 0x7d4d'u16, Data3: 0x4cbd'u16, Data4: [0x9c'u8, 0x82'u8, 0x1b'u8, 0xc8'u8, 0xd4'u8, 0xee'u8, 0xb9'u8, 0xa5'u8]),
    wicContainerFormatWmp: WinGuid(Data1: 0x57a37caa'u32, Data2: 0x367a'u16, Data3: 0x4540'u16, Data4: [0x91'u8, 0x6b'u8, 0xf1'u8, 0x83'u8, 0xc5'u8, 0x09'u8, 0x3a'u8, 0x4b'u8]),
    wicContainerFormatDds: WinGuid(Data1: 0x9967cb95'u32, Data2: 0x2e85'u16, Data3: 0x4ac8'u16, Data4: [0x8c'u8, 0xa2'u8, 0x83'u8, 0xd7'u8, 0xcc'u8, 0xd4'u8, 0x25'u8, 0xc9'u8]),
    wicContainerFormatAdng: WinGuid(Data1: 0xf3ff6d0d'u32, Data2: 0x38c0'u16, Data3: 0x41c4'u16, Data4: [0xb1'u8, 0xfe'u8, 0x1f'u8, 0x38'u8, 0x24'u8, 0xf1'u8, 0x7b'u8, 0x84'u8]),
    wicContainerFormatHeif: WinGuid(Data1: 0xe1e62521'u32, Data2: 0x6787'u16, Data3: 0x405b'u16, Data4: [0xa3'u8, 0x39'u8, 0x50'u8, 0x07'u8, 0x15'u8, 0xb5'u8, 0x76'u8, 0x3f'u8]),
    wicContainerFormatWebp: WinGuid(Data1: 0xe094b0e2'u32, Data2: 0x67f2'u16, Data3: 0x45b3'u16, Data4: [0xb0'u8, 0xea'u8, 0x11'u8, 0x53'u8, 0x37'u8, 0xca'u8, 0x7c'u8, 0xf3'u8]),
    wicContainerFormatRaw: WinGuid(Data1: 0xfe99ce60'u32, Data2: 0xf19c'u16, Data3: 0x433c'u16, Data4: [0xa3'u8, 0xae'u8, 0x00'u8, 0xac'u8, 0xef'u8, 0xa9'u8, 0xca'u8, 0x21'u8]),
  ]
