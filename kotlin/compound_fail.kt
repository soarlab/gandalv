
import assert.*

class Point(val x: Int, val y: Int) { }

fun main(args: Array<String>) {
    val p = Point(2,3)
    __smack_assert(p.x != 2)
    __smack_assert(p.y == 3)
}
