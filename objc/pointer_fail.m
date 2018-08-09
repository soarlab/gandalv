// @expect error

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Pointer : NSObject

- (void) point;

@end

@implementation Pointer

- (void) point
{
    int *ptr = malloc(sizeof(int));
    *ptr = 3;
    assert(*ptr != 3);
    free(ptr);
}

@end

int main(void)
{
    Pointer *pointer = [[Pointer alloc] init];
    [pointer point];
    [pointer release];
    return 0;
}
