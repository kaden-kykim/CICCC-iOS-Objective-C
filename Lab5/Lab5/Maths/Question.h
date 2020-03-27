//
//  Question.h
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, assign) NSInteger leftValue, rightValue;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime, *endTime;

- (void)generateQuestion;
- (NSTimeInterval)timeToAnswer;

@end
