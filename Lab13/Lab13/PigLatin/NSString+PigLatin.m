//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Kaden Kim on 2020-03-29.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *)stringByPigLatinization {
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSMutableArray *words = [[[self lowercaseString] componentsSeparatedByString:@" "] mutableCopy];
    for (int i = 0; i < [words count]; ++i) {
        NSString *word = words[i];
        if ([vowels characterIsMember:[word characterAtIndex:0]]) {
            words[i] = [[word stringByAppendingString:@"ay"] capitalizedString];
        } else {
            NSArray *tokens = [word componentsSeparatedByCharactersInSet:vowels];
            if ([tokens count] == 1) {
                // (Perhaps) No rule for the word composed by only consonants
                words[i] = [[word stringByAppendingString:@"ay"] capitalizedString];
            } else {
                words[i] = [[[[word substringFromIndex:[tokens[0] length]] stringByAppendingString:tokens[0]] stringByAppendingString:@"ay"] capitalizedString];
            }
        }
    }
    
    return [words componentsJoinedByString:@" "];
}

@end
