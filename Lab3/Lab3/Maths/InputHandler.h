//
//  InputHandler.h
//  Lab3
//
//  Created by Kaden Kim on 2020-03-25.
//  Copyright © 2020 CICCC. All rights reserved.
//

#define MATHS_INPUT_LENGTH 255

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

+(NSString *)getUserInput:(int) maxLength;
+(NSString *)getUserInput:(int) maxLength WithPrompt:(NSString *)prompt;

@end
