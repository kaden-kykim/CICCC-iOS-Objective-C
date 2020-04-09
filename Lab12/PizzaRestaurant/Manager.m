//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "Manager.h"

@interface Manager()
    
@property (nonatomic, readonly, strong) DeliveryService *deliveryService;

@end

@implementation Manager

- (instancetype)initWithDeliveryService:(DeliveryService *)deliveryService
{
    self = [super init];
    if (self) {
        _deliveryService = deliveryService;
    }
    return self;
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andTopping:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    if (pizza != NULL) {
        NSLog(@"Hey, chef! Thanks for this %@ pizza with %@!", [Pizza sizeToString:pizza.size], [pizza.toppings componentsJoinedByString:@", "]);
        [_deliveryService deliverPizza:pizza];
    }
}

@end
