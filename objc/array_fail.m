// @expect error

#import <Foundation/Foundation.h>
#include "smack.h"

int main(void) {
	NSArray *empty = [NSArray array];
	NSNumber *three = [[NSNumber alloc] initWithInt:3];
	NSArray *oneElement = [empty arrayByAddingObject:three];
	
	id element = [oneElement objectAtIndex:0];
	NSNumber *num = (NSNumber *)element;
	assert(num.intValue != 3);
	
	return 0;
}
