// @expect verified

import smack;

void main() {
	int[] array = [0];
	array[0] = 3;
	__VERIFIER_assert(array[0] == 3);
}
