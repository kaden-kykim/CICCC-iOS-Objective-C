//
//  StripePaymentService.m
//  Payments
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Stripe processed amount $%ld", amount);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2) != 0;
}

@end
