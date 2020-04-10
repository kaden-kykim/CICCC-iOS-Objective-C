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
    NSArray *clusters = @[@"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    NSMutableArray *words = [[[self lowercaseString] componentsSeparatedByString:@" "] mutableCopy];
    for (int i = 0; i < [words count]; ++i) {
        NSArray *tokens = [words[i] componentsSeparatedByCharactersInSet:vowels];
        words[i] = ([clusters containsObject:[[words[i] substringToIndex:2] lowercaseString]]) ? words[i] = [[[words[i] substringFromIndex:2] stringByAppendingFormat:@"%@ay", [words[i] substringToIndex:2]] capitalizedString] : ([vowels characterIsMember:[words[i] characterAtIndex:0]] || [tokens count] == 1) ? [[words[i] stringByAppendingString:@"ay"] capitalizedString] : [[[words[i] substringFromIndex:[tokens[0] length]] stringByAppendingFormat:@"%@ay", tokens[0]] capitalizedString];
    }
    return [words componentsJoinedByString:@" "];
}

@end
