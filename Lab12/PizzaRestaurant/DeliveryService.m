//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@interface DeliveryService()

@property (nonatomic, strong) DeliveryCar *deliveryCar;
@property (nonatomic, strong) NSMutableArray *deliveredPizza;

@end

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveryCar = [DeliveryCar new];
        _deliveredPizza = [NSMutableArray new];
    }
    return self;
}

- (NSArray *)deliveredPizza {
    NSMutableArray *retVal = [NSMutableArray new];
    for (Pizza *pizza in _deliveredPizza)
        [retVal addObject:[pizza description]];
    return retVal;
}

- (void)deliverPizza:(Pizza *)pizza {
    [_deliveryCar deliverPizza:pizza];
    [_deliveredPizza addObject:pizza];
}

@end
