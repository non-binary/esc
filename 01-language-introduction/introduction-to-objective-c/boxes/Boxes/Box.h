//  Created by @non-binary on 2020-11-27.

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float depth;

- (instancetype)initWithHeight: (float)height width: (float)width depth: (float)depth;

- (float)calculateVolume;
- (float)canFitInsideBox: (Box *)otherBox;

@end
