// @expect error

import smack;

void main()
{
	int x = 10;
	int y = 20;
	int z = x + y;
	__VERIFIER_assert(z != 30);
}
