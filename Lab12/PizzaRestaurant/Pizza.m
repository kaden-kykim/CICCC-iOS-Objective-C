//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-03-29.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(PizzaSize)size AndToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        if (size == UNDEFINED && ![@[@"pepperoni", @"meatlovers"] containsObject:toppings[0]])
            return NULL;
        
        _size = (size != UNDEFINED) ? size : LARGE;
        if ([toppings[0] isEqualToString:@"meatlovers"]) {
            _toppings = @[@"ham", @"bacon", @"sausage", @"pepperoni"];
        } else {
            _toppings = toppings;
        }
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ Pizza with %@", [[Pizza sizeToString:_size] capitalizedString], [_toppings componentsJoinedByString:@", "]];
}

+ (PizzaSize)sizeFromString:(NSString *)sizeString {
    NSString *sizeStr = [sizeString lowercaseString];
    if ([sizeStr isEqualToString:@"small"]) {
        return SMALL;
    } else if ([sizeStr isEqualToString:@"medium"]) {
        return MEDIUM;
    } else if ([sizeStr isEqualToString:@"large"]) {
        return LARGE;
    }
    return UNDEFINED;
}

+ (NSString *)sizeToString:(PizzaSize)size {
    switch (size) {
        case SMALL: return @"small";
        case MEDIUM: return @"medium";
        case LARGE: return @"large";
        default: return @"";
    }
}

@end
