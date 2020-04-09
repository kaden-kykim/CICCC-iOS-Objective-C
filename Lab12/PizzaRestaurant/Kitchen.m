//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizza:(NSArray *)commandWords {
    PizzaSize size = [Pizza sizeFromString:commandWords[0]];
    NSMutableArray *toppings = [NSMutableArray new];
    if (size == UNDEFINED) {
        if ([commandWords count] != 1)
            size = [Pizza sizeFromString:commandWords[1]];
        [toppings addObject:[commandWords[0] lowercaseString]];
    } else {
        if ([_delegate kitchenShouldUpgradeOrder:self])
            size = MIN(size + 1, LARGE);
        [toppings addObjectsFromArray:[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)]];
    }

    if ([_delegate kitchen:self shouldMakePizzaOfSize:size andTopping:[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)]]) {
        Pizza *pizza = [self makePizzaWithSize:size toppings:toppings];
        if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)])
            [_delegate kitchenDidMakePizza:pizza];
        return pizza;
    }
    return NULL;
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    return [[Pizza alloc] initWithSize:size AndToppings:toppings];
}

@end
