// @expect error

import assert.*

fun cap(x: Int): Int {
    var y = x
    if (10 < x) {
        y = 10
    }
    return y
}

fun main(args: Array<String>) {
    __VERIFIER_assert(cap(2) != 2)
    __VERIFIER_assert(cap(15) == 10)
    var x = __VERIFIER_nondet_int();
    __VERIFIER_assert(cap(x) <= 10);
}
