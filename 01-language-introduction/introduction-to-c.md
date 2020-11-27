# Introduction to C

This document uses paraphrased content from Wikipedia, https://www.cprogramming.com/tutorial/c/lesson1.html, https://www.geeksforgeeks.org/c-language-set-1-introduction and other sources linked throughout.

## History

The C programming language was developed in 1972 by [Dennis Ritchie](https://en.wikipedia.org/wiki/Dennis_Ritchie) at[ Bell Laboratories](https://en.wikipedia.org/wiki/Bell_Labs) of AT&T. It has found lasting use in applications previously coded in [assembly language](https://en.wikipedia.org/wiki/Assembly_language). Such applications include operating systems and various application software for computer architectures that range from supercomputers to [PLCs](https://en.wikipedia.org/wiki/Programmable_logic_controller) and [embedded systems](https://en.wikipedia.org/wiki/Embedded_system).

A successor to the [programming language B](https://en.wikipedia.org/wiki/B_(programming_language), C was originally developed to construct utilities running on Unix. It was applied to re-implementing the kernel of the Unix operating system. During the 1980s, C gradually gained popularity. It has become one of the most widely used programming languages, with C compilers from various vendors available for the majority of existing computer architectures and operating systems. C has been standardized by the [American National Standards Institute](https://en.wikipedia.org/wiki/American_National_Standards_Institute) (ANSI) since 1989 and by the [International Organization for Standardization](https://en.wikipedia.org/wiki/International_Organization_for_Standardization) (ISO). 

## Language Design

C is a general-purpose, imperative procedural computer programming language supporting structured programming, lexical variable scope, and recusion, with a static type system. It was designed to be compiled to provide low-level access to memory and language constructs that map efficiently to machine instructions, all with minimal runtime support. Despite its low-level capabilities, the language was designed to encourage cross-platform programming. A standards-compliant C program written with portability in mind can be compiled for a wide variety of computer platforms and operating systems with few changes to its source code.

## Language Features

### Procedural Language

Procedural programming is a programming paradigm, derived from [structured programming](https://en.wikipedia.org/wiki/Structured_programming), based on the concept of the [procedure call](https://en.wikipedia.org/wiki/Subroutine). Procedures (a type of routine or subroutine) simply contain a series of computational steps to be carried out. 

### Fast and Efficient

C is lightweight enabling fast and efficient use of the programming languages in many different use cases.

### Modularity

Modular programming is a software design technique that emphasizes separating the functionality of a program into independent, interchangeable modules, such that each contains everything necessary to execute only one aspect of the desired functionality.

### Statically Type

C is statically typed which means the type of a variable must be known at compile time. This means that you as the programmer must specify what type each variable is (a char, various types of integers, bool, etc). See [C Data Types](https://en.wikipedia.org/wiki/C_data_types#Main_types) for more information.

### General Purpose Language

A general-purpose programming language is a programming language designed to be used for writing software in the widest variety of application domains. C has this status because it does not include language constructs designed to be used within a specific application domain.

### Rich set of built in Operators

These are the supported operators in C.

Assume variable `a` holds 10 and variable `b` holds 20 then.

#### Arithmetic Operators

These are the arithmetic operators supported by C:

* `+`: Adds two operands. I.e `a + b = 30`.
* `-`: Subtracts second operand from the first. I.e. `a - b = -10`.
* `*`: Multiplies both operands. I.e. `a * b = 200`. 
* `/`: Divides number by de-numerator. I.e. `b / a = 2`.
* `%`: Modulus operator and remainder of after an integer division. I.e. `b % a = 0`.
* `++`: Increment operator increases the integer value by one. I.e. `a++ = 11`.
* `--`: Decrement operator decreases the integer value by one. I.e. `a-- = 9`.

#### Relational Operators

These are the relational operators supported by C:

* `==`: Checks if the values of two operands are equal or not. If yes, then the condition becomes true. `a == b` is not true.
* `!=`: Checks if the values of two operands are equal or not. If the values are not equal, then the condition becomes true. `a != b` is true.
* `>`: Checks if the value of the left operand is greater than the value of the right operand. If yes, then the condition becomes true. `a > b` is not true.
* `<`: Checks if the value of left operand is less than the value of right operand. If yes, then the condition becomes true. `a < b` is true.
* `>=`:	Checks if the value of left operand is greater than or equal to the value of right operand. If yes, then the condition becomes true.	`a >= b` is not true.
* `<=`:	Checks if the value of left operand is less than or equal to the value of right operand. If yes, then the condition becomes true.	`a <= b` is true.

#### Logical Operators

Assume variable `a` holds 1 and variable `b` holds 0. These are the logical operators supported by C: 

* `&&`:	Called Logical AND operator. If both the operands are non-zero, then the condition becomes true. `a && b` is false.
* `||`:	Called Logical OR Operator. If any of the two operands is non-zero, then the condition becomes true. `a || b` is true.
* `!`:	Called Logical NOT Operator. It is used to reverse the logical state of its operand. If a condition is true, then Logical NOT operator will make it false. `!(a && b)` is true.

#### Bitwise Operators and Assignment Operators

Please read the "Bitwise Operators" and "Assignment Operators" sections on [this page](https://www.tutorialspoint.com/cprogramming/c_operators.htm).

### Libraries with rich Functions

C has a bunch of built-in libraries that contain very powerful and optimized functions. Read [this](https://www.programiz.com/c-programming/library-function) for more information.

### Middle Level Language

The middle-level language lies in between the low level and high-level languages. C language is the middle-level language for many programming languages. C is typically compiled into Assembler but many languages are compiled into C such as Swift, Objective-C, Rust, JVM languages (Java, Kotlin), Haskell, and many others.

### Portability

Portability is a characteristic attributed to a computer program or programming language if it can be used in an operating systems other than the one in which it was created without requiring a major rework of its source code.

### Easy to Extend

C has the ability to extend itself because of its collection of functions, which the C library supports, and this makes it easier for programmers to add their own functions. This is how Objective-C, C++, C# and other languages were created. All share the ancestor of the C programming language.

## Syntax

C syntax specify rules for sequence of characters to be written in the C programming language. In simple words it takes how to form statements in a C program (how the line of code should start, how it should end, where to use double quotes, and where to use curly brackets, etc).

The rule specify how the character sequence will be grouped together, to form tokens. A smallest individual unit in C program is known as C Token. Tokens are either keywords, identifiers, constants, variables or any symbol which has some meaning in C. A C program could also be called as a collection of various tokens.

This is how you would do a *Hello World* program in C:

```
#include <stdio.h>
int main()
{
   printf("Hello World");
   return 0;
}
```

If we take any one statement:

```
printf("Hello,World");
```

Then the tokens in this statement are: `printf`, `(`, `"Hello,World"`, `)` and `;`.

Please read the "Semicolon" and "Comments" section on [this page](https://www.studytonight.com/c/c-syntax.php#).

## Compiler

The C programming language has used a number of different versions and types of compilers over the years. Today however, the GNU Compiler Collection (GCC) is the most commonly used compiler system for C produced by the GNU Project and supports various programming languages.

Please read [Everything you want to know about GCC](https://medium.com/@meghamohan/everything-you-want-to-know-about-gcc-fa5805452f96). However, to paraphrase, here are the most important parts:

### Preprocessing

This steps does the following: removal of comments, expansion of macros, and expansion of the included files.

### Compilation

The next step is to take the Preprocessed file as input, compile it and produce an intermediate compiled output. 

### Assembly

The output file for this stage produces Assembly code which is machine dependent.

### Linking

This is the final phase in which all the linking of function calls with their definitions are done.
