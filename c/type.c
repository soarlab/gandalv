
#include "smack.h" //"assert.h"

// @expect verified

struct Location {
    int x;
};

int main(void) {
    struct Location l;
    l.x = 3;

    assert(l.x == 3);
    reutrn 0;
}
