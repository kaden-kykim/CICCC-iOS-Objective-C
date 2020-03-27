//
//  SubtractionQuestion.m
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
    super.answer = super.leftValue - super.rightValue;
    super.question = [NSString stringWithFormat:@"%ld - %ld ?", super.leftValue, super.rightValue];
}

@end
