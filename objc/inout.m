// @expect verified

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Updater : NSObject

- (void) addFive:(int *)x;

@end

@implementation Updater

- (void) addFive:(int *)x
{
    *x = *x + 5;
}

@end

int main(void)
{
    Updater *updater = [[Updater alloc] init];

    int * x = malloc(sizeof(int));
    *x = 2;
    [updater addFive:x];
    int y = *x;
    assert(y == 7);
    
    [updater release];
    return 0;
}
