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

void printInstructions() {
    NSLog(@"\n%@", @"\'roll\'  to roll the dice");
}

NSString *getUserInput(NSString *prompt) {
    if (prompt == NULL) printInstructions();
    else NSLog(@"%@", prompt);
    char buf[255];
    char *input = fgets(buf, 255, stdin);
    if (input != NULL) return [[NSString stringWithUTF8String:input] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return NULL;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *dice = [[NSMutableArray alloc] init];
        for (int i = 0; i < 5; ++i)
            [dice addObject:[Dice new]];
        
        while (YES) {
            NSString *opt = getUserInput(NULL);
            if ([opt isEqualToString:@"roll"]) {
                randomizeAllDice(dice);
                printAllDice(dice);
            }
        }
    }
    return 0;
}
