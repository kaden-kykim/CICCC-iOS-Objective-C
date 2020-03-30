//
//  main.m
//  Category
//
//  Created by Derrick Park on 3/27/20.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+WaterMark.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSString *name = @"Daniel";
    NSLog(@"%@", [name addWaterMark]);
  }
  return 0;
}
