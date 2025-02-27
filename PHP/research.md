

## What is PHP?

- **PHP** is an acronym for "PHP: Hypertext Preprocessor."
- **PHP** is a widely-used, open-source scripting language.
- **PHP** scripts are executed on the server.
- **PHP** is free to download and use.

## What Are the Three Main Error Types in PHP?

### Types of Errors in PHP

In PHP, errors can be classified into three main categories:

1. **Syntax Errors**
    - Caused by mistakes in the code syntax.
    - Occur when the PHP parser encounters an unexpected or incorrect statement or expression.
    - Example: Missing semicolon, misspelled function name.

2. **Runtime Errors**
    - Occur during the execution of the code.
    - Caused by incorrect function arguments, incorrect variable types, or memory-related issues.
    - Example: Division by zero, undefined function calls, array out-of-bounds errors.

3. **Logical Errors**
    - Code executes without syntax errors but does not behave as expected.
    - Caused by incorrect or incomplete logic in the code.

## Echo vs Print

- `echo` has **no return value**, while `print` has a return value of `1`, so it can be used in expressions.
- `echo` can take multiple parameters (rare usage), while `print` can take only one argument.
- `echo` is **faster** than `print`.

## Case Sensitivity in PHP

- PHP is a **case-sensitive** language.
- Variables, function names, and identifiers **distinguish** between uppercase and lowercase.
- Example: `$hello` and `$Hello` are two different variables.

## Resources

- [W3Schools PHP Introduction](https://www.w3schools.com/php/php_intro.asp)
- [Scaler - Types of Errors in PHP](https://www.scaler.com/topics/php-tutorial/types-of-errors-in-php/)
- [Codecademy - Echo vs Print](https://www.codecademy.com/forum_questions/55d1e384e39efe0f440003ea)
- [TutorialsPoint - PHP Case Sensitivity](https://tutorialspoint.learnerstv.in/php-case-sensitivity/)


## programming language vs scripting language.
The primary distinction between these two types of languages is that the former is typically interpreted, meaning that the code is executed line by line, rather than compiled into machine code and run as an executable file. Hence, with scripting languages, programmers can make changes to the code and test it without having to recompile the entire program.

Compiled programming languages, on the other hand, are translated into machine code and saved as an executable file, which can be run without the need for an interpreter. Programming languages are often more powerful and efficient than scripting languages, but they can also be more complex and harder to learn. Examples of compiled programming languages include C, Java, and C++.

Scripting languages are used for smaller tasks, whereas programming languages help build large and complex software applications, such as operating systems and enterprise-level software. They are also used for developing lower-level system software, such as device drivers and system utilities.

## dynamically typed vs statically typed language.

### **Static Typing**

Static typing is a typing system where variables are bound to a data type during compilation. Once a variable is assigned a data type it remains unchanged throughout the programs execution. This binding promotes type safety and detects errors at an early stage.

### **Key Characteristics of Static Typing**

One of the advantages of typing is ensuring type safety which reduces the chances of runtime errors caused by mismatches in data types.

Another benefit is error detection. Since the compiler knows the data types during the development process it can catch errors before runtime resulting in reliable software.

Static typing also offers performance benefits. The compiler can optimize code effectively in languages with typing potentially leading to faster execution.

### **Examples of Statically Typed Languages**

Several programming languages adopt typing as their approach to handling data types. Here are a few notable examples.

**C++**: A language commonly used for system programming and game development where data types must be explicitly defined.

**Java**: A used language that is known for its “Write Once Run Anywhere” capability which enforces strong typing through a reliable type system.

**Rust**: An increasingly popular language that ensures memory safety and concurrency without sacrificing performance through static typing.


### Dynamic Typing

In contrast, dynamic typing allows variables to be bound to data types at runtime instead of during compilation. This flexibility enables concise code and ease of use. It compromises on type safety as a trade-off.

### Key Characteristics of Dynamic Typing
One of the advantages of typing is its flexibility. In dynamically typed languages variables have the ability to change their data type during runtime. This allows for adaptability in situations.

Another benefit is the ease of use that dynamic typing provides. Unlike static typed languages developers in dynamic typed languages don’t need to explicitly specify data types when coding. This simplifies the coding process. Makes it more intuitive.

Runtime variable type re-checking is another feature offered by dynamic typing. During runtime the type of a variable is checked which means any errors related to type mismatches might only be discovered at that point. While this can lead to issues it also offers flexibility in handling data types on the fly.

### Examples of Dynamically Typed Languages
There are numerous programming languages that adopt dynamic typing due to its flexibility and simplicity. Some used examples include.

**Python**: A versatile language renowned for its readability and ease of use while relying on dynamic typing to provide concise code.

**JavaScript**: A scripting language used for web development that uses dynamic typing to offer greater flexibility in handling data.

**Ruby**: Known for its simplicity and elegant syntax. Ruby utilizes dynamic typing to make coding more intuitive and expressive.


## Assign by Value VS Assign by Reference.

### Assignment by Value (=)
When you assign a variable by value, a separate copy of the value is created in memory. Any changes to the new variable do not affect the original variable.

#### Example 
```php
$a = "Hello";
$b = $a;  // Assign by value (creates a copy)
$b = "World"; // Change only $b

echo $a; // Output: Hello
echo $b; // Output: World
```

### Assignment by Reference (=&)
When you assign a variable by reference, PHP makes `$b` a reference (alias) to `$a`. Any changes to `$b` will also affect `$a`

#### Example
```php
$a = "Hello";
$b =& $a;  // Assign by reference (both point to the same memory location)
$b = "World"; // Change $b, which also changes $a

echo $a; // Output: World
echo $b; // Output: World
```

## Resources
- https://www.unosquare.com/blog/scripting-and-programming-languages-differences-advantages-and-optimal-use-cases/#:~:text=Scripting%20languages%20are%20used%20for,systems%20and%20enterprise%2Dlevel%20software.

- https://www.bairesdev.com/blog/static-vs-dynamic-typing/

- https://medium.com/@ingila185/assign-by-value-vs-assign-by-reference-javascript-2d5ec66453bf#:~:text=In%20JavaScript%2C%20primitive%20data%20types,manipulation%20of%20the%20other%20one.