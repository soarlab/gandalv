// @expect verified
// @flag --unroll=11

import smack;

void main() {
	int x = 0;
	for (int i = 0; i < 10; i++) {
		x += 5;
	}
	
	assert(x == 50);
}
