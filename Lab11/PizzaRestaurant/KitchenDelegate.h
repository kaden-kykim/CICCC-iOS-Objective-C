//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-04-09.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

@class Kitchen;

@protocol KitchenDelegate <NSObject>

@required
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andTopping:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end
