

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


# Task 3
## Difference Between For and Foreach in PHP

### The 'for' loop
It is an iterative loop that repeats a set of code till a specified condition is reached. It is used to execute a set of code for a specific number of times. Here, the number of times is the iterator variable.

Syntax:
```php
for( initialization; condition; increment/decrement ) {
// code to iterate and execute
}
```
- **Initialization**: It is used to initialize the iterator variables. It also helps execute them one at a time without running the conditional statement at the beginning of the loop's condition.
- **Condition**: This statement is executed and if the condition returns a True value, the loop continues and the statements within it are executed. If the condition gives a False value, the execution comes out of the loop.
- **Increment**: It increments/increases the counter in the loop. It is executed at the end of every iteration without a break.
- It doesn't hide the iteration.
- It is complex in comparison to 'foreach' loop.
- It takes more time to execute in comparison to 'foreach' loop.

### The 'foreach' loop

- It iterates over the elements of the array data structure.
- It hides the iteration.
- It is simple.
- It performs better in comparison to 'for' loop.
- It takes less time for the iteration.

**Syntax:**
```php
foreach( $array as $element ) {
// PHP Code to execute
}
foreach( $array as $key => $element) {
// PHP Code to execute
}
```

**Example**
```php
<?php
$peop = array( "Will", "Jane", "Harold" );
foreach( $ peop as $element ) {
   echo $element . "<br>";
}
?>
```

## Resources

- https://www.tutorialspoint.com/difference-between-for-and-foreach-in-php



# Task 4

## Sessions VS Cookies

### 1. Cookies
#### Cookies are small pieces of data stored on the client-side (browser). They help in tracking user activities and maintaining state across multiple requests.

### Features of Cookies
- **Storage Location:** Stored in the user's browser.
- **Size Limit:** Typically up to 4KB.
- **Lifespan:** Can have an expiration time (persistent cookies) or be deleted when the browser is closed (session cookies).
- **Security:** Less secure as they are stored on the client-side and can be accessed or modified by the user.
- **Accessibility:** Can be accessed by both the server and the client-side JavaScript (unless set as HttpOnly).
- **Usage:** Used for storing small amounts of data like authentication tokens, user preferences, and tracking information.


### 2. Sessions
#### Sessions store user data on the server, and a session ID is sent to the client via a cookie or URL parameter to maintain the session.

### Features of Sessions
- **Storage Location**: Stored on the server.
- **Size Limit**: No strict size limit (depends on server memory).
- **Lifespan**: Lasts as long as the user is active or until it expires (default in PHP is 24 minutes).
- **Security**: More secure since data is stored on the server, reducing exposure to client-side attacks.
- **Accessibility**: Only the server can access session data.
- **Usage**: Used for storing sensitive information like login credentials, shopping cart data, and user authentication.

## Error Handling in PHP.

When creating scripts and web applications, error handling is an important part. If your code lacks error checking code, your program may look very unprofessional and you may be open to security risks.

This tutorial contains some of the most common error checking methods in PHP.

We will show different error handling methods:

- Simple "`die()`" statements
- Custom errors and error triggers
- Error reporting
- try...catch statements

### Basic Error Handling: Using the die() function
```php
<?php
if(file_exists("mytestfile.txt")) {
  $file = fopen("mytestfile.txt", "r");
} else {
  die("Error: The file does not exist.");
}
?>
```
### Custom Error Handling: Create a function to handle all errors
```php
<?php
function customError($errno, $errstr) {
  echo "<b>Error:</b> [$errno] $errstr";
}
set_error_handler("customError");
echo($test);
?>
```
### Error Logging: Using the error_log() function
```php
<?php
$test = 2;
if ($test > 1) {
  trigger_error("Value must be 1 or below");
}
?>
```
### Error Reporting: Report simple running errors
```php
<?php
error_reporting(E_ERROR | E_WARNING | E_PARSE | E_NOTICE);
?>
```
### The "try" and "catch" Block: Exception handling
```php
<?php
try {
  $test = 2;
  if($test >= 1) {
    throw new Exception("Value must be 1 or below");
  }
}
catch(Exception $e) {
  echo "Message: " . $e->getMessage();
}
?>
```

## How PHP Executes Code.

PHP code execution involves a series of stages that transform human-readable PHP scripts into executable code, ultimately generating the desired output for the user. Here's an overview of this process:

1. **Lexing (Tokenization)**: The PHP interpreter reads the source code and converts it into tokens. Tokens are the smallest units of meaningful code, such as keywords, variables, operators, and literals. This process simplifies the code into manageable pieces for further analysis. 

1. **Parsing**: The parser analyzes the tokens to ensure they follow PHP's syntax rules. It organizes them into a hierarchical structure known as an Abstract Syntax Tree (AST). The AST represents the logical flow and structure of the code, making it easier to understand and manipulate during subsequent stages. 

1. **Compilation**: The AST is then compiled into intermediate low-level binary instructions called opcodes (operation codes). These opcodes are a set of executable instructions that the Zend Engine, PHP's core execution engine, can process. This step bridges the gap between high-level PHP code and machine-level instructions. 

1. **Interpretation**: Finally, the Zend Engine interprets and executes the opcodes. During this phase, the engine performs the operations defined by the opcodes, such as calculations, data manipulations, and interactions with external resources. The result is typically an HTML output sent to the client's browser. 

## Resources

- https://pandectes.io/blog/understanding-the-difference-between-cookies-and-sessions/#:~:text=Cookies%20are%20small%20text%20files,behavior%2C%20and%20enabling%20personalized%20experiences.

- https://www.w3schools.com/PHP/php_error.asp

- https://www.fastcomet.com/tutorials/php-executions-optimization/how-it-works
- https://stackoverflow.com/questions/2720488/how-exactly-is-a-php-script-executed