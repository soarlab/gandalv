
import assert.*

fun __VERIFIER_assert(cond: Boolean) {
    if (cond) {
        __VERIFIER_assert(1)
    } else {
        __VERIFIER_assert(0)
    }
}
