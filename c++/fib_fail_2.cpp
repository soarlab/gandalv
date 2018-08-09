// @expect error
// @flag --unroll=10

#include <smack.h>//<cassert>

int fib(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return fib(n-1) + fib(n-2);
}

int main(void) {
    assert(fib(5) == 5);
    assert(fib(6) != 8);
    return 0;
}
