// @expect verified

#include "smack.h" //<assert.h>

int main(void) {
    int array[1];
    array[0] = 3;
    assert(array[0] == 3);
    return 0;
}
