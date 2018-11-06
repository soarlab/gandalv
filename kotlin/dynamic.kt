// @expect verified

import assert.*

open class Fish {
    open fun numTails(): Int {
        return 1
    }
}

class TwinTailBeta : Fish() {
    override fun numTails(): Int {
        return 2
    }
}

fun main(args: Array<String>) {
    val fish = Fish()
    val beta = TwinTailBeta()

    __VERIFIER_assert(fish.numTails() == 1)
    __VERIFIER_assert(beta.numTails() == 2)
}
