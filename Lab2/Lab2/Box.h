//
//  Box.h
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float width, height, length;
-(instancetype)initWithWidth:(float) width andHeight:(float) height andLength:(float) length;
-(float)getVolume;
-(int)getNumberOfBoxesFitInTheOther:(Box *) theOther;

@end
