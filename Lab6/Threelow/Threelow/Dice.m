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
