// @expect error

#include <stdio.h>
#include "smack.h"

int main(void) {
    printf("Hello World!\n");
    assert(false);
    return 0;
}
