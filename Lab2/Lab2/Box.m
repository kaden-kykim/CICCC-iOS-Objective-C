//
//  Box.m
//  Lab2
//
//  Created by Kaden Kim on 2020-03-24.
//  Copyright © 2020 CICCC. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype)initWithWidth:(float) width andHeight:(float) height andLength:(float) length {
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}

-(float)getVolume {
    return _width * _height * _length;
}

-(int)getNumberOfBoxesFitInTheOther:(Box *) theOther {
    return (int) floorf([theOther getVolume] / self.getVolume);
}

@end
