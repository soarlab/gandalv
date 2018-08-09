// @expect error

#include <iostream>
#include <smack.h>

int main()
{
	std::cout << "Hello World!!" << "\n";
	assert(false);
	return 0;
}
