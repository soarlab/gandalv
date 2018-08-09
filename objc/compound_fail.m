// @expect error

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Point : NSObject {
    int _x;
    int _y;
}

@property int x;
@property int y;

- (id)initWithX:(int)xValue y:(int)yValue;

@end

@implementation Point

@synthesize x = _x;
@synthesize y = _y;

- (id)initWithX:(int)xValue
              y:(int)yValue
{
    if (self = [super init]) {
        _x = xValue;
        _y = yValue;
        return self;
    } else return nil;
}

@end

int main(void) {
    Point *p = [[Point alloc] initWithX:2 y:3];
    assume(p != nil);

    assert(p.x != 2);
    assert(p.y == 3);
    return 0;
}
