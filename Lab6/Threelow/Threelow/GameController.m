//
//  GameController.m
//  Threelow
//
//  Created by Kaden Kim on 2020-04-07.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "GameController.h"

const NSInteger COUNT = 5;

@interface GameController()

@property (nonatomic, readonly, strong) NSArray *dice;
@property (nonatomic, strong) NSSet *compHeldDice;
@property (nonatomic, strong) NSMutableSet *heldDice;
@property (nonatomic, assign) NSInteger remainingRolls;

@end

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSMutableArray *tmpDice = [NSMutableArray new];
        for (int i = 0; i < COUNT; ++i)
            [tmpDice addObject:[Dice new]];
        _dice = tmpDice;
        _heldDice = [NSMutableSet new];
        _remainingRolls = COUNT;
    }
    return self;
}

- (void)holdDie:(NSInteger)number {
    if (_remainingRolls > 0) {
        Dice *selDie = _dice[number - 1];
        ([_heldDice containsObject:selDie]) ? [_heldDice removeObject:selDie] : [_heldDice addObject:selDie];
    }    
}

- (void)holdAllDice {
    [self resetDice];
    [_heldDice addObjectsFromArray:_dice];
}

- (void)resetDice {
    [_heldDice removeAllObjects];
}

- (void)randomizeUnheldDice {
    if (_remainingRolls > 0) {
        if ([_heldDice isEqualToSet:_compHeldDice]) {
            NSLog(@"Must select(hold/unhold) at least one die.");
        } else if ([_heldDice count] == COUNT) {
            NSLog(@"All dice are held.");
        } else {
            for (Dice *die in _dice)
                if (![_heldDice containsObject:die])
                    [die randomizeValue];
            _remainingRolls--;
            _compHeldDice = [_heldDice copy];
        }
    }
    if (_remainingRolls == 0) {
        [self holdAllDice];
        _remainingRolls--;
    }
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
    NSLog(@"Remaining Rolls : %ld", MAX(_remainingRolls, 0));
    NSLog(@"===================");
    if (_remainingRolls <= 0) {
        NSLog(@" G A M E   O V E R");
        NSLog(@"===================");
    }
}

@end
