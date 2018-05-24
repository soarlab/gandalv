// @expect verified

#include "smack.h" //<assert.h>

int main(void) {
    int x = 10;
    int y = 20;
    int z = x + y;
    assert(z == 30);
    return 0;
}
