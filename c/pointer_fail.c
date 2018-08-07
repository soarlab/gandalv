// @expect error

#include <stdlib.h>
#include "smack.h"//<assert.h>

int main(void) {
    int *ptr = malloc(sizeof(int));
    *ptr = 3;
    assert(*ptr != 3);
    free(ptr);
    return 0;
}
