//
//  QuestionFactory.h
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Question;

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionSubclassNames;
- (Question *)generateRandomQuestion;

@end
