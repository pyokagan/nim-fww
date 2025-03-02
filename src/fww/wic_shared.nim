import comrefs, comstreams

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}
{.pragma: w32callback, stdcall, gcsafe, raises: [].}

template defineFlags(TT) {.dirty.} =
  func `==`*(x, y: TT): bool {.borrow.}
  func `or`*(x, y: TT): TT {.borrow.}
  func `and`*(x, y: TT): TT {.borrow.}

include wic_cshared
