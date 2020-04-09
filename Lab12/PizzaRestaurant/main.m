//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        DeliveryService *deliveryService = [DeliveryService new];
        Manager *manager = [[Manager alloc] initWithDeliveryService:deliveryService];
        Kitchen *restaurantKitchen = [Kitchen new];
        restaurantKitchen.delegate = manager;
        
        while (TRUE) {
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            Pizza *orderedPizza = [restaurantKitchen makePizza:commandWords];
            NSLog(@"Pizza: size: %ld, topping: %@", orderedPizza.size, [orderedPizza.toppings componentsJoinedByString:@", "]);
            
            NSLog(@"Delivered Pizza List:\n[%@]", [[deliveryService deliveredPizza] componentsJoinedByString:@"]\n["]);
        }
    }
    return 0;
}
