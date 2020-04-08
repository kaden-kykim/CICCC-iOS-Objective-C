//
//  main.m
//  Threelow
//
//  Created by Kaden Kim on 2020-04-07.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"

void printInstructions() {
    NSLog(@"\n%@\n%@\n%@\n%@\n%@\n%@\n%@",
          @"\'roll\'  to roll the dice",
          @"\'hold\'  to hold a dice",
          @"\'reset\' to un-hold all dice",
          @"\'disp\'  to show current stats",
          @"\'new\'   to start new game",
          @"\'end\'   to end the game",
          @"\'done\'  to exit the game");
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
        GameController *gameCtrl = [GameController new];
        [gameCtrl printAllDice];
        while (YES) {
            NSString *opt = getUserInput(NULL);
            if ([opt isEqualToString:@"roll"]) {
                if (![gameCtrl isGameOver]) {
                    [gameCtrl rollDice];
                    [gameCtrl printAllDice];
                } else NSLog(@"The game is over");
            } else if ([opt isEqualToString:@"roIl"]) {
                if (![gameCtrl isGameOver]) {
                    [gameCtrl roIlDice];
                    [gameCtrl printAllDice];
                } else NSLog(@"The game is over");
            } else if ([opt isEqualToString:@"hold"]) {
                if (![gameCtrl isGameOver]) {
                    NSNumber *holdNum = [[NSNumberFormatter new] numberFromString:getUserInput(@"Enter the number of the die:")];
                    if (holdNum != nil) {
                        NSInteger holdOpt = [holdNum integerValue];
                        if (holdOpt >= 1 && holdOpt <= 6) {
                            [gameCtrl holdDie:holdOpt];
                            [gameCtrl printAllDice];
                        }
                    }
                } else NSLog(@"The game is over");
            } else if ([opt isEqualToString:@"reset"]) {
                if (![gameCtrl isGameOver]) {
                    [gameCtrl resetDice];
                    [gameCtrl printAllDice];
                } else NSLog(@"The game is over");
            } else if ([opt isEqualToString:@"disp"]) {
                [gameCtrl printAllDice];
            } else if ([opt isEqualToString:@"new"]) {
                [gameCtrl newGame];
                [gameCtrl printAllDice];
            } else if ([opt isEqualToString:@"end"]) {
                if (![gameCtrl isGameOver]) {
                    [gameCtrl endGame];
                }
                [gameCtrl printAllDice];
            } else if ([opt isEqualToString:@"done"]) {
                break;
            } else {
                NSLog(@"Unknown command. Please try again...");
            }
        }
    }
    return 0;
}
