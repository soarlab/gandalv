// @expect error

var array = [0]
array[0] = 3
__VERIFIER_assert(array[0] != 0)
