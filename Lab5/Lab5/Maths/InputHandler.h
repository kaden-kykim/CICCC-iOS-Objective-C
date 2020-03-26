//
//  InputHandler.h
//  Lab5
//
//  Created by Kaden Kim on 2020-03-26.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

+ (NSString *)getUserInput:(int) maxLength;
+ (NSString *)getUserInput:(int) maxLength WithPrompt:(NSString *)prompt;

@end
