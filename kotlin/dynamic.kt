
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

    __smack_assert(fish.numTails() == 1)
    __smack_assert(beta.numTails() == 2)
}
