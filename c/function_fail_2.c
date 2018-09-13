// @expect error

#include "smack.h" //<assert.h>

int cap(int x) {
    int y = x;
    if (10 < x) {
        y = 10;
    }
    return y;
}

int main() {
    assert(cap(2) == 2);
    assert(cap(15) != 10);
    int x = __VERIFIER_nondet_int(); 
    assert(cap(x) <= 10);
    return 0;
}
