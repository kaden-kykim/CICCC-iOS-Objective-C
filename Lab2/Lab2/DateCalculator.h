//
//  DateCalculator.h
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateCalculator : NSObject

+ (void) sayHelloWith: (NSString *) message andName: (NSString *) name;
- (float) myAge;
- (void) setMyAge: (float) myAge;

@end
