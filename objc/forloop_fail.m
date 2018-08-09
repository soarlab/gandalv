// @expect error
// @flag --unroll=11

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Forloop : NSObject

- (void) loop;

@end

@implementation Forloop

- (void) loop
{
    int x = 0;
    for (int i = 0; i < 10; i++) {
        x += 5;
    }
    assert(x != 50);
}

@end

int main(void)
{
    Forloop *forloop = [[Forloop alloc] init];
    [forloop loop];
    [forloop release];
    return 0;
}
