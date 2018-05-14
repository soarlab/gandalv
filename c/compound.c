
#include "smack.h" //"assert.h"

// @expect verified

struct Point {
    int x;
    int y;
};

int main(void) {
    struct Point l;
    l.x = 2;
    l.y = 3;

    assert(l.x == 2);
    assert(l.y == 3);
    return 0;
}
