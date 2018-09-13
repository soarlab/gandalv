
import assert.*

class Car {
    fun numWheels(): Int {
        return 4
    }
    fun numHeadlights(): Int {
        return 2
    }
    fun milageLeft(miles: Int): Int {
        return 300000 - miles
    }
}

fun main(args: Array<String>) {
    val car = Car()
    
    __smack_assert(car.numWheels() != 4)
    __smack_assert(car.numHeadlights() != 2)
    __smack_assert(car.milageLeft(250000) == 50000)
}
