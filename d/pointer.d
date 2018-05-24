// @expect verified

import smack;

void main() {
	int *pointer = new int;
	*pointer = 3;
	assert(*pointer == 3);
}
