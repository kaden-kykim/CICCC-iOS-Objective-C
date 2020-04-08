//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Paypal processed amount $%ld", amount);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2) != 0;
}

@end
