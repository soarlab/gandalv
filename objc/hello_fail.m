// @expect error

#import <Foundation/Foundation.h>

int main(void)
{
    NSLog(@"Hello, World!");
	assert(false);
    return 0;
}
