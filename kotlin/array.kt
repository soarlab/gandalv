// @expect verified

import assert.*

fun main(args: Array<String>) {
    val array = intArrayOf(0)
    array[0] = 3;
    __VERIFIER_assert(array[0] == 3)
}
