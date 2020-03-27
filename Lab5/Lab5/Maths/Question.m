//
//  Question.m
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    if (self = [super init]) {
        _leftValue = arc4random_uniform(90) + 10;
        _rightValue = arc4random_uniform(90) + 10;
        _startTime = [NSDate date];
    }
    return self;
}

// overriding getter
- (NSInteger) answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)timeToAnswer {
    return [_endTime timeIntervalSinceDate:_startTime];
}

- (void)generateQuestion {}

@end
