//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject <KitchenDelegate>;

- (instancetype)initWithDeliveryService:(DeliveryService *)deliveryService;

@end

NS_ASSUME_NONNULL_END
