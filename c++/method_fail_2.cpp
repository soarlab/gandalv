// @expect error

#include <smack.h>//<cassert>

class Car {
  public:
    int numWheels() {
        return 4;
    }
    int numHeadlights() {
        return 2;
    }
    int milageLeft(int miles) {
        return 300000 - miles;
    }
};

int main(void) {
    Car *c = new Car();
    assert(c->numWheels() == 4);
    assert(c->numHeadlights() != 2);
    assert(c->milageLeft(250000) == 50000);
    delete c;
    return 0;
}
