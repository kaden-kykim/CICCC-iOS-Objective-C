//
//  main.m
//  Threelow
//
//  Created by Kaden Kim on 2020-04-07.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

void randomizeAllDice(NSArray *allDice) {
    for (Dice *dice in allDice)
        [dice randomizeValue];
}

void printAllDice(NSArray *allDice) {
    NSString *printStr = @"";
    for (Dice *dice in allDice)
        printStr = [printStr stringByAppendingFormat:@"%@ ", [dice getUniValue]];
    NSLog(@"%@", printStr);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *dice = [[NSMutableArray alloc] init];
        for (int i = 0; i < 5; ++i)
            [dice addObject:[Dice new]];
        randomizeAllDice(dice);
        printAllDice(dice);
    }
    return 0;
}
