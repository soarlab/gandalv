// @expect verified

#include <smack.h>//<cassert>

class Location {
  public:
    int x;
    Location(int _x) : x(_x) {}
};

int main(void) {
    Location *l = new Location(3);
    int y = l->x;
    assert(y == 3);
    delete l;
    return 0;
}

