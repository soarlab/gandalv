// @expect verified
// @flag --unroll=11

var x = 0
var i = 0
while i < 10 {
    x += 5
    i += 1
}

__VERIFIER_assert(x == 50)
