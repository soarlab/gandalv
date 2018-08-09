// @expect error

#include <stdlib.h>
#include <cassert>

int main(void) {
    int *ptr = new int;
    *ptr = 3;
    assert(*ptr != 3);
    free(ptr);
    return 0;
}
