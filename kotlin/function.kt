
import assert.*

fun cap(x: Int): Int {
    var y = x
    if (10 < x) {
        y = 10
    }
    return y
}

fun main(args: Array<String>) {
    __smack_assert(cap(2) == 2)
    __smack_assert(cap(15) == 10)
}
