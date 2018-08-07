// @expect error
// @flag --unroll=11

#include "smack.h" //<assert.h>

int main(void) {
    int x = 0;
    for (int i = 0; i < 10; i++) {
        x += 5;
    }
    assert(x != 50);
    return 0;
}

