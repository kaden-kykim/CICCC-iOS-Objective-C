//
//  main.m
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maths/QuestionManager.h"
#import "Maths/QuestionFactory.h"
#import "Maths/InputHandler.h"
#import "Maths/ScoreKeeper.h"
#import "Maths/Question.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Lab5: Maths - Part2
        NSLog(@"MATHS!");
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];

        NSString *ansRight = @"Right!", *ansWrong = @"Wrong";
        BOOL gameOn = YES;
        
        while (gameOn) {
            Question *question = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:question];
            NSLog(@"%@", question.question);
            NSString *input = [InputHandler getUserInput:128];
            if ([input isEqualTo:@"quit"]) {
                gameOn = NO;
                continue;
            }
            NSInteger ans = [input intValue];
            if (question.answer == ans) {
                NSLog(@"%@", ansRight);
                scoreKeeper.right++;
            } else {
                NSLog(@"%@", ansWrong);
                scoreKeeper.wrong++;
            }
            NSLog(@"%@", [scoreKeeper outputScore]);
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
