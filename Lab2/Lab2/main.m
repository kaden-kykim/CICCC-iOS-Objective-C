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
        DateCalculator *calc = [[DateCalculator alloc] init];
        [calc setMyAge:30.2]; // calc.myAge = 30.2;
        NSLog(@"%.1f", calc.myAge);
        
        [DateCalculator sayHelloWith:@"How are you?" andName:@"Kaden"];
    }
    return 0;
}
