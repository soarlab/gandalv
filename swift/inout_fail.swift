// @expect error

func addFive(_ x: inout Int) {
    x += 5
}

var z = 2
addFive(&z)

__VERIFIER_assert(z != 7)
