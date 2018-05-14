
#include "smack.h" //<assert.h>

// @expect verified

int main(void) {
    int array[1];
    array[0] = 3;
    assert(array[0] != 3);
    return 0;
}
