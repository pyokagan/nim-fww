## Direct2D math types
import std/math

{.stackTrace:off, boundChecks:off, overflowChecks:off, rangeChecks:off.}

func myClamp[T](x, lo, hi: T): T {.inline, raises: [].} =
  if x < lo: return lo
  if x > hi: return hi
  result = x

type
  D2d1Vec2u* {.pure, bycopy.} = object
    ## D2D_POINT_2U
    x*: uint32
    y*: uint32
  D2d1Vec2i* {.pure, bycopy.} = object
    ## Foundation#POINT
    x*: int32
    y*: int32
  D2d1Vec2f* {.pure, bycopy.} = object
    ## D2D_POINT_2F
    x*: float32
    y*: float32
  D2d1Size2u* {.pure, bycopy.} = object
    ## D2D_SIZE_U
    width*: uint32
    height*: uint32
  D2d1Size2f* {.pure, bycopy.} = object
    ## D2D_SIZE_F
    width*: float32
    height*: float32
  D2d1Mat2f* {.pure, bycopy.} = object
    ## row-major matrix; (does not actually exist in D2D1 API)
    m11*: float32
    m12*: float32
    m21*: float32
    m22*: float32
  D2d1Mat4f* {.pure, byref.} = object
    ## D2D_MATRIX_4X4_F
    m11*: float32
    m12*: float32
    m13*: float32
    m14*: float32
    m21*: float32
    m22*: float32
    m23*: float32
    m24*: float32
    m31*: float32
    m32*: float32
    m33*: float32
    m34*: float32
    m41*: float32
    m42*: float32
    m43*: float32
    m44*: float32
  D2d1Affine2f* {.pure, byref.} = object
    ## D2D_MATRIX_3X2_F
    m*: D2d1Mat2f
    t*: D2d1Vec2f
  D2d1Ellipse* {.pure, byref.} = object
    ## D2D1_ELLIPSE
    point*: D2d1Vec2f
    radius*: D2d1Vec2f
  D2d1Rectf* {.pure, byref.} = object
    ## D2D_RECT_F
    min*: D2d1Vec2f
    max*: D2d1Vec2f
  D2d1Rectu* {.pure, byref.} = object
    ## D2D_RECT_U
    min*: D2d1Vec2u
    max*: D2d1Vec2u
  D2d1Recti* {.pure, bycopy.} = object
    ## Foundation#RECT
    min*: D2d1Vec2i
    max*: D2d1Vec2i
  D2d1Rgbaf* {.pure, byref.} = object
    ## D2D1_COLOR_F
    r*, g*, b*, a*: float32
  D2d1Rgba8* {.pure, bycopy.} = object
    ## (extension, does not exist in D2d1 API)
    r*, g*, b*, a*: uint8
  D2d1Rgb8* {.pure, bycopy.} = object
    ## (extension, does not exist in D2d1 API)
    r*, g*, b*: uint8
  D2d1GradientStop* {.pure, byref.} = object
    ## D2D1_GRADIENT_STOP
    position*: float32
    color*: D2d1Rgbaf
  D2d1RoundedRectf* {.pure, byref.} = object
    ## D2D1_ROUNDED_RECT
    rect*: D2d1Rectf
    radius*: D2d1Vec2f

const
  D2d1Vec2fZero* = D2d1Vec2f()

  D2d1Mat2fZero* = D2d1Mat2f(m11: 0, m12: 0, m21: 0, m22: 0)
  D2d1Mat2fIdentity* = D2d1Mat2f(m11: 1, m12: 0, m21: 0, m22: 1)
  D2d1Affine2fIdentity* = D2d1Affine2f(m: D2d1Mat2fIdentity, t: D2d1Vec2f(x: 0, y: 0))

  D2d1RgbafBlack* = D2d1Rgbaf(r: 0, g: 0, b: 0, a: 1)
  D2d1RgbafWhite* = D2d1Rgbaf(r: 1, g: 1, b: 1, a: 1)
  D2d1Rgba8White* = D2d1Rgba8(r: 255, g: 255, b: 255, a: 255)

# D2d1Vec2u

func d2d1Vec2u*(x, y: uint32): D2d1Vec2u {.noinit, inline, raises: [].} =
  result.x = x
  result.y = y

# D2d1Vec2f

func d2d1Vec2f*(x, y: float32): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = x
  result.y = y

func d2d1Vec2f*(x: float32): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = x
  result.y = x

func d2d1Vec2f*(v: D2d1Size2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = v.width
  result.y = v.height

func `==`*(a, b: D2d1Vec2f): bool {.inline, raises: [].} =
  a.x == b.x and a.y == b.y

func `+`*(a, b: D2d1Vec2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = a.x + b.x
  result.y = a.y + b.y

func `+`*(a: D2d1Vec2f; b: float32): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = a.x + b
  result.y = a.y + b

func `-`*(a: D2d1Vec2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = -a.x
  result.y = -a.y

func `-`*(a, b: D2d1Vec2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = a.x - b.x
  result.y = a.y - b.y

func `-`*(a: D2d1Vec2f; b: float32): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = a.x - b
  result.y = a.y - b

func `*`*(a: D2d1Vec2f; b: float32): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = a.x * b
  result.y = a.y * b

func `/`*(a: D2d1Vec2f; b: float32): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = a.x / b
  result.y = a.y / b

func dot*(a, b: D2d1Vec2f): float32 {.inline, raises: [].} =
  result = a.x * b.x + a.y * b.y

func length*(v: D2d1Vec2f): float32 {.inline, raises: [].} =
  sqrt(dot(v, v))

func cwiseMin*(a, b: D2d1Vec2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = min(a.x, b.x)
  result.y = min(a.y, b.y)

func cwiseFloor*(v: D2d1Vec2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = floor(v.x)
  result.y = floor(v.y)

func cwiseCeil*(v: D2d1Vec2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = ceil(v.x)
  result.y = ceil(v.y)

# D2d1Size2u

func d2d1Size2u*(width, height: uint32): D2d1Size2u {.noinit, inline, raises: [].} =
  result.width = width
  result.height = height

# D2d1Size2f

func d2d1Size2f*(width, height: float32): D2d1Size2f {.noinit, inline, raises: [].} =
  result.width = width
  result.height = height

# D2d1Rectf

func d2d1Rectf*(left, top, right, bottom: float32): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = left
  result.min.y = top
  result.max.x = right
  result.max.y = bottom

func d2d1RectfWH*(left, top, w, h: float32): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = left
  result.min.y = top
  result.max.x = left + w
  result.max.y = top + h

func d2d1RectfWH*(origin: D2d1Vec2f; w, h: float32): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = origin.x
  result.min.y = origin.y
  result.max.x = origin.x + w
  result.max.y = origin.y + h

func `==`*(a, b: D2d1Rectf): bool {.inline, raises: [].} =
  a.min.x == b.min.x and a.min.y == b.min.y and a.max.x == b.max.x and a.max.y == b.max.y

func w*(r: D2d1Rectf): float32 {.inline, raises: [].} =
  r.max.x - r.min.x

func h*(r: D2d1Rectf): float32 {.inline, raises: [].} =
  r.max.y - r.min.y

func `+`*(a: D2d1Rectf; b: D2d1Vec2f): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = a.min.x + b.x
  result.max.x = a.max.x + b.x
  result.min.y = a.min.y + b.y
  result.max.y = a.max.y + b.y

func intersects*(self: D2d1Rectf; point: D2d1Vec2f): bool {.inline, raises: [].} =
  point.x >= self.min.x and point.x <= self.max.x and point.y >= self.min.y and point.y <= self.max.y

func contains*(a, b: D2d1Rectf): bool {.inline, raises: [].} =
  a.min.x <= b.min.x and a.min.y <= b.min.y and a.max.x >= b.max.x and a.max.y >= b.max.y

func clip*(a, b: D2d1Rectf): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = myClamp(b.min.x, a.min.x, a.max.x)
  result.max.x = myClamp(b.max.x, a.min.x, a.max.x)
  result.min.y = myClamp(b.min.y, a.min.y, a.max.y)
  result.max.y = myClamp(b.max.y, a.min.y, a.max.y)

func fix*(r: D2d1Rectf): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = r.min.x
  result.min.y = r.min.y
  result.max.x = max(r.min.x, r.max.x)
  result.max.y = max(r.min.y, r.max.y)

func union*(r: D2d1Rectf; pt: D2d1Vec2f): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = min(r.min.x, pt.x)
  result.min.y = min(r.min.y, pt.y)
  result.max.x = max(r.max.x, pt.x)
  result.max.y = max(r.max.y, pt.y)

func union*(a, b: D2d1Rectf): D2d1Rectf {.noinit, inline, raises: [].} =
  result.min.x = min(a.min.x, b.min.x)
  result.min.y = min(a.min.y, b.min.y)
  result.max.x = max(a.max.x, b.max.x)
  result.max.y = max(a.max.y, b.max.y)

func shrinkToAspectRatio*(r: D2d1Rectf; aspectW, aspectH: float32): D2d1Rectf {.noinit, inline, raises: [].} =
  let rW = r.max.x - r.min.x
  let rH = r.max.y - r.min.y
  if rW * aspectH > aspectW * rH:
    result.max.x = (aspectW * rH) / aspectH
    result.max.y = rH
  else:
    result.max.x = rW
    result.max.y = (aspectH * rW) / aspectW
  result.min.x = r.min.x + (rW - result.max.x) * 0.5'f32
  result.min.y = r.min.y + (rH - result.max.y) * 0.5'f32
  result.max.x = result.max.x + result.min.x
  result.max.y = result.max.y + result.min.y

# D2d1Rectu

func d2d1Rectu*(left, top, right, bottom: uint32): D2d1Rectu {.noinit, inline, raises: [].} =
  result.min.x = left
  result.min.y = top
  result.max.x = right
  result.max.y = bottom

func d2d1RectuWH*(left, top, w, h: uint32): D2d1Rectu {.noinit, inline, raises: [].} =
  result.min.x = left
  result.min.y = top
  result.max.x = left + w
  result.max.y = top + h

# D2d1Mat2f

func d2d1Mat2fRotation*(rad: float32): D2d1Mat2f {.noinit, inline, raises: [].} =
  let
    cos_rad = cos(rad)
    sin_rad = sin(rad)
  result.m11 = cos_rad
  result.m12 = sin_rad
  result.m21 = -sin_rad
  result.m22 = cos_rad

func d2d1Mat2fScale*(scale: D2d1Vec2f): D2d1Mat2f {.noinit, inline, raises: [].} =
  result.m11 = scale.x
  result.m12 = 0
  result.m21 = 0
  result.m22 = scale.y

func d2d1Mat2fScale*(scale: float32): D2d1Mat2f {.noinit, inline, raises: [].} =
  result.m11 = scale
  result.m12 = 0
  result.m21 = 0
  result.m22 = scale

func `*`*(a, b: D2d1Mat2f): D2d1Mat2f {.noinit, inline, raises: [].} =
  result.m11 = a.m11 * b.m11 + a.m12 * b.m21
  result.m12 = a.m11 * b.m12 + a.m12 * b.m22
  result.m21 = a.m21 * b.m11 + a.m22 * b.m21
  result.m22 = a.m21 * b.m12 + a.m22 * b.m22

func `*`*(v: D2d1Vec2f; m: D2d1Mat2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result.x = v.x * m.m11 + v.y * m.m21
  result.y = v.x * m.m12 + v.y * m.m22

func invert*(a: D2d1Mat2f): D2d1Mat2f {.noinit, inline, raises: [].} =
  var det = a.m11 * a.m22 - a.m12 * a.m21
  if det == 0'f32:
    result.m11 = 1
    result.m21 = 0
    result.m12 = 0
    result.m22 = 1
    return
  det = 1'f32 / det
  result.m11 = a.m22 * det
  result.m21 = -a.m21 * det
  result.m12 = -a.m12 * det
  result.m22 = a.m11 * det

# D2d1Affine2f

func d2d1Affine2f*(m: D2d1Mat2f; t: D2d1Vec2f): D2d1Affine2f {.noinit, inline, raises: [].} =
  result.m = m
  result.t = t

func `*`*(a, b: D2d1Affine2f): D2d1Affine2f {.noinit, inline, raises: [].} =
  result.m = a.m * b.m
  result.t = (a.t * b.m) + b.t

func `*`*(v: D2d1Vec2f; m: D2d1Affine2f): D2d1Vec2f {.noinit, inline, raises: [].} =
  result = (v * m.m) + m.t

func invert*(a: D2d1Affine2f): D2d1Affine2f {.noinit, inline, raises: [].} =
  result.m = invert(a.m)
  result.t = (-a.t) * result.m

func d2d1Affine2fRotation*(rad: float32; center = D2d1Vec2fZero): D2d1Affine2f {.noinit, inline, raises: [].} =
  let
    cos_rad = cos(rad)
    sin_rad = sin(rad)
  result.m.m11 = cos_rad
  result.m.m12 = sin_rad
  result.m.m21 = -sin_rad
  result.m.m22 = cos_rad
  result.t.x = center.x - center.x * cos_rad + center.y * sin_rad
  result.t.y = center.y - center.x * sin_rad - center.y * cos_rad

# D2d1Rgbaf

func d2d1Rgbaf*(r, g, b: float32; a = 1'f32): D2d1Rgbaf {.noinit, inline, raises: [].} =
  result.r = r
  result.g = g
  result.b = b
  result.a = a

func d2d1Rgbaf*(color: D2d1Rgba8): D2d1Rgbaf {.noinit, inline, raises: [].} =
  result.r = color.r.float32 / 255'f32
  result.g = color.g.float32 / 255'f32
  result.b = color.b.float32 / 255'f32
  result.a = color.a.float32 / 255'f32

func d2d1Rgbaf*(color: D2d1Rgb8; a = 1'f32): D2d1Rgbaf {.noinit, inline, raises: [].} =
  result.r = color.r.float32 / 255'f32
  result.g = color.g.float32 / 255'f32
  result.b = color.b.float32 / 255'f32
  result.a = a

func `==`*(x, y: D2d1Rgbaf): bool {.inline, raises: [].} =
  x.r == y.r and x.g == y.g and x.b == y.b and x.a == y.a

# D2d1Rgb8

func d2d1Rgb8*(r, g, b: uint8): D2d1Rgb8 {.noinit, inline, raises: [].} =
  result.r = r
  result.g = g
  result.b = b

func `==`*(x, y: D2d1Rgb8): bool {.inline, raises: [].} =
  x.r == y.r and x.g == y.g and x.b == y.b

# D2d1Rgba8

func d2d1Rgba8*(r, g, b: uint8; a = 255'u8): D2d1Rgba8 {.noinit, inline, raises: [].} =
  result.r = r
  result.g = g
  result.b = b
  result.a = a

func d2d1Rgba8*(color: D2d1Rgb8; a = 255'u8): D2d1Rgba8 {.noinit, inline, raises: [].} =
  result.r = color.r
  result.g = color.g
  result.b = color.b
  result.a = a

func d2d1Rgba8*(color: D2d1Rgbaf): D2d1Rgba8 {.noinit, inline, raises: [].} =
  result.r = uint8 myClamp(color.r, 0'f32, 1'f32) * 255'f32
  result.g = uint8 myClamp(color.g, 0'f32, 1'f32) * 255'f32
  result.b = uint8 myClamp(color.b, 0'f32, 1'f32) * 255'f32
  result.a = uint8 myClamp(color.a, 0'f32, 1'f32) * 255'f32

func `==`*(x, y: D2d1Rgba8): bool {.inline, raises: [].} =
  x.r == y.r and x.g == y.g and x.b == y.b and x.a == y.a

# D2d1GradientStop

func d2d1GradientStop*(position: float32; color: D2d1Rgbaf): D2d1GradientStop {.noinit, inline, raises: [].} =
  result.position = position
  result.color = color

# D2d1Ellipse

func d2d1Ellipse*(point, radius: D2d1Vec2f): D2d1Ellipse {.noinit, inline, raises: [].} =
  result.point = point
  result.radius = radius

func d2d1Ellipse*(point: D2d1Vec2f; radius: float32): D2d1Ellipse {.noinit, inline, raises: [].} =
  result = d2d1Ellipse(point, d2d1Vec2f(radius))

# D2d1RoundedRectf

func d2d1RoundedRectf*(rect: D2d1Rectf; radius: D2d1Vec2f): D2d1RoundedRectf {.noinit, inline, raises: [].} =
  result.rect = rect
  result.radius = radius

func d2d1RoundedRectf*(rect: D2d1Rectf; radius: float32): D2d1RoundedRectf {.noinit, inline, raises: [].} =
  result.rect = rect
  result.radius = d2d1Vec2f(radius)
