// @expect error
// @flag --unroll=10

import smack;

import std.stdio;

int fib(int n)
{
	if (n <= 0) {
		return 0;
	} else if (n == 1) {
		return 1;
	} 
	return fib(n-1) + fib(n-2);
}

void main()
{
	assert(fib(5) == 5);
	assert(fib(6) != 8);
}
