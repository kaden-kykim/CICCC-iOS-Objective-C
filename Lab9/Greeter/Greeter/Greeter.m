//
//  Greeter.m
//  Greeter
//
//  Created by Kaden Kim on 2020-04-06.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void)greeting {
    NSLog(@"%@", [self.delegate shouldSayhello] ? @"Hello" : @"...");
}

@end
