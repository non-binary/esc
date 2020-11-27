//  Created by @non-binary on 2020-11-27.

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight: (float)height width: (float)width depth: (float)depth {
    self.height = height;
    self.width = width;
    self.depth = depth;

    return self;
}

- (float)calculateVolume {
    return self.height * self.depth * self.width;
}

- (float)canFitInsideBox: (Box *)otherBox {
    return  [otherBox calculateVolume] / [self calculateVolume];
}

@end
