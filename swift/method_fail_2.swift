// @expect error

class Car {
    func numWheels() -> Int {
        return 4
    }

    func numHeadlights() -> Int {
        return 2
    }

//    func milageLeft(miles: Int) -> Int {
//        return 300_000 - miles
//    }
}

let car = Car()
__VERIFIER_assert(car.numWheels() == 4)
//__VERIFIER_assert(car.numHeadlights() != 2)
//__VERIFIER_assert(car.milageLeft(miles: 250_000) != 50_000)
