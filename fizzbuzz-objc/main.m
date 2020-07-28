#import <stdio.h>
#import <Foundation/Foundation.h>

NSArray *getNumbers();

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        for (NSNumber *i in getNumbers()) {
            if ([i intValue] % 15 == 0) {
                printf("FizzBuzz\n");
            } else if ([i intValue] % 3 == 0) {
                printf("Fizz\n");
            } else if ([i intValue] % 5 == 0) {
                printf("Buzz\n");
            } else {
                printf("%d\n", [i intValue]);
            }
        }
    }
    return 0;
}

NSArray *getNumbers() {
    NSRange numberRange = NSMakeRange(1, 100);
    NSMutableArray *numbers = [NSMutableArray array];
    for (int i = 1; i < NSMaxRange(numberRange); i++) {
        [numbers addObject:[NSNumber numberWithUnsignedInteger:i]];
    }
    return [NSArray arrayWithArray:numbers];
}
