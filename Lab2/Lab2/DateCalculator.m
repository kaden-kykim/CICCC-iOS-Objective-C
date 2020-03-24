//
//  DateCalculator.m
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "DateCalculator.h"

/*
 Method in Obj-C
 1. instance method (-)
 2. class method (+)
 */

@implementation DateCalculator {
    // private instance variable -> _var (convention)
    float _myAge;
}

+ (void) sayHelloWith: (NSString *) message andName: (NSString *) name {
    NSLog(@"Hello, %@. %@", name, message);
}

- (float) myAge {
    return _myAge;
}

- (void) setMyAge: (float) myAge {
    _myAge = myAge;
}

@end
