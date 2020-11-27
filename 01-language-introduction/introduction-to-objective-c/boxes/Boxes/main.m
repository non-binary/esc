//  Created by @non-binary on 2020-11-27.

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialise the first box.
        Box *firstBox = [[Box alloc] initWithHeight:10.0 width:20.0 depth:40.0];
        NSLog(@"First Box Volume: %f", [firstBox calculateVolume]);
        
        // Initialise the second box.
        Box *secondBox = [[Box alloc] initWithHeight:100.0 width:40.0 depth:60.00];
        NSLog(@"Second Box Volume: %f", [secondBox calculateVolume]);
        
        // Calculate how many times the first box can fit inside of the second box.
        NSLog(@"The first box can fit inside the second box: %f times", [firstBox canFitInsideBox:secondBox]);
    }
    return 0;
}
