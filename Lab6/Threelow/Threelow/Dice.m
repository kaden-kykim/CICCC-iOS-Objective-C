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
        _isHeld = false;
    }
    return self;
}

- (void)randomizeValue {
    self.value = arc4random_uniform(5) + 1;
}

- (NSString *)getUniValue {
    switch (self.value) {
        case 1: return @"⚀";
        case 2: return @"⚁";
        case 3: return @"⚂";
        case 4: return @"⚃";
        case 5: return @"⚄";
        case 6: return @"⚅";
        default: return @"";
    }
}

@end
