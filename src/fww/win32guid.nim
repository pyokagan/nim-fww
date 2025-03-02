{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

type
  WinGuid* {.pure, bycopy.} = object
    Data1*: uint32
    Data2*: uint16
    Data3*: uint16
    Data4*: array[8, uint8]

func `==`*(a, b: WinGuid): bool {.inline, raises: [].} =
  a.Data1 == b.Data1 and a.Data2 == b.Data2 and a.Data3 == b.Data3 and (a.Data4[0] == b.Data4[0] and a.Data4[1] == b.Data4[1] and a.Data4[2] == b.Data4[2] and a.Data4[3] == b.Data4[3] and a.Data4[4] == b.Data4[4] and a.Data4[5] == b.Data4[5] and a.Data4[6] == b.Data4[6] and a.Data4[7] == b.Data4[7])
