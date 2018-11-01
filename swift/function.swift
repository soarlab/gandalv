// @expect verified

func cap(_ x: Int) -> Int {
	var y = x
	if 10 < x {
		y = 10
	}
	return y
}

__VERIFIER_assert(cap(2) == 2)
__VERIFIER_assert(cap(15) == 10)
let x = Int(__VERIFIER_nondet_int())
__VERIFIER_assert(cap(x) <= 10)
