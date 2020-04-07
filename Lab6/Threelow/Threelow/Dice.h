//
//  Dice.h
//  Threelow
//
//  Created by Kaden Kim on 2020-04-07.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property (nonatomic, assign) NSInteger value;
@property (nonatomic, assign) BOOL isHeld;

- (void)randomizeValue;
- (NSString *)getUniValue;
- (void)toggleHeldStatus;

@end

NS_ASSUME_NONNULL_END
