//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Kaden Kim on 2020-03-25.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)outputScore {
    return [NSString stringWithFormat:@"Score: %ld right, %ld wrong ---- %ld%%", _right, _wrong, 100 * _right / (_right + _wrong)];
}

@end
