# Boxes

This assignment will teach you the basics of Objective-C syntax. Do not copy paste code, write it out yourself.

## Getting Started

1. Install Xcode from the Mac App Store.
2. Create a new Xcode project using the macOS Command Line Tool template and select Objective-C as the language.
3. Create a GitHub repository for this project.
4. Clone and commit the empty project to your repository.

## Create a Cocoa Class

Before we can define the implementation of our Box object, we need to create a new Cocoa class.

To create a new Cocoa class, press the command key + the letter N on your keyboard at the same time inside your Xcode project.

<img width="1512" alt="Screen Shot 2020-11-27 at 7 41 10 AM" src="https://user-images.githubusercontent.com/6799989/100450606-fab5ce80-3083-11eb-8df2-424320ddb469.png">

Then name your Cocoa class "Box" and make sure Objective-C is the selected language.

<img width="1512" alt="Screen Shot 2020-11-27 at 7 43 53 AM" src="https://user-images.githubusercontent.com/6799989/100450843-52543a00-3084-11eb-8c8d-2ab453805983.png">

## Define your Header

Objective-C classes consist of two files a `.h` header file and a `.m` implementation file. Public facing properties, methods, etc are defined in the `.h` file so they can be accessed in other places in your code. The implementations of these methods go in the `.m` file along with private methods.

```objective-c
#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float depth;

- (instancetype)initWithHeight: (float)height width: (float)width depth: (float)depth;

- (float)calculateVolume;
- (float)canFitInsideBox: (Box *)otherBox;

@end
```

Let's break this down.

1. The `@interface` line creates the header file of class `NSObject`. Box is a subclass of `NSObject`.
2. The three `@property` lines create the variables for the Box object. They are of `float` time meaning the value can have a decimal.
3. Thre method line `initWithHeight` exposes a function in our `.m` file that allows us to initialize a `Box` object using height, width and depth values.
4. The next two method lines `calculateVolume` and `canFitInsideBox` also expose methods that are implemented in the `.m` file.
5. The `@end` line denotes that the header definition is finished.

## Define your Implementation

Now that we have our header in our object defined, we can implement the methods that we've created.

```objective-c
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
    return [otherBox calculateVolume] / [self calculateVolume];
}

@end
```

Let's break this down.

1. The `initWithHeight` method that is exposed to the header can be used externally, such as in our `main.m` file. This function assigns the three arguments from the method to their property values in the header.
2. The `calculateVolume` method calculates the height x depth x width to get the volume of the box, returning a `float` value.
3. The `canFitInsideBox` method divides the `self` instance of box's `calculateVolume` value against the other box's `calculateVolume` value.

## Let's use the Box object

Now that we've defined and implemented our Box object, let's use it in `main.m`.

```objective-c
#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialize the first box.
        Box *firstBox = [[Box alloc] initWithHeight:10.0 width:20.0 depth:40.0];
        NSLog(@"First Box Volume: %f", [firstBox calculateVolume]);
        
        // Initialize the second box.
        Box *secondBox = [[Box alloc] initWithHeight:100.0 width:40.0 depth:60.00];
        NSLog(@"Second Box Volume: %f", [secondBox calculateVolume]);
        
        // Calculate how many times the first box can fit inside of the second box.
        NSLog(@"The first box can fit inside the second box: %f times", [firstBox canFitInsideBox:secondBox]);
    }
    return 0;
}
```

Let's break this down.

1. Let's import `Box.h` underneath the Foundation import statement. This allows `main.m` to see the Box object.
2. Let's initialize the first box and print its volume.
3. Let's initialize the second box and print its volume.
4. Let's calculate how many times the first box can fit inside the second one.

## Let's run the project

Run the project by pressing the command key + the R key on your keyboard.

A box on the bottom of the Xcode window should show up and you should see:

```
2020-11-27 08:04:32.285614-0500 Boxes[10970:326851] First Box Volume: 8000.000000
2020-11-27 08:04:32.285881-0500 Boxes[10970:326851] Second Box Volume: 240000.000000
2020-11-27 08:04:32.285901-0500 Boxes[10970:326851] The first box can fit inside the second box: 30.000000 times
```

<img width="1512" alt="Screen Shot 2020-11-27 at 8 06 56 AM" src="https://user-images.githubusercontent.com/6799989/100452635-88df8400-3087-11eb-9a9d-ba9e26b2c726.png">

## Commit your Project

Commit this code to your GitHub repository.
