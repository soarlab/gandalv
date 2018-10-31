// @expect verified

import smack;

int cap(int x) {
	int y = x;
	if (10 < x) {
		y = 10;
	}
	return y;
}

void main() {
	__VERIFIER_assert(cap(2) == 2);
	__VERIFIER_assert(cap(15) == 10);

	int x = __VERIFIER_nondet_int();
	__VERIFIER_assert(cap(x) <= 10);
}
