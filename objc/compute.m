// @expect verified

#import <Foundation/Foundation.h>
//#include "smack.h"

@interface Compute : NSObject

- (void) compute;

@end

@implementation Compute

- (void)compute
{
    int x = 10;
    int y = 20;
    int z = x + y;
    assert(z == 30);
}

@end

int main(void)
{
    Compute *compute = [[Compute alloc] init];
    [compute compute];
    [compute release];
    return 0;
}

