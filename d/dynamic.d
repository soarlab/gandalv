// @expect verified

import smack;

class Fish {
    this() {}
    int numTails() {
        return 1;
    }
}

class TwinTailBeta : Fish {
    this() {}
    override int numTails() {
        return 2;
    }
}

void main()
{
    Fish fish = new Fish();
    TwinTailBeta beta = new TwinTailBeta();

    __VERIFIER_assert(fish.numTails() == 1);
    __VERIFIER_assert(beta.numTails() == 2);
}
