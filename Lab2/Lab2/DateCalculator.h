//
//  DateCalculator.h
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

/*
 .h (header file - public interface)
 .m (implementation file - your implementation)
 */

#import <Foundation/Foundation.h>

@interface DateCalculator : NSObject

// property -> instance var + getter + setter
@property (nonatomic, assign) float myAge;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithMyAge:(float) myAge andName:(NSString *) name;
- (BOOL) canDatePersonWithAge:(float) age;
+ (void) sayHelloWith: (NSString *) message andName: (NSString *) name;
//- (float) myAge;
//- (void) setMyAge: (float) myAge;

@end
