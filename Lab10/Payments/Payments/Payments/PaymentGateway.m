//
//  PaymentGateway.m
//  Payments
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)amount {
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"The payment system is not available at this moment. We apologize for any inconvenient");
    }
}

@end
