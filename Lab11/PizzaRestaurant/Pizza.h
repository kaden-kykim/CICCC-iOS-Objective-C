//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-03-29.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PizzaSize) {
    SMALL,
    MEDIUM,
    LARGE,
    UNDEFINED = NSUIntegerMax
};

@interface Pizza : NSObject

@property (nonatomic, readonly, assign) PizzaSize size;
@property (nonatomic, readonly, strong) NSArray *toppings;

- (instancetype)initWithSize:(PizzaSize)size AndToppings:(NSArray *)toppings;

+ (PizzaSize)sizeFromString:(NSString *)sizeString;
+ (NSString *)sizeToString:(PizzaSize)size;

@end

