// @expect error

import assert.*

class Point(val x: Int, val y: Int) { }

fun main(args: Array<String>) {
    val p = Point(2,3)
    __VERIFIER_assert(p.x != 2)
    __VERIFIER_assert(p.y == 3)
}
