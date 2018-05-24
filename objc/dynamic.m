// @expect verified

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Fish : NSObject

- (int)numTails;

@end

@implementation Fish

- (int)numTails
{
	return 1;
}

@end

#pragma mark - subclass

@interface TwinTailBeta : Fish 

- (int)numTails;

@end

@implementation TwinTailBeta

- (int)numTails
{
	return 2;
}

@end

int main(void) {
	//Fish *myFish = [[Fish alloc] init];
	TwinTailBeta *myBeta = [[TwinTailBeta alloc] init];
	
	//int nt = [myFish numTails];
	//assert(nt == 2 || nt == 1);
	assert([myBeta numTails] == 2);
	return 0;
}
