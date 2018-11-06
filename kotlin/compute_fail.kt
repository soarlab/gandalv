// @expect error

fun main(args: Array<String>) {
    val x = 10
    val y = 20
    val z = x + y
    __VERIFIER_assert(z != 30)
}
