import comrefs

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}
{.pragma: w32callback, stdcall, gcsafe, raises: [].}

template defineFlags(TT) {.dirty.} =
  func `==`*(x, y: TT): bool {.borrow.}
  func `or`*(x, y: TT): TT {.borrow.}
  func `and`*(x, y: TT): TT {.borrow.}

template defineTag(TT) {.dirty.} =
  func `==`*(x, y: TT): bool {.borrow.}

type
  DwriteFontWeight* = 1'i32 .. 999'i32

const
  dwriteFontWeightNormal* = DwriteFontWeight 400

include dwrite_cshared
