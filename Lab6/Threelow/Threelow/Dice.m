//
//  Dice.m
//  Threelow
//
//  Created by Kaden Kim on 2020-04-07.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _value = [Dice generateRandomNumber];
        _isHeld = false;
    }
    return self;
}

+ (NSInteger)generateRandomNumber {
    return arc4random_uniform(6) + 1;
}

- (void)randomizeValue {
    self.value = [Dice generateRandomNumber];
}

- (NSString *)getUniValue {
    switch (self.value) {
        case 1: return (_isHeld) ? @"[⚀]" : @" ⚀ ";
        case 2: return (_isHeld) ? @"[⚁]" : @" ⚁ ";
        case 3: return (_isHeld) ? @"[⚂]" : @" ⚂ ";
        case 4: return (_isHeld) ? @"[⚃]" : @" ⚃ ";
        case 5: return (_isHeld) ? @"[⚄]" : @" ⚄ ";
        case 6: return (_isHeld) ? @"[⚅]" : @" ⚅ ";
        default: return @"";
    }
}

- (void)toggleHeldStatus {
    self.isHeld = !self.isHeld;
}

@end
