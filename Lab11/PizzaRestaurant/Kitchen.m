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
    if (size == UNDEFINED) {
        if ([commandWords count] != 1) {
            size = [Pizza sizeFromString:commandWords[1]];
        }
        NSString *pizzaMenu = [commandWords[0] lowercaseString];
        if ([pizzaMenu isEqualToString:@"pepperoni"]) {
            return [Pizza pepperoniWithSize:size];
        } else if ([pizzaMenu isEqualToString:@"meatlovers"]) {
            return [Pizza meatLoversWithSize:size];
        }
    } else {
        return [self makePizzaWithSize:size toppings:[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)]];
    }
    return NULL;
}

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    return [[Pizza alloc] initWithSize:size AndToppings:toppings];
}

@end
