//
//  AdditionQuestion.m
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    if (self = [super init]) {
        NSInteger op1 = arc4random_uniform(90) + 10, op2 = arc4random_uniform(90) + 10;
        _question = [NSString stringWithFormat:@"%ld + %ld ?", op1, op2];
        _answer = op1 + op2;
    }
    return self;
}

@end
