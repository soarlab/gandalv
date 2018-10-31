// @expect error

import smack;

void main() {
	int *pointer = new int;
	*pointer = 3;
	__VERIFIER_assert(*pointer != 3);
}
