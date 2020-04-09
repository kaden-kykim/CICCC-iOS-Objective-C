//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

- (void)deliverPizza:(Pizza *)pizza {
    NSLog(@"Delivered: %@", pizza.description);
}

@end
