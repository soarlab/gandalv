// @expect verified

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Location : NSObject {
    int _x;
}

@property int x;

- (id)initWithX:(int)xValue;

@end

@implementation Location

@synthesize x = _x;

- (id)initWithX:(int)xValue
{
    if (self = [super init]) {
        _x = xValue;
        return self;
    } else return nil;
}

@end

int main(void) {
    Location *p = [[Location alloc] initWithX:3];
    assume(p != nil);

    assert(p.x == 3);
    return 0;
}
