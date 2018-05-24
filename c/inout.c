// @expect verified

#include "smack.h"//"assert.h"
#include "stdio.h"

void addFive(int * p) {
    *p = *p + 5;
}

int main(void) {
    int * x = malloc(sizeof(int));
// when the malloc isn't there, this test does not pass, even though clang does the proper behavior when the program runs.
// ^^ 5/14/2018 not sure if this comment is old...
    *x = 2;
    addFive(x);
    int y = *x;
    assert(y == 7);
    return 0;
}
