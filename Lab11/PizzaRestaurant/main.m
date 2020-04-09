//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "NoAnchovyManager.h"
#import "CheeryManager.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        NoAnchovyManager *noAnchovyManager = [NoAnchovyManager new];
        CheeryManager *cheeryManager = [CheeryManager new];
        NSInteger count = 0;
        
        while (TRUE) {
            // Loop forever
            switch (count++ % 3) {
                case 0:
                    restaurantKitchen.delegate = noAnchovyManager;
                    NSLog(@"Manager: No Anchovies");
                    break;
                case 1:
                    restaurantKitchen.delegate = cheeryManager;
                    NSLog(@"Manager: Cheery");
                    break;
                default:
                    restaurantKitchen.delegate = nil;
                    NSLog(@"Manager: None");
                    break;
            }
            
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
            NSLog(@"Pizza size: %ld, topping: %@", orderedPizza.size, orderedPizza.toppings);
        }
    }
    return 0;
}
