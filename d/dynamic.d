// @expect verified

import smack;

class Fish {
    this() {}
    int numTails() {
        return 1;
    }
}

class TwinTailBeta {
    this() {}
    override int numTails() {
        return 2;
    }
}

void main()
{
    Fish fish = new Fish();
    TwinTailBeta beta = new TwinTailBeta();

    assert(fish.numTails() == 1);
    assert(beta.numTails() == 2);
}
