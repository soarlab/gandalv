// @expect verified

#include <smack.h>//<cassert>

class Point {
  public:
    int x;
    int y;
    Point(int _x, int _y) : x(_x), y(_y) {}
};

int main(void) {
    Point *l = new Point(2,3);
    assert(l->x == 2);
    assert(l->y == 3);
    delete l;
    return 0;
}
