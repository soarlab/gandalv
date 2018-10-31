// @expect error

import smack;

class Car 
{
    this() {}
    int numWheels() {
        return 4;
    }
    int numHeadlights() {
        return 2;
    }
    int milageLeft(int miles) {
        return 300000 - miles;
    }
}

void main()
{
    Car c = new Car();
    __VERIFIER_assert(c.numWheels() != 4);
}
