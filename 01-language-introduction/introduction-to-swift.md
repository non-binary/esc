# Introduction to Swift

## History

Swift was released in June 2014 at the Apple Worldwide Developer Conference in San Francisco (fun fact - I was there on scholarship). Apple introduced the language as a proprietary project to be used only on Apple platforms. They mentioned in passing that they had been working on this project for several years before releasing it to the public. Swift was closed source being designed and maintained by Chris Lattner and his team (Doug Gregor, John McCall, Ted Kremenek and Joe Groff who follows me on Twitter :P). About a year and a half later in December 2015, Apple open sourced the language on GitHub allowing other internal engineers at Apple and external folks around the world to contribute to the project.

Swift went through significant changes through version 1.0 to version 3.0 frequently changing syntax and how you used system libraries making Swift a frustrating experience for production use. That is until version 4.0 when the syntax of Swift went through a final but significant evolution with the core team making source stability a focus for future versions. While version 4 required Swift developers to do a large rewrite of their apps, it was much better and allowed for Swift 5 to introduce a stable binary interface for Apple platforms allowing the Swift runtime to be incorporated into Apple’s operating systems such as macOS, iOS, iPadOS, tvOS and watchOS which until this time had not been done in production.

## Language Design

Swift is the result of the latest research on programming languages, combined with decades of experience building Apple platforms. It is a general purpose, multi-paradigm, compiled language that was inspired by Objective-C, Rust, Haskell, Ruby, Python, C#, CLU and D.

A general purpose programming language does not include constructs that are designed to be used within a specific application domain allowing Swift to be used in different ways (such as being multi-paradigm)  and on different platforms (such as on Apple’s platforms or on Linux distributions such as Ubuntu). Multi-paradigm means that Swift can be used for object-oriented programming or functional programming or protocol oriented programming as well as many others. Lastly, compiled means that Swift uses LLVM (explained later in this document), a compiler, to translate source code into machine code for the device to understand.

Swift has been a significant force in the area of language design in the open source communities, influencing other languages such as Rust as well. Which if you ask me, is really freaking cool that Rust both influenced Swift and is being influenced by Swift.

Swift eliminates entire classes of unsafe code. Variables are always initialized before use, arrays and integers are checked for overflow, memory is automatically managed and enforcement of exclusive access to memory guards against many programming mistakes. Syntax is tuned to make it easy to define your intent --- for example, simple three character keywords define a variable (var) or constant (let). Swift heavily leverages value types as well, especially for commonly used types like Arrays and Dictionaries. This means that when you make a copy of something with that type, you know that it won’t be modified elsewhere. An additional safety feature is that by default Swift objects can never be nil (non existent). In fact, the Swift compiler will stop you from trying to make or use a nil object with a compile-time error. This makes writing code much cleaner and safer and prevents a huge category of runtime crashes in your apps. However, there are of course cases where nil is valid and appropriate. For these situations Swift has an innovative feature known as optionals. An optional may contain nil, but Swift syntax forces you to safely deal with it using the ? syntax to indicate to the compiler that you understand the behaviour and will handle it safety.

## Language Features

Named parameters are expressed in a clean syntax that makes APIs in Swift even easier to read and maintain. Even better, you don’t need to type semi-colons. Inferred types make code cleaner and less prone to mistakes while modules eliminate headers and provide namespaces.

To best support international languages and emoji, Strings are Unicode-correct and use a UTF-8 based encoding to optimize performance for a wide-variety of use cases. Memory is managed automatically using tight, deterministic reference counting, keeping memory usage to a minimum without the overhead of garbage collection.

Swift has many other features to make your code more expressive:

### Generics that are powerful and simple to use

Generics is a style of programming in which algorithms are written in terms of types to be specified later that are then instantiated when needed for specific types provided as parameters. This approach, pioneered by the ML programming language in 1973 permits writing common functions or types that differ only in the set of types on which they operate when used, thus reducing duplication.

Swift is not the only programming language with Generics. Others include Haskell, Python, Java, Rust, TypeScript, Ada, C#, F#, and others. 

### Protocol extensions that make writing generic code even easier

Protocol extensions add new functionality to existing class, structure, enumeration or protocol types. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modelling). Extensions are similar to categories in Swift but unlike Objective-C categories, Swift extensions do not have names.

### First class functions and a lightweight closure syntax

First class functions enable you to use functions and methods just like any other object or value. You can pass them as arguments or return them from other functions. Lightweight closure syntax makes closures so much easier to work with that I genuinely like using closures. A closure in swift looks like:

```
Button {
 print(“print hello world”)
}, title {
 Text(“Hello World!”)
}
```

### Fast and concise iteration over a range or collection

Iteration over a range or collection such as Arrays, Dictionaries, etc is fast and not expensive for runtime.

### Tuples and multiple return values

A tuple type is a comma-separated list of types, enclosed in parentheses. You can use a tuple type as the return type of a function to enable the function to return a single tuple containing multiple values. Such as let someTuple: (Double, Double) = (3.14159, 2.71828).

### Structs that support methods, extensions, and protocols

Structures, or structs, are one of the named types in Swift that allow you to encapsulate related properties and behaviors. You can define it, give it a name and then use it in your code. These are copied instead of referenced when moving around in code which allows you to have two structs with different information originating from the source struct instantiation.

### Enums can have payloads and support pattern matching

An enum defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code. enum in Swift are first-class types in their own right. They adopt many features traditionally supported only by classes, such as computed properties to provide additional information about the enumeration’s current value, and instance methods to provide functionality related to the values the enum represents. Enums can also define initializers to provide an initial case value; can be extended to expand their functionality beyond their original implementation; and can conform to protocols to provide standard functionality.

### Functional programming patterns, e.g., map and filter

In many programming languages, map is the name of a higher-order function that applies a given function to each element of a functor, e.g. a list, returning a list of results in the same order. It is often called apply-to-all when considered in functional form. In Swift, map returns an array containing the results of mapping the given closure over the sequence’s elements.

filter is a higher-order function that processes a data structure (usually a list) in some order to produce a new data structure containing exactly those elements of the original data structure for which a given predicate returns the boolean value true. In Swift, filter returns an array containing, in order, the elements of the sequence that satisfy the given predicate.

### Native error handling using try / catch / throw

Error handling is the process of responding to and recovering from error conditions in your program. Swift provides first-class support for throwing, catching, propagating, and manipulating recoverable errors at runtime.

As an example, consider the task of reading and processing data from a file on disk. There are a number of ways this task can fail, including the file not existing at the specified path, the file not having read permissions, or the file not being encoded in a compatible format. Distinguishing among these different situations allows a program to resolve some errors and to communicate to the user any errors it can’t resolve.

### Package Manager

Swift has SwiftPM or SPM, the Swift Package Manager which is a single cross-platform tool for building, running, testing and packaging Swift libraries and executables. Swift packages are the best way to distribute libraries and source code to the Swift community. Configuration of packages is written in Swift itself, making it easy to configure targets, declare products and manage package dependencies. SwiftPM itself is actually built in Swift and included in the Swift open source project.

### Objective-C Interoperability

Objective-C interoperability means that you can create an entirely new app with Swift or begin to use Swift code to implement new features and functionality in your app. Swift code co-exists with existing Objective-C files in the same project allowing full access to the Objective-C API making it easy(ier) to adopt.

### Rust Interoperability

With Objective-C interoperability comes C interoperability which shares an ancestor with Rust allowing Rust code to be used in Swift applications and Swift code in Rust applications. 

## Compiler

The Swift compiler is principally responsible for translating Swift source code into efficient executable machine code. However, the Swift compiler front-end also supports a number of other tools, including IDE integration with syntax colouring, code completion and other conveniences. This document provides a high-level description of the major components of the Swift compiler

The parser is a simple, recursive descent parser with an integrated hand coded lexer. The parser is responsible for generating an Abstract syntax tree (AST) without any semantic or type information and emit warnings or errors for grammatical problems with the input source. 

Semantic analysis is responsible for taking the parsed AST and transforming it into well-formed, fully-type checked form of the AST emitting warnings or errors for semantic problems in the source code. Semantic analysis includes type inference and on success indicates that it is safe to generate code from the resulting type-checked AST.

The Clang importer imports Clang modules and maps the C or Objective-C or Rust APIs they export into their corresponding Swift APIs. The resulting ASTs can be referred to by semantic analysis.

The Swift intermediate language (SIL) is a high-level Swift specific intermediate language suitable for further analysis and optimization of Swift code. The SIL generation phase lowers the type checked AST into so-called “raw” SIL. The design of SIL is described in the documentation available here https://github.com/apple/swift/blob/main/docs/SIL.rst. 

The SIL guaranteed transformations perform additional data flow diagnostics that affect the correctness of a program such as use of uninitialized variables. The end result of these transformations is canonical SIL.

The SIL optimizations perform additional high-level, Swift specific optimizations to the program, including Automatic Reference Counting optimization, devirtualization and generic specialization.

IR generation lowers SIL to LLVM IR at which point LLVM can continue to optimize it and generate machine code. 
