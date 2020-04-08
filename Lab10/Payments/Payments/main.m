//
//  main.m
//  Payments
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NSString *userInput() {
    char buf[256];
    return [[NSString stringWithUTF8String:fgets(buf, 256, stdin)] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger amount = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com.");
        NSLog(@"Your total is $%ld", amount);
        while (YES) {
            NSLog(@"Please select your payment method: 1. Paypal, 2. Stripe, 3. Amazon");
            int inputNum = [[[NSNumberFormatter new] numberFromString:userInput()] intValue];
            if (inputNum > 0 && inputNum <= 3) {
                NSLog(@"You selected %d", inputNum);
                break;
            } else {
                NSLog(@"Please input again.");
            }
        }
        
        PaymentGateway *pg = [PaymentGateway new];
        [pg processPaymentAmount:amount];
    }
    return 0;
}
