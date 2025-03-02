import comrefs # IUnknown
import win32result # WinResult
import win32guid # WinGuid

export comrefs
export win32result

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

{.pragma: w32callback, stdcall, gcsafe, raises: [].}

type
  StreamSeek* {.size: 4.} = enum
    streamSeekSet
    streamSeekCur
    streamSeekEnd

type
  Stgc* = distinct uint32
func `==`*(x, y: Stgc): bool {.borrow.}
func `and`*(x, y: Stgc): Stgc {.borrow.}
func `or`*(x, y: Stgc): Stgc {.borrow.}
const
  stgcDefault* = Stgc 0
  stgcOverwrite* = Stgc 1
  stgcOnlyIfCurrent* = Stgc 2
  stgcDangerouslyCommitMerelyToDiskCache* = Stgc 4
  stgcConsolidate* = Stgc 8

type
  WtLARGE_INTEGER_nested0 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: int32
  WtLARGE_INTEGER_nested1 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: int32
  WtLARGE_INTEGER {.pure, bycopy, union.} = object
    Anonymous*: WtLARGE_INTEGER_nested0
    u*: WtLARGE_INTEGER_nested1
    QuadPart*: int64

type
  WtULARGE_INTEGER_nested0 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: uint32
  WtULARGE_INTEGER_nested1 {.pure, byref.} = object
    LowPart*: uint32
    HighPart*: uint32
  WtULARGE_INTEGER {.pure, bycopy, union.} = object
    Anonymous*: WtULARGE_INTEGER_nested0
    u*: WtULARGE_INTEGER_nested1
    QuadPart*: uint64

type
  WtFILETIME {.bycopy.} = object
    dwLowDateTime*: uint32
    dwHighDateTime*: uint32
  StatStg* {.pure, byref.} = object
    pwcsName*: ptr UncheckedArray[uint16]
    `type`*: uint32
    cbSize*: WtULARGE_INTEGER
    mtime*: WtFILETIME
    ctime*: WtFILETIME
    atime*: WtFILETIME
    grfMode*: uint32
    grfLocksSupported*: uint32
    clsid*: WinGuid
    grfStateBits*: uint32
    reserved: uint32

type
  FnPointer = proc () {.w32callback.}

  ISequentialStream* = object of IUnknown # {0c733a30-2a1c-11ce-ade5-00aa0044773d}
    discard
  ISequentialStreamVtbl* {.pure.} = object
    base*: IUnknownVtbl
    # PfnRead = proc (self: ptr ISequentialStream; pv: var void; cb: uint32; pcbRead: ptr uint32): WtHRESULT {.w32callback.}
    Read*: FnPointer
    # PfnWrite = proc (self: ptr ISequentialStream; pv: pointer; cb: uint32; pcbWritten: ptr uint32): WtHRESULT {.w32callback.}
    Write*: FnPointer

proc read*(self: ptr ISequentialStream; pv: pointer; cb: uint32; pcbRead: var uint32): WinResult {.inline, raises: [].} =
  type PfnRead = proc (self: ptr ISequentialStream; pv: pointer; cb: uint32; pcbRead: var uint32): WinResult {.w32callback.}
  cast[PfnRead](cast[ptr ISequentialStreamVtbl](self.vtbl).Read)(self, pv, cb, pcbRead)

proc write*(self: ptr ISequentialStream; pv: pointer; cb: uint32; pcbWritten: ptr uint32): WinResult {.inline, raises: [].} =
  type PfnWrite = proc (self: ptr ISequentialStream; pv: pointer; cb: uint32; pcbWritten: ptr uint32): WinResult {.w32callback.}
  cast[PfnWrite](cast[ptr ISequentialStreamVtbl](self.vtbl).Write)(self, pv, cb, pcbWritten)

type
  IStream* = object of ISequentialStream # {0000000c-0000-0000-c000-000000000046}
    discard
  IStreamVtbl* {.pure.} = object
    base*: ISequentialStreamVtbl
    # PfnSeek = proc (self: ptr WtIStream; dlibMove: WtLARGE_INTEGER; dwOrigin: WtSTREAM_SEEK; plibNewPosition: ptr WtULARGE_INTEGER): WtHRESULT {.w32callback.}
    Seek*: FnPointer
    # PfnSetSize = proc (self: ptr WtIStream; libNewSize: WtULARGE_INTEGER): WtHRESULT {.w32callback.}
    SetSize*: FnPointer
    # PfnCopyTo = proc (self: ptr WtIStream; pstm: ptr WtIStream; cb: WtULARGE_INTEGER; pcbRead: ptr WtULARGE_INTEGER; pcbWritten: ptr WtULARGE_INTEGER): WtHRESULT {.w32callback.}
    CopyTo*: FnPointer
    # PfnCommit = proc (self: ptr WtIStream; grfCommitFlags: WtSTGC): WtHRESULT {.w32callback.}
    Commit*: FnPointer
    # PfnRevert = proc (self: ptr WtIStream): WtHRESULT {.w32callback.}
    Revert*: FnPointer
    # PfnLockRegion = proc (self: ptr WtIStream; libOffset: WtULARGE_INTEGER; cb: WtULARGE_INTEGER; dwLockType: uint32): WtHRESULT {.w32callback.}
    LockRegion*: FnPointer
    # PfnUnlockRegion = proc (self: ptr WtIStream; libOffset: WtULARGE_INTEGER; cb: WtULARGE_INTEGER; dwLockType: uint32): WtHRESULT {.w32callback.}
    UnlockRegion*: FnPointer
    # PfnStat = proc (self: ptr WtIStream; pstatstg: var WtSTATSTG; grfStatFlag: uint32): WtHRESULT {.w32callback.}
    Stat*: FnPointer
    # PfnClone = proc (self: ptr WtIStream; ppstm: var ptr WtIStream): WtHRESULT {.w32callback.}
    Clone*: FnPointer

proc seek*(self: ptr IStream; dlibMove: int64; dwOrigin: StreamSeek; plibNewPosition: ptr uint64): WinResult {.inline, raises: [].} =
  type PfnSeek = proc (self: ptr IStream; dlibMove: WtLARGE_INTEGER; dwOrigin: StreamSeek; plibNewPosition: ptr uint64): WinResult {.w32callback.}
  var dlibMoveAux {.noinit.}: WtLARGE_INTEGER
  dlibMoveAux.QuadPart = dlibMove
  cast[PfnSeek](cast[ptr IStreamVtbl](self.vtbl).Seek)(self, dlibMoveAux, dwOrigin, plibNewPosition)

proc setSize*(self: ptr IStream; libNewSize: uint64): WinResult {.inline, raises: [].} =
  type PfnSetSize = proc (self: ptr IStream; libNewSize: WtULARGE_INTEGER): WinResult {.w32callback.}
  var libNewSizeAux {.noinit.}: WtULARGE_INTEGER
  libNewSizeAux.QuadPart = libNewSize
  cast[PfnSetSize](cast[ptr IStreamVtbl](self.vtbl).SetSize)(self, libNewSizeAux)

proc copyTo*(self: ptr IStream; pstm: ptr IStream; cb: uint64; pcbRead: ptr uint64; pcbWritten: ptr uint64): WinResult {.inline, raises: [].} =
  type PfnCopyTo = proc (self: ptr IStream; pstm: ptr IStream; cb: WtULARGE_INTEGER; pcbRead: ptr uint64; pcbWritten: ptr uint64): WinResult {.w32callback.}
  var cbAux {.noinit.}: WtULARGE_INTEGER
  cbAux.QuadPart = cb
  cast[PfnCopyTo](cast[ptr IStreamVtbl](self.vtbl).CopyTo)(self, pstm, cbAux, pcbRead, pcbWritten)

proc commit*(self: ptr IStream; grfCommitFlags: Stgc): WinResult {.inline, raises: [].} =
  type PfnCommit = proc (self: ptr IStream; grfCommitFlags: Stgc): WinResult {.w32callback.}
  cast[PfnCommit](cast[ptr IStreamVtbl](self.vtbl).Commit)(self, grfCommitFlags)

proc revert*(self: ptr IStream): WinResult {.inline, raises: [].} =
  type PfnRevert = proc (self: ptr IStream): WinResult {.w32callback.}
  cast[PfnRevert](cast[ptr IStreamVtbl](self.vtbl).Revert)(self)

proc lockRegion*(self: ptr IStream; libOffset, cb: uint64; dwLockType: uint32): WinResult {.inline, raises: [].} =
  type PfnLockRegion = proc (self: ptr IStream; libOffset: WtULARGE_INTEGER; cb: WtULARGE_INTEGER; dwLockType: uint32): WinResult {.w32callback.}
  var
    libOffsetAux {.noinit.}: WtULARGE_INTEGER
    cbAux {.noinit.}: WtULARGE_INTEGER
  libOffsetAux.QuadPart = libOffset
  cbAux.QuadPart = cb
  cast[PfnLockRegion](cast[ptr IStreamVtbl](self.vtbl).LockRegion)(self, libOffsetAux, cbAux, dwLockType)

proc unlockRegion*(self: ptr IStream; libOffset, cb: uint64; dwLockType: uint32): WinResult {.inline, raises: [].} =
  type PfnUnlockRegion = proc (self: ptr IStream; libOffset: WtULARGE_INTEGER; cb: WtULARGE_INTEGER; dwLockType: uint32): WinResult {.w32callback.}
  var
    libOffsetAux {.noinit.}: WtULARGE_INTEGER
    cbAux {.noinit.}: WtULARGE_INTEGER
  libOffsetAux.QuadPart = libOffset
  cbAux.QuadPart = cb
  cast[PfnUnlockRegion](cast[ptr IStreamVtbl](self.vtbl).UnlockRegion)(self, libOffsetAux, cbAux, dwLockType)

proc stat*(self: ptr IStream; pstatstg: var StatStg; grfStatFlag: uint32): WinResult {.inline, raises: [].} =
  type PfnStat = proc (self: ptr IStream; pstatstg: var StatStg; grfStatFlag: uint32): WinResult {.w32callback.}
  cast[PfnStat](cast[ptr IStreamVtbl](self.vtbl).Stat)(self, pstatstg, grfStatFlag)

proc clone*(self: ptr IStream; ppstm: var ptr IStream): WinResult {.inline, raises: [].} =
  type PfnClone = proc (self: ptr IStream; ppstm: var ptr IStream): WinResult {.w32callback.}
  cast[PfnClone](cast[ptr IStreamVtbl](self.vtbl).Clone)(self, ppstm)
