// @expect error
// @flag --unroll=10

func fib(_ n: Int) -> Int {
    if n <= 0 { return 0 }
    if n == 1 { return 1 }

    return fib(n-1) + fib(n-2)
}

__VERIFIER_assert(fib(5) == 5)
__VERIFIER_assert(fib(6) != 8)
