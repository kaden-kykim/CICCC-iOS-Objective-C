//
//  Greeter.h
//  Greeter
//
//  Created by Kaden Kim on 2020-04-06.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GreeterDelegate

@required
- (BOOL)shouldSayhello;

@end

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;

- (void)greeting;

@end

NS_ASSUME_NONNULL_END
