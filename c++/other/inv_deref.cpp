// @expect error
// @flag --memory-safety

#include <smack.h>//<cassert>
#include <cstddef>

extern void * malloc(size_t size);
extern void free(void * p);

void * operator new(size_t size) {
    return malloc(size);
}

void operator delete(void * p) throw() {
    free(p);
}

class Point {
  public:
    int x;
    int y;
    Point(int _x, int _y) : x(_x), y(_y) {}
};

int main(void) {
    Point *l = new Point(2,3);
    delete l;
    assert(l->x == 2);
    //assert(l->y == 3);
    return 0;
}
