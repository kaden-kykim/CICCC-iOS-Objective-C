//
//  main.m
//  Payments
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *userInput() {
    char buf[256];
    return [[NSString stringWithUTF8String:fgets(buf, 256, stdin)] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger total = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com.");
        NSLog(@"Your total is $%ld", total);
        NSLog(@"Please select your payment method: 1. Paypal, 2. Stripe, 3. Amazon");
        int inputNum = [[[NSNumberFormatter new] numberFromString:userInput()] intValue];
        if (inputNum > 0 && inputNum <= 3)
            NSLog(@"You selected %d", inputNum);
        else
            NSLog(@"Please input again.");
    }
    return 0;
}
