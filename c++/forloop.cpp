// @expect verified
// @flag --unroll=11

#include <smack.h>//<cassert>

int main(void) {
    int x = 0;
    for (int i = 0; i < 10; i++) {
        x += 5;
    }
    assert(x == 50);
}
