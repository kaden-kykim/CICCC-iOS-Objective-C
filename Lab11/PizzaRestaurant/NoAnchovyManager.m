//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "NoAnchovyManager.h"

@implementation NoAnchovyManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andTopping:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"] || [toppings containsObject:@"anchovy"]) {
        return NO;
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
