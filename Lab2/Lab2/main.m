//
//  main.m
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DateCalculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Default initializer
        //  - Same as: DateCalculator *calc1 = [DateCalculator new];
        DateCalculator *calc = [[DateCalculator alloc] init];
        
        calc.myAge = 30.2; // [calc setMyAge:30.2];
        NSLog(@"%.1f", calc.myAge);
        
        [DateCalculator sayHelloWith:@"How are you?" andName:@"Kaden"];
        
        DateCalculator *calc2 = [[DateCalculator alloc] initWithMyAge:60 andName:@"Robert"];
        if ([calc2 canDatePersonWithAge:20]) {
            NSLog(@"Yes");
        } else {
            NSLog(@"No");
        }
        
        // Note: Senging a message to nil does not crash!
        // In Java lingo => "Calling a method on a null object does not throw a NullPointerException!"
        DateCalculator *calc3 = nil;
        NSLog(@"%d", [calc3 canDatePersonWithAge:30]);
        NSString *str = nil;
        NSLog(@"%@", [str uppercaseString]);
    }
    
    return 0;
}
