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
	assert(cap(2) == 2);
	assert(cap(15) == 10);
}
