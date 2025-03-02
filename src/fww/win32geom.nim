## Win32 foundational math types

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

type
  WinPoint* {.pure, bycopy.} = object
    ## WtPOINT
    x*: int32
    y*: int32

  WinRect* {.pure, bycopy.} = object
    ## WtRECT
    left*: int32
    top*: int32
    right*: int32
    bottom*: int32

const
  WinPointZero* = WinPoint()

func winPoint*(x, y: int32): WinPoint {.noinit, inline, raises: [].} =
  result.x = x
  result.y = y

func winRect*(left, top, right, bottom: int32): WinRect {.noinit, inline, raises: [].} =
  result.left = left
  result.top = top
  result.right = right
  result.bottom = bottom

func `==`*(a, b: WinRect): bool {.inline, raises: [].} =
  a.left == b.left and a.top == b.top and a.right == b.right and a.bottom == b.bottom

func width*(r: WinRect): int32 {.inline, raises: [].} =
  r.right - r.left

func height*(r: WinRect): int32 {.inline, raises: [].} =
  r.bottom - r.top

# vim: set foldmethod=marker:
