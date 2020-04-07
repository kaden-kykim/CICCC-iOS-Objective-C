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
    [self.dice[number - 1] toggleHeldStatus];
}

- (void)resetDice {
    for (Dice *die in self.dice)
        die.isHeld = false;
}

- (void)randomizeUnheldDice {
    for (Dice *die in self.dice)
        if (!die.isHeld)
            [die randomizeValue];
}

- (void)printAllDice {
    NSString *printStr = @"";
    for (Dice *die in self.dice)
        printStr = [printStr stringByAppendingFormat:(die.isHeld) ? @"[%@] " : @" %@  ", [die getUniValue]];
    NSLog(@"%@", printStr);
}

@end
