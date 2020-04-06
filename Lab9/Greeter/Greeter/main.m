//
//  main.m
//  Greeter
//
//  Created by Kaden Kim on 2020-04-06.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "FriendlyGreetingDecider.h"
#import "RudeGreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Greeter *greeter = [Greeter new];
        FriendlyGreetingDecider *friendlyGreetingDecider = [FriendlyGreetingDecider new];
        RudeGreetingDecider *rudeGreetingDecider = [RudeGreetingDecider new];
        
        greeter.delegate = friendlyGreetingDecider;
        [greeter greeting];
        
        greeter.delegate = rudeGreetingDecider;
        [greeter greeting];
    }
    return 0;
}
