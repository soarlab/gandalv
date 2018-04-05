
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

- (int)numWindows
{
    return 6;
}

- (int)numWindowsForSide:(int)side
{
    return 3;
}

@end

int main(void) {
    Car *c = [[Car alloc] init];
    
    assert([c numWheels] == 4);
    assert([c numHeadlights] == 6);
    assert([c milageLeft:250000] == 50000);
    return 0;
}
