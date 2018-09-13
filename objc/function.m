// @expect verified

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Func : NSObject

- (int)cap:(int)x;

@end

@implementation Func

-(int)cap:(int)x
{
    int y = x;
    if (10 < x) {
        y = 10;
    }
    return y;
}

@end

int main(void) {
    Func *f = [[Func alloc] init];
    int two = [f cap:2];
    int ten = [f cap:15];
    assert(two == 2);
    assert(ten == 10);
    int x = __VERIFIER_nondet_int();
    assert([f cap:x] <= 10);
    return 0;
}
