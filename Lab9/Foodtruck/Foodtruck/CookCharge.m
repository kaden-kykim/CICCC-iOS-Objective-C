//
//  CookCharge.m
//  Foodtruck
//
//  Created by Kaden Kim on 2020-04-06.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import "CookCharge.h"

@implementation CookCharge

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString:@"bao"]) {
        return 4.25;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 6.0;
    }
    return 0.0;
}

@end
