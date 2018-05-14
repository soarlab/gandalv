
#include "smack.h" //<assert.h>

// @expect verified

int main(void) {
    int x = 10;
    int y = 20;
    int z = x + y;
    assert(z == 30);
    return 0;
}
