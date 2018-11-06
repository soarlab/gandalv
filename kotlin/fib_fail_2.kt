// @expect error

import assert.*

fun fib(n: Int): Int {
    if (n <= 0) return 0
    if (n == 1) return 1

    return fib(n-1) + fib(n-2)
}

fun main(args: Array<String>) {
    __VERIFIER_assert(fib(5) == 5)
    __VERIFIER_assert(fib(6) != 8)
}
