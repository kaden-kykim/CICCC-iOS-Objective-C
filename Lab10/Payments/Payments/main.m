//
//  main.m
//  Payments
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

const NSInteger NUM_PAYMENT_SERVICE = 4;

NSString *userInput() {
    char buf[256];
    return [[NSString stringWithUTF8String:fgets(buf, 256, stdin)] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger amount = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping @Acme.com.");
        NSLog(@"Your total is $%ld", amount);
        int inputPayment = 0;
        while (YES) {
            NSLog(@"Please select your payment method");
            NSLog(@"1. Paypal, 2. Stripe, 3. Amazon, 4. Apple");
            inputPayment = [[[NSNumberFormatter new] numberFromString:userInput()] intValue];
            if (inputPayment > 0 && inputPayment <= NUM_PAYMENT_SERVICE) {
                NSLog(@"You selected %d", inputPayment);
                break;
            } else {
                NSLog(@"Please input again.");
            }
        }
        
        PaymentGateway *pg = [PaymentGateway new];
        PaypalPaymentService *paypalPS = [PaypalPaymentService new];
        StripePaymentService *stripePS = [StripePaymentService new];
        AmazonPaymentService *amazonPS = [AmazonPaymentService new];
        ApplePaymentService *applePS = [ApplePaymentService new];
        
        switch (inputPayment) {
            case 1: pg.paymentDelegate = paypalPS; break;
            case 2: pg.paymentDelegate = stripePS; break;
            case 3: pg.paymentDelegate = amazonPS; break;
            case 4: pg.paymentDelegate = applePS; break;
            default: break;
        }
        
        [pg processPaymentAmount:amount];
    }
    return 0;
}
