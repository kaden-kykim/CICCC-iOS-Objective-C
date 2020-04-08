//
//  PaymentGateway.h
//  Payments
//
//  Created by Kaden Kim on 2020-04-08.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

@required
- (void)processPaymentAmount:(NSInteger)amount;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void)processPaymentAmount:(NSInteger)amount;

@end

NS_ASSUME_NONNULL_END
