// @expect verified

func myFunction(_ val: Int) -> Int {
	var x = 3
	if val < 5 {
		x = 5
	}
	return x
}

let three = myFunction(10)
let five = myFunction(1)
__VERIFIER_assert(three == 3)
__VERIFIER_assert(five == 5)
