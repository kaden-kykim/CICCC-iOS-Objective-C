//
//  GameController.m
//  Threelow
//
//  Created by Kaden Kim on 2020-04-07.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _COUNT = 5;
        _dice = [NSMutableArray new];        
        for (int i = 0; i < _COUNT; ++i)
            [_dice addObject:[Dice new]];
    }
    return self;
}

- (void)holdDice:(NSInteger)number {
    [_dice[number - 1] toggleHeldStatus];
}

- (void)resetDice {
    for (Dice *die in _dice)
        die.isHeld = false;
}

- (void)randomizeUnheldDice {
    for (Dice *die in _dice)
        if (!die.isHeld)
            [die randomizeValue];
}

- (NSInteger)getCurrentScore {
    NSInteger curScore = 0;
    for (Dice *die in _dice)
        if (die.isHeld) curScore += die.value;
    return curScore;
}

- (void)printAllDice {
    NSLog(@"===================");
    NSLog(@"-- Current  Dice --");
    NSString *printStr = @"";
    for (Dice *die in _dice)
        printStr = [printStr stringByAppendingFormat:@"%@ ", [die getUniValue]];
    NSLog(@"%@", printStr);
    NSLog(@"");
    NSLog(@"--  Total Score  --");
    NSLog(@"    Score : %ld", [self getCurrentScore]);
    NSLog(@"===================");
}

@end
