//
//  main.m
//  Lab3
//
//  Created by Kaden Kim on 2020-03-25.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "collectionsEx.h"
#import "Maths/AdditionQuestion.h"
#import "Maths/InputHandler.h"
#import "Maths/ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Lecture contents
        // collectionsExamples();
        
        // Lab3: Maths - A Command Line Game App
        NSLog(@"MATHS!");
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        BOOL gameOn = YES;
        while (gameOn) {
            AdditionQuestion *addQuestion = [AdditionQuestion new];
            NSLog(@"%@", addQuestion.question);
            NSString *input = [InputHandler getUserInput:128];
            if ([input isEqualTo:@"quit"]) {
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
