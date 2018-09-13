// @expect error
// @flag --unroll=11

var x = 0
for i in 0..<10 {
    x += 5
}

__VERIFIER_assert(x != 50)
