//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andTopping:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"Hey, chef! Thanks for this %@ pizza with %@!", [Pizza sizeToString:pizza.size], [pizza.toppings componentsJoinedByString:@", "]);
}

@end
