//
//  DateCalculator.m
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "DateCalculator.h"

@interface DateCalculator() {
    // private properties
    // private methods
}
@end
/*
 Method in Obj-C
 1. instance method (-)
 2. class method (+)
 */

@implementation DateCalculator
// Below lines are replaced by @property
//{
//    // private instance variable -> _var (convention)
//    float _myAge;
//}

//- (float) myAge {
//    return _myAge;
//}
//
//- (void) setMyAge: (float) myAge {
//    _myAge = myAge;
//}

- (instancetype)initWithMyAge:(float) myAge andName:(NSString *) name
{
    self = [super init];
    if (self) {
        _myAge = myAge;
        _name = name;
    }
    return self;
}

- (BOOL) canDatePersonWithAge:(float) age {
    return _myAge / 2 + 7 < age;
}

+ (void) sayHelloWith: (NSString *) message andName: (NSString *) name {
    NSLog(@"Hello, %@. %@", name, message);
}

@end
