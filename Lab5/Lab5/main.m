//
//  main.m
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maths/AdditionQuestion.h"
#import "Maths/InputHandler.h"
#import "Maths/ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Lab5: Maths - Part2
        NSLog(@"MATHS!");
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        BOOL gameOn = YES;
        while (gameOn) {
            AdditionQuestion *addQuestion = [AdditionQuestion new];
            NSLog(@"%@", addQuestion.question);
            NSString *input = [InputHandler getUserInput:128];
            if ([NSString isEqualTo:input]) {
                gameOn = NO;
                continue;
            }
            NSInteger ans = [input intValue];
            if (addQuestion.answer == ans) {
                NSLog(@"Right!");
                scoreKeeper.right++;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
            }
            NSLog(@"%@", [scoreKeeper outputScore]);
        }
    }
    return 0;
}
