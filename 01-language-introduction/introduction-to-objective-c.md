# Introduction to Objective-C

This document uses paraphrased content from Wikipedia and other resources linked throughout.

## History

Objective-C was originally developed in the early 1980s by [Tom Love](https://www.sei.cmu.edu/about/leadership/display.cfm?customel_datapageid_2623=3292) and [Brad Cox](https://en.wikipedia.org/wiki/Brad_Cox). It was based on the C programming language and primarily added [Smalltalk-style messaging](https://en.wikipedia.org/wiki/Smalltalk) to the language. Objective-C was later selected as the main language used by [NeXT](https://en.wikipedia.org/wiki/NeXT) for its [NeXTSTEP operating system](https://en.wikipedia.org/wiki/NeXTSTEP), from which macOS and iOS are derived.

In 1988, NeXT licensed Objective-C from [StepStone](https://en.wikipedia.org/wiki/StepStone_Group) and extended the GCC compiler to support Objective-C. NeXT developed AppKit and Foundation Kit libraries on which the NeXTSTEP user interface and Interface Builder were based. While the NeXT workstations failed to make a great impact in the market, the tools were widely lauded in the industry. This led NeXT to drop hardware production and focus on software tools, selling NeXTSTEP (and [OpenStep](https://en.wikipedia.org/wiki/OpenStep)) as a platform for custom programming.

In order to circumvent the terms of the GPL license, NeXT had originally intended to ship the Objective-C frontend separately, allowing the user to link it with GCC to produce the compiler executable. After being initally accepted by [Richard Stallman,](https://en.wikipedia.org/wiki/Richard_Stallman) this plan was rejected after Stallman consulted with GNU's lawyers and NeXT agreed to make Objective-C part of GCC. The work to extend GCC was led by Steve Naroff, who joined StepStone. The compiler changes were made available as per GPL license terms but the runtime libraries were not, rendering the open source contribution unusable to the general public. This led to other parties developing such runtime libraries under open source license. Later, Steve Naroff was also principal contributor to work at Apple to build the Objective-C frontend to Clang (explained later in the Compiler section).

Objective-C was the main programming language supported by Apple for macOS, iOS, and their respective application programming interfaces (APIs), Cocoa and Cocoa Touch, until the introduction of Swift in 2014.

## Language Design

While C and Objective-C are both general-purpose, Objective-C is an object oriented programming language which is based on the concept of "objects", which can contain data and code: data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods). It was designed to be compiled into C to provide C features along with niceties that were unavailable to C itself. Despite its low-level capabilities, due to decisions made by NeXT and later Apple, the language was designed to not encourage cross-platform programming. 

## Language Features

Paraphrased from [Some Nice Features of the Objective-C Language](https://pmougin.wordpress.com/2008/03/13/some-nice-features-of-the-objective-c-language/).

### Classes are objects

Each class is an instance of a meta-class automatically created and managed by the runtime. Programmers can define class methods, pass classes as arguments, put them into collections and so on. To create an object, one just needs to send a message to the class we want to instantiate. No need to reinvent a "factory" system. No need for a specific constructor mechanism at the language level. This helps keep the language simple and powerful. 

### Dynamic typing

Similar to Ruby, Python, Smalltalk, Groovy, etc. It is extemely useful because we don't always know beforehand what are objects are going to be at runtime. Dynamic typing in Objective-C is simple to use. For example, this declares a variable that can hold a reference to an object:



As in Ruby, Python, Smalltalk, Groovy… Extremely useful because we don’t always know beforehand what our objects are going to be at run-time. Dynamic typing in Objective-C is simple to use. For example, this declares a variable that can hold a reference to an object:

```
id myObject;
```

### Optional static typing
 
With that said, Objective-C also has support for static typing. It's the best of both worlds. This declares a variable that can hold a reference to an object of class (or subclass) of `UIView`.
 
```
UIView *myObject;
```

### Categories

Categories let us define new methods and add them to classes that we don't have access to (the source code) such as the standard Cocoa classes provided by Apple. This makes it easy to extend classes without resorting to subclassing. This is extremely useful to adapt existing classes to the requirements of frameworks we want to use or create.

### Message sending

We interact with objects by sending them messages. Often the receiver of a message will have a method that directly matches the method such as that it has the same name or in Objective-C terms, the same selector. In this case the method will be invoked but this is not the only possible outcome as an object can choose to handle a message in other ways such as forwarding it to another object, broadcasting it to a number of objects, introspecting it and applying custom logic, etc.

### Expressive message syntax

Message patterns in Objective-C are like natural language sentences with holes in them (prefixed with colons). When we write code that sends a message to an object, we fill the arguments with actual values, creating a meaningful sentence. This way of denoting messages comes from Smalltalk and makes the code very expressive.

Here is an example, sending a message to an ordered collection and asking it to insert a given object at index 10:

```
[myCollection insert:myObject atIndex:10]
```

A message sending expressions can be read like a sentence where the receiver is the subject and the message is the rest of the sentence. For example, an action that we would like the receiver to perform: `myCollection insert myObject at index 10`.

### Introspection

Introspecting objects is easy. For example, we can ask an object for its class like this:

```
[myObject class]
```

Determine if an object has a method "foo":

```
[myObject respondsToSelector:@selector(foo)]
```

Ask an object for the signature of its method "foo":

```
[myObject methodSignatureForSelector:@selector(foo)]
```

Ask a class whether it is a subclass of another class:

```
[class1 isSubclassOfClass:class2]
```

### C++ fluent

Not only is Objective-C a superset of C but it can also understand and call C++ code. Used in this configuration, the language is actually called Objective-C++ and allows the mixing of Objective-C and C++ code in the same code statements. It also allows directly using C++ libraries. This is common in Game projects.

## Syntax

The basic syntax of Objective-C is very similar to C. Please re-read the Syntax section in the Introduction to C document if you have any concerns. The same thing applies with regards to tokens, comments, etc.

This is how you would do a Hello World program in Objective-C:

```
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
    }
    return 0;
}
```

If we take any one statement:

```
NSLog(@"Hello, World!");
```

Then the tokens in this statement are: `NSLog`, `(`, `@"Hello,World"`, `)` and `;`.

## Compiler

Objective-C programs can be compiled using GCC or Apple's own compiler Clang which is backed by LLVM. The combination of Clang and LLVM provides most of the toolchain, to allow replacing the full GCC stack. Because it is built with a library-based design, like the rest of LLVM, Clang is easy to embed into other applications.

Please read [What is LLVM? The Power behind Swift, Rust, Clang, and more](https://www.infoworld.com/article/3247799/what-is-llvm-the-power-behind-swift-rust-clang-and-more.html).
