
import assert.*

fun main(args: Array<String>) {
    var x = 0
    for (i in 1..10) {
        x += 5
    }

    __smack_assert(x == 50)
}
