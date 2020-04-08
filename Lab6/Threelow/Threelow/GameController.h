//
//  GameController.h
//  Threelow
//
//  Created by Kaden Kim on 2020-04-07.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property (nonatomic, readonly, assign) NSInteger COUNT;
@property (nonatomic, readonly, strong) NSArray *dice;
@property (nonatomic, strong) NSMutableSet *heldDice;

- (void)holdDie:(NSInteger)number;
- (void)resetDice;
- (void)randomizeUnheldDice;
- (void)printAllDice;

@end

NS_ASSUME_NONNULL_END
