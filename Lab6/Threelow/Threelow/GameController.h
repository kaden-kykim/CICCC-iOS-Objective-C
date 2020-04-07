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
@property (nonatomic, strong) NSMutableArray *dice;

- (void)holdDice:(NSInteger)number;
- (void)resetDice;
- (void)randomizeUnheldDice;
- (void)printAllDice;

@end

NS_ASSUME_NONNULL_END
