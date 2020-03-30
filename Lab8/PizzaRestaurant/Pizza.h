//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Kaden Kim on 2020-03-29.
//  Copyright © 2020 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    SMALL,
    MEDIUM,
    LARGE,
    UNDEFINED = NSUIntegerMax
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic, readonly, assign) PizzaSize size;
@property (nonatomic, readonly, strong) NSArray *toppings;

- (instancetype)initWithSize:(PizzaSize)size AndToppings:(NSArray *)toppings;

+ (Pizza *)pepperoniWithSize:(PizzaSize)size;
+ (Pizza *)meatLoversWithSize:(PizzaSize)size;

+ (PizzaSize)sizeFromString:(NSString *)sizeString;

@end

