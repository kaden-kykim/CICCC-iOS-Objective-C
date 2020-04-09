//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

- (NSArray *)deliveredPizza;
- (void)deliverPizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
