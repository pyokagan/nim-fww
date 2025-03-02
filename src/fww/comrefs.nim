import win32result, win32guid

export win32result

when not (defined(gcArc) or defined(gcOrc)):
  {.error: "gcArc/gcOrc required".}

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}

type
  FnPointer = proc () {.w32callback.}

  IUnknown* {.pure, inheritable.} = object # {00000000-0000-0000-c000-000000000046}
    vtbl*: pointer

  IUnknownVtbl* {.pure.} = object
    QueryInterface*: FnPointer
    AddRef*: FnPointer
    Release*: FnPointer

  PfnQueryInterface = proc (self: pointer; riid: ptr WinGuid; ppvObject: var pointer): WinResult {.w32callback.}
  PfnAddRef = proc (self: pointer): uint32 {.w32callback.}
  PfnRelease = proc (self: pointer): uint32 {.w32callback.}

type
  ComRef*[T] = object
    p*: ptr T

when NimMajor >= 2:
  proc `=destroy`*[T](self: ComRef[T]) {.inline, raises: [].} =
    if not self.p.isNil:
      let vtbl = cast[ptr IUnknownVtbl](self.p.vtbl)
      discard cast[PfnRelease](vtbl.Release)(self.p)
else:
  proc `=destroy`*[T](self: var ComRef[T]) {.inline, raises: [].} =
    if not self.p.isNil:
      let vtbl = cast[ptr IUnknownVtbl](self.p.vtbl)
      discard cast[PfnRelease](vtbl.Release)(self.p)

proc `=copy`*[T](dst: var ComRef[T]; src: ComRef[T]) {.inline, raises: [].} =
  if dst.p != src.p:
    if not src.p.isNil:
      let vtbl = cast[ptr IUnknownVtbl](src.p.vtbl)
      discard cast[PfnAddRef](vtbl.AddRef)(src.p)
    if not dst.p.isNil:
      let vtbl = cast[ptr IUnknownVtbl](dst.p.vtbl)
      discard cast[PfnRelease](vtbl.Release)(dst.p)
    dst.p = src.p

when NimMajor >= 2:
  proc `=dup`*[T](src: ComRef[T]): ComRef[T] {.nodestroy, inline, raises: [].} =
    if not src.p.isNil:
      let vtbl = cast[ptr IUnknownVtbl](src.p.vtbl)
      discard cast[PfnAddRef](vtbl.AddRef)(src.p)
    result = ComRef[T](p: src.p)

func isNil*[T](self: ComRef[T]): bool {.inline, raises: [].} =
  result = self.p.isNil

func clear*(self: var ComRef) {.inline, raises: [].} =
  if not self.p.isNil:
    {.cast(noSideEffect).}:
      discard cast[PfnRelease](cast[ptr IUnknownVtbl](self.p.vtbl).Release)(self.p)
  self.p = nil

func castTo*[T, J](self: sink ComRef[T]; t: typedesc[J]): ComRef[J] {.inline, raises: [].} =
  result.p = self.p
  wasMoved(self)

proc queryInterface*[T](self: ptr IUnknown; ppvObject: var ptr T): WinResult {.inline, raises: [].} =
  bind WinGuid
  mixin winGuid
  var
    riid: WinGuid = winGuid(T)
    tmp_p = pointer(nil)
  result = cast[PfnQueryInterface](cast[ptr IUnknownVtbl](self.vtbl).QueryInterface)(self, riid.addr, tmp_p)
  ppvObject = cast[ptr T](tmp_p)

func addRef*(self: ptr IUnknown): uint32 {.inline, raises: [].} =
  {.cast(noSideEffect).}:
    result = cast[PfnAddRef](cast[ptr IUnknownVtbl](self.vtbl).AddRef)(self)

func release*(self: ptr IUnknown): uint32 {.inline, raises: [].} =
  {.cast(noSideEffect).}:
    result = cast[PfnRelease](cast[ptr IUnknownVtbl](self.vtbl).Release)(self)

func comRefAddRef*[T](x: ptr T): ComRef[T] {.inline, raises: [].} =
  discard addRef(x)
  result.p = x
