//
//  main.m
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DateCalculator.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // For Box Lab
        Box *the1stBox = [[Box alloc] initWithWidth:5.5f andHeight:3.5f andLength:10.2f];
        float rawCalcVol = the1stBox.width * the1stBox.height * the1stBox.length;
        float calcVol = [the1stBox getVolume];
        NSLog(@"Raw Calculated Volume: %.2f", rawCalcVol);
        NSLog(@"Calculated Volume by Method: %.2f", calcVol);
        NSLog(@"Are they the same? %@", (rawCalcVol == calcVol) ? @"Yes" : @"No");
        
        Box *the2ndBox = [[Box alloc] initWithWidth:10.5f andHeight:7.2f andLength:20.8f];
        NSLog(@"The Volume of the 1st box: %.2f and the 2nd box: %.2f", the1stBox.getVolume, the2ndBox.getVolume);
        NSLog(@"The 1st %d boxes are fit in the 2nd box.", [the1stBox getNumberOfBoxesFitInTheOther:the2ndBox]);
        NSLog(@"The 2nd %d boxes are fit in the 1st box.", [the2ndBox getNumberOfBoxesFitInTheOther:the1stBox]);
        
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
