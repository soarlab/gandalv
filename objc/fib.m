// @expect verified
// @flag --unroll=10

#import <Foundation/Foundation.h>
#include "smack.h"

@interface Fibonacci : NSObject

- (int)computeFibonacciNumber:(int)nth;

@end

@implementation Fibonacci

- (int)computeFibonacciNumber:(int)nth
{
    if (nth <= 0) return 0;
    if (nth == 1) return 1;

    return [self computeFibonacciNumber:nth-1] + [self computeFibonacciNumber: nth-2];
}

@end

int main(void)
{
    Fibonacci *fib = [[Fibonacci alloc] init];
    int fifth = [fib computeFibonacciNumber:5];
    int sixth = [fib computeFibonacciNumber:6];
    assert(fifth == 5);
    assert(sixth == 8);
    [fib release];
    return 0;
}
