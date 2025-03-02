{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

type
  WinHandle* = distinct int
  WinInstance* = WinHandle
  WinResource* = WinHandle

const
  WinInvalidHandle* = WinHandle(-1)

func `==`*(x, y: WinHandle): bool {.borrow.}
func `<`*(x, y: WinHandle): bool {.borrow.}
func `<=`*(x, y: WinHandle): bool {.borrow.}

func isNil*(x: WinHandle): bool {.inline, raises: [].} =
  x.int == 0

func isInvalid*(x: WinHandle): bool {.inline, raises: [].} =
  x.int == -1
