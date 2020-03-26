//
//  InputHandler.m
//  Lab3
//
//  Created by Kaden Kim on 2020-03-25.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)getUserInput:(int) maxLength {
    if (maxLength < 1) {
        maxLength = 255;
    }
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        return [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

+(NSString *)getUserInput:(int) maxLength WithPrompt:(NSString *)prompt {
    if (prompt != NULL) {
        NSLog(@"%@", prompt);
    }
    NSString *input = [self getUserInput:maxLength];
    return input;
}

@end
