//
//  NSString+WaterMark.m
//  Category
//
//  Created by Derrick Park on 3/27/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import "NSString+WaterMark.h"

@implementation NSString (WaterMark)

- (NSString *) addWaterMark {
  return [@"CICCC " stringByAppendingString:self];
}

@end
