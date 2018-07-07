// @expect verified

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Car : NSObject

- (int)numWheels;

- (int)numHeadlights;

- (int)milageLeft:(int)miles;

@end

@implementation Car

- (int)numWheels
{
    return 4;
}

- (int)numHeadlights
{
    return 2;
}

- (int)milageLeft:(int)miles
{
    return 300000 - miles;
}

@end

int main(void) {
    Car *c = [[Car alloc] init];
    
    assert([c numWheels] == 4);
    assert([c numHeadlights] == 2);
    assert([c milageLeft:250000] == 50000);
    return 0;
}
