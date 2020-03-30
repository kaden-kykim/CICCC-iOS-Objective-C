//
//  main.m
//  Lab13
//
//  Created by Kaden Kim on 2020-03-29.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin/NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    char str[1024];
    @autoreleasepool {
        while (TRUE) {
            NSLog(@"Input a sentence >");
            fgets(str, 1024, stdin);
            NSString *input = [[[NSString alloc] initWithUTF8String:str] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Pig Latinization: %@", [input stringByPigLatinization]);
        }
    }
    return 0;
}
