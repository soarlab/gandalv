// @expect error

struct Point {
  let x: Int
  let y: Int
}

let p = Point(x: 2, y: 3)

__VERIFIER_assert(p.x == 2)
__VERIFIER_assert(p.y != 3)
