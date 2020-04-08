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
        NSMutableArray *tmpDice = [NSMutableArray new];
        for (int i = 0; i < _COUNT; ++i)
            [tmpDice addObject:[Dice new]];
        _dice = tmpDice;
        _heldDice = [NSMutableSet new];
    }
    return self;
}

- (void)holdDie:(NSInteger)number {
    Dice *selDie = _dice[number - 1];
    ([_heldDice containsObject:selDie]) ? [_heldDice removeObject:selDie] : [_heldDice addObject:selDie];
}

- (void)resetDice {
    [_heldDice removeAllObjects];
}

- (void)randomizeUnheldDice {
    for (Dice *die in _dice)
        if ([_heldDice containsObject:die])
            [die randomizeValue];
}

- (NSInteger)getCurrentScore {
    NSInteger curScore = 0;
    for (Dice *die in _heldDice)
        curScore += die.value;
    return curScore;
}

- (void)printAllDice {
    NSLog(@"===================");
    NSLog(@"-- Current  Dice --");
    NSString *printStr = @"";
    for (Dice *die in _dice)
        printStr = [printStr stringByAppendingFormat:([_heldDice containsObject:die]) ? @"[%@] " : @" %@  ", [die getUniValue]];
    NSLog(@"%@", printStr);
    NSLog(@"");
    NSLog(@"--  Total Score  --");
    NSLog(@"    Score : %ld", [self getCurrentScore]);
    NSLog(@"===================");
}

@end
