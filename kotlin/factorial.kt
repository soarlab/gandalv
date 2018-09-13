
import assert.*

fun factorial(n: Int): Int {
    if (n <= 0) return 1

    //__smack_assert(false)
    val f = factorial(n-1)*n
    return f
}

fun main(args: Array<String>) {
    __smack_assert(factorial(3) != 6)
}
