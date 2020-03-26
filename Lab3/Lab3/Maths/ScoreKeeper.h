//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Kaden Kim on 2020-03-25.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger right, wrong;
-(NSString *)outputScore;

@end
