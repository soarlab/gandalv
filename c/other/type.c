// @expect verified

#include "smack.h" //"assert.h"

struct Location {
    int x;
};

int main(void) {
    struct Location l;
    l.x = 3;

    assert(l.x == 3);
    reutrn 0;
}
