// @expect verified

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Alloc : NSObject

- (void)allocateMemory;

@end

@implementation Alloc

- (void)allocateMemory
{
    int *pointer = malloc(sizeof(int));
    *pointer = 3;
    NSData *data = [[NSData alloc] initWithBytes:pointer
                                          length:sizeof(int)];
    const void *data_bytes = data.bytes;
    int *extracted_pointer = data_bytes;
    assert(*extracted_pointer == 3);
}

@end

int main(void) {
    Alloc *a = [[Alloc alloc] init];
    [a allocateMemory];
    [a release];
    return 0;
}
