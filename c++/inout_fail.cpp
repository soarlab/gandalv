// @expect error

#include <smack.h>//<cassert>

void addFive(int *p) {
    *p += 5;
}

int main(void) {
    int x = 2;
    int *p = &x;
    addFive(p);
    assert(*p != 7);
    return 0;
}
