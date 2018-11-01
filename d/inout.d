// @expect verified

import smack;

void addFive(int * p) {
    *p = *p + 5;
}

void main() {
    int *t = new int;
    *t = 2;
    addFive(t);
    __VERIFIER_assert(*t == 7);
}
