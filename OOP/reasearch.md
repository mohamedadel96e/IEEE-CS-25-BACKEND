## who invent OOP and why
Alan Kay, Influenced by both MIT and Simula, Alan Kay began developing his own ideas in November 1966. He would go on to create Smalltalk, an influential object-oriented programming language. By 1967, Kay was already using the term "object-oriented programming" in conversation.

The first programming language widely recognized as “object oriented” was **Simula**, specified in 1965. Like Sketchpad, **Simula** featured objects, and eventually introduced classes, class inheritance, subclasses, and virtual methods.

Alan Kay coined the term “object oriented programming” at grad school in 1966 or 1967. The big idea was to use encapsulated mini-computers in software which communicated via message passing rather than direct data sharing — to stop breaking down programs into separate “data structures” and “procedures”.

The Essence of OOP
The combination of message passing and encapsulation serve some important purposes:

- **Avoiding shared mutable state** by encapsulating state and isolating other objects from local state changes. The only way to affect another object’s state is to ask (not command) that object to change it by sending a message. State changes are controlled at a local, cellular level rather than exposed to shared access.
- **Decoupling** objects from each other — the message sender is only loosely coupled to the message receiver, through the messaging API.
- **Adaptability and resilience** to changes at runtime via late binding. Runtime adaptability provides many great benefits that Alan Kay considered essential to OOP.

[Reference](https://medium.com/javascript-scene/the-forgotten-history-of-oop-88d71b9b2d9f)
## Encapsulation & Abstraction

In the world of object-oriented programming (OOP), abstraction and encapsulation are two fundamental concepts that often get discussed together. They might sound like they belong in a computer science textbook, but they’re integral to creating efficient, maintainable, and scalable software.

### Abstraction: The Art of Simplification
- **What is Abstraction?** Abstraction is about focusing on the essentials and ignoring the irrelevant details. It allows programmers to handle complexity by breaking down systems into simpler, more manageable pieces.
- Think of abstraction as a high-level summary that highlights what an object does without delving into how it does it.
- **How it Works:** In programming, abstraction is achieved using interfaces and abstract classes. These constructs define a blueprint for what methods a class should have, without specifying the actual implementation.
- **Example:** Imagine you’re designing software for different types of vehicles. You might start with an interface:

```php
interface Vehicle {
  public function startEngine();
  public function stopEngine();
}
```
The `Vehicle` interface specifies that any vehicle should be able to start and stop its engine. It doesn't care how these actions are performed – that’s up to the specific types of vehicles to implement.

### Encapsulation: The Guardian of Data
- **What is Encapsulation?** Encapsulation is about bundling data (fields) and methods (functions) that operate on the data into a single unit, typically a class, and restricting direct access to some of the object’s components.
- This is done to protect the internal state of the object and ensure that it can only be changed in a controlled manner.
- **How it Works:** Encapsulation is implemented by making the fields of a class private and providing public getter and setter methods to access and modify these fields.
- **Example:** Let’s implement the Vehicle interface with a Car class that uses encapsulation:

```php
class Car implements Vehicle {
  private $model;
  private $engineRunning = false;

  public __construct($model) {
    $this->model = $model;
  }

  public function getModel(): string {
    return $this->model;
  }
  public function setModel($model): void {
    $this->model = $model;
  }
  
  public function startEngine() {
    $this->engineRunning = true;
  }
  public function stopEngine() {
    $this->engineRunning = false;
  }

  public function isEngineRunning() {
    return $this->engineRunning;
  }
}
```

- In this example, the `Car` class encapsulates the `model` field, making it private and providing public methods to access and modify it. The `startEngine` and `stopEngine` methods are the actual implementations of the abstract methods defined in the `Vehicle` interface.

[Reference](https://codeint.medium.com/understanding-abstraction-and-encapsulation-the-dynamic-duo-of-object-oriented-programming-d2fd11caf315)
## Inheritance
Inheritance is a mechanism that allows us to create hierarchies of classes, facilitating the sharing of properties and methods among them. ‘Inheritance’ is a concept that shows the idea of code reusability and extensibility, enabling to make efficient and flexible software solutions. To avoid code repetition, inheritance can be used. But it is not the only way to do that.

### Important terminologies:

- **Parent class** — The class whose properties and methods are inherited, which is also known as superclass or base class.

- **Child class** — The class that inherits properties and methods are called child class, subclass or derived class.

Inheritance presents the Is-A relationship which can be seen in everyday objects. For example, “Dog Is A Animal” makes perfect sense, with ‘Animal’ as the parent class and ‘Dog’ as the child class.
Let’s see an example of inheritance in PHP:

```php
class Animal {
  public $name;
  public $color;
  
  public function __construct($name, $color) {
    $this->name = $name;
    $this->color = $color;
  }
  
  public function eat() {
    echo "{$this->name} is eating.";
  }
  
}

class Dog extends
Animal {
  public function bark() {
    echo "{$this->name} is barking.";
  }

}

class Cat extends
Animal {
  public function meow() {
    echo "{$this->name} is meowing.";
  }
}

$dog = new Dog('Buddy', 'Brown');
$dog->eat(); // Output: Buddy is eating.
$dog->bark(); // Output: Buddy is barking.

$cat = new Cat('Kitty', 'White');
$cat->eat(); // Output: Kitty is eating.
$cat->meow(); // Output: Kitty is meowing.

```
In the example above, the `Animal` class is the parent class, and the `Dog` and `Cat` classes are child classes. The `Dog` and `Cat` classes inherit the properties and methods of the `Animal` class. The `Dog` class has an additional method `bark`, and the `Cat` class has an additional method `meow`.

### Types of Inheritance

- **Single Inheritance:** A class can inherit from only one class.
- **Multilevel Inheritance:** A class can inherit from a class that is already inherited from another class.
- **Hierarchical Inheritance:** Multiple classes inherit from a single class.
- **Multiple Inheritance:** A class can inherit from multiple classes. PHP does not support multiple inheritance, but it can be achieved using interfaces.

[Reference](https://medium.com/@RashmiSandamini/inheritance-in-oop-752e05d6cf19)
## PHP Interfaces & Polymorphism

### What are Interfaces?

An interface is a contract that defines a set of methods that a class must implement. It specifies what a class can do without providing the implementation details. In other words, an interface defines the structure of a class, but not the actual implementation.
#### Syntax in PHP:
```php
<?php
interface InterfaceName {
  public function someMethod1();
  public function someMethod2($name, $color);
  public function someMethod3() : string;
}
?>
```

### PHP - Interfaces vs. Abstract Classes
Interface are similar to abstract classes. The difference between interfaces and abstract classes are:

- Interfaces cannot have properties, while abstract classes can
- All interface methods must be public, while abstract class methods is public or protected
- All methods in an interface are abstract, so they cannot be implemented in code and the abstract keyword is not necessary
- Classes can implement an interface while inheriting from another class at the same time

To implement an interface, a class must use the implements keyword.

A class that implements an interface must implement all of the interface's methods.

```php
<?php
interface Animal {
  public function makeSound();
}
class Cat implements Animal {
  public function makeSound() {
    echo "Meow";
  }
}

$animal = new Cat();
$animal->makeSound();
?>
```

From the example above, let's say that we would like to write software which manages a group of animals. There are actions that all of the animals can do, but each animal does it in its own way.

Using interfaces, we can write some code which can work for all of the animals even if each animal behaves differently:

```php
<?php
// Interface definition
interface Animal {
  public function makeSound();
}

// Class definitions
class Cat implements Animal {
  public function makeSound() {
    echo " Meow ";
  }
}

class Dog implements Animal {
  public function makeSound() {
    echo " Bark ";
  }
}

class Mouse implements Animal {
  public function makeSound() {
    echo " Squeak ";
  }
}

// Create a list of animals
$cat = new Cat();
$dog = new Dog();
$mouse = new Mouse();
$animals = array($cat, $dog, $mouse);

// Tell the animals to make a sound
foreach($animals as $animal) {
  $animal->makeSound();
}
?>
```

### What are Polymorphism?
Polymorphism is a fundamental concept in object-oriented programming (OOP) that allows objects of different classes to be treated as objects of a common base class.

Polymorphism allows you to write more flexible and reusable code by treating objects of different classes in a unified way, as long as they adhere to a common interface or share method names.

In PHP, polymorphism is achieved through method overriding. When a child class inherits a method from a parent class, it can provide its own implementation of that method. This allows objects of the child class to use the overridden method instead of the parent class method.

```php
<?php
interface Shape {
  abstract public function calculateArea();
}
// Circle.php
class Circle extends Shape {
    private $radius;

    public function __construct($radius) {
        $this->radius = $radius;
    }

    public function calculateArea() {
        return pi() * $this->radius * $this->radius;
    }
}

// Square.php
class Square extends Shape {
    private $side;

    public function __construct($side) {
        $this->side = $side;
    }

    public function calculateArea() {
        return $this->side * $this->side;
    }
}
```
Now, let’s use polymorphism with these classes:

```php
<?php
// Example usage in a controller or view

function printArea(Shape $shape) {
    echo "Area: " . $shape->calculateArea() . "<br>";
}

// Creating instances of Circle and Square
$circle = new Circle(5);
$square = new Square(4);

// Using polymorphism to calculate and print the area
printArea($circle);  // Outputs the area of the circle
printArea($square);  // Outputs the area of the square
?>
```

In this example, the printArea function takes a parameter of type Shape, which is an abstract class. This function can accept any subclass of Shape, such as Circle or Square, due to polymorphism. The calculateArea method is called on the objects passed to printArea, and the correct implementation (either from Circle or Square) is invoked based on the actual type of the object at runtime.

- [Reference_1](https://www.w3schools.com/php/php_oop_interfaces.asp)
- [Reference_2](https://mohasin-dev.medium.com/polymorphism-in-php-with-example-83de1792c89d)
## PHP Traits

PHP only supports single inheritance: a child class can inherit only from one single parent.

So, what if a class needs to inherit multiple behaviors? OOP traits solve this problem.

Traits are used to declare methods that can be used in multiple classes. Traits can have methods and abstract methods that can be used in multiple classes, and the methods can have any access modifier (public, private, or protected).

Traits are declared with the `trait` keyword:

```php
<?php
trait message1 {
  public function msg1() {
    echo "anything ";
  }
}   
```
To use a trait in a class, use the `use` keyword:

```php
<?php
class MyClass {
  use TraitName;
}
```

### Example:

```php
<?php
trait message1 {
public function msg1() {
    echo "OOP is fun! ";
  }
}

class Welcome {
  use message1;
}

$obj = new Welcome();
$obj->msg1();
?>
```

### Using Multiple Traits

```php
<?php
trait message1 {
  public function msg1() {
    echo "OOP is fun! ";
  }
}

trait message2 {
  public function msg2() {
    echo "OOP reduces code duplication!";
  }
}

class Welcome {
  use message1;
}

class Welcome2 {
  use message1, message2;
}

$obj = new Welcome();
$obj->msg1();
echo "<br>";

$obj2 = new Welcome2();
$obj2->msg1();
$obj2->msg2();
?>

```

[Reference](https://www.w3schools.com/php/php_oop_traits.asp)




## Late static binding & how it works

The basic idea behind late static bindings is that the concept of inheritance and the concept of ‘self’ keyword don’t follow the same rules. For example, a method ‘fun’ in parent class called in the child class won’t make ‘self’ refer to the child (as expected).

The concept of late static bindings brings in a new keyword ‘static’, which when used, binds the function to the runtime class, or the class where the function was first used. In addition to this, any static function or variable is usually executed during runtime and not during compile time. Hence, if a value needs to be dynamically assigned to a variable that is static, it happens during runtime, and this is known as late static binding.

### Example: 
```php
<?php
class student
{
   public static $my_name = 'Joe';
   public static function getName()
   {
      return "The name of the student is : " . self::$my_name;
   }
   public static function getAge()
   {
      echo static::getName();
   }
}
class Professor extends student
{
   public static function getName()
   {
      return "The name of the student is : " . self::$my_name . " and age is 24.";
   }
}
echo student::getAge();
echo "<br>";
echo Professor::getAge();
?>

```

[Reference](https://www.tutorialspoint.com/what-are-late-static-bindings-in-php)
## Using OOP with MySQL (PDO & MySQLi)

These are nothing but the APIs of PHP that is used to access the MySQL databases and tables. The developers can choose either one of them for their project. Let’s have some more information about each of them:

- **MySQLi**: The ‘i’ in MySQLi stands for Improved. Therefore, this is also known as the improved version of MySQL. It has many new features that will be covered later.
- **PDO – PHP Data Objects**: The main advantage of using PDO is that it supports, and provides a uniform method of access to 11 different databases.

**PDO-supported databases are as follows:**

- CUBRID
- MS SQL Server
- Firebird/Interbase
- IBM
- Informix
- MySQL
- Oracle
- ODBC and DB2
- PostgreSQL
- SQLite
- 4D
    However, PDO does not allow the usage of all the features available in the present version of the MySQL server. For example, PDO doesn’t allow the support of MySQL’s multiple statements. 

### Connection to the database

**MySQLi**: In case of MySQLi, there is just a one-line code. The user instantiates a MySQLi instance using the username, password, and name of the database. 

```php
<?php
$mysqli = new mysqli("localhost", "username", "password", "database");
?>
```

**PDO**: In case of PDO, a new PDO object must be created. 

```php
<?php
$pdo = new PDO('mysql:host=localhost;dbname=database;charset=utf8', 'username', 'password');
?>

```

A big advantage of using PDO is that it makes switching the project to another database simpler. Therefore, the only thing to do is to change the connection string and those queries that will not be supported by the new database.



[Reference](https://www.geeksforgeeks.org/what-is-the-difference-between-mysql-mysqli-and-pdo/)

## Factory PatternAnonymous Classes
#### I Will Talk much in this topic because i like these type of topics 
The Factory Pattern is a creational design pattern that provides an interface for creating instances of classes, with its subclasses deciding which class to instantiate. Instead of calling a class’s constructor directly, a factory method is used to create the object, abstracting the instantiation process and promoting a loose coupling between classes.

### Let’s try to get it with some day-to-day example

Imagine you’re in a toy store, and you want a toy. Instead of making the toy yourself from scratch (which would be complicated…), you go to a special counter (let’s call it the “Toy Factory Counter”). You just tell the person behind the counter what toy you want, and they’ll give it to you. You don’t need to know how the toy is made or where it comes from; the “Toy Factory Counter” takes care of that for you.

**In this scenario:**

- The “Toy Factory Counter” is like our Factory in programming.
- The act of you asking for a toy is like a piece of code asking for an object.
- The person behind the counter deciding which toy to give you (maybe a doll, a robot, or a car) is like the Factory Pattern deciding which object to create based on the request.

### Implementations

#### Traditional Implementation
At our “Toy Factory Counter”, there’s a method (or a way) for the person behind the counter to give us toys based on our choice: a doll, a robot, or a car. If we ask for a doll, the toy factory knows it should give us a doll, and so forth. This decision-making process, simplified, is the essence of the Factory Pattern.

Let’s define our classes:
```php

class Doll {
    public function getDescription() {
        return "This is a doll.";
    }
}

class Robot {
    public function getDescription() {
        return "This is a robot.";
    }
}

class Car {
    public function getDescription() {
        return "This is a car.";
    }
}
```
**Toy Factory**

```php

class ToyFactory {
    public function getToy($toyType) {
        switch ($toyType) {
            case "doll":
                return new Doll();
            case "robot":
                return new Robot();
            case "car":
                return new Car();
            default:
                throw new Exception("Invalid toy type");
        }
    }
}
```

**Usage:**

```php

$factory = new ToyFactory();

$doll = $factory->getToy("doll");
echo $doll->getDescription(); // Outputs: This is a doll.
```

In this traditional implementation:

We have a `ToyFactory` class that decides which toy object to create based on the `toyType` provided.
Instead of creating new toy objects directly using the `new` keyword everywhere in our code, we use the factory. This centralizes the object creation process and makes our code more organized and manageable.


### A bit more advanced example of Factory Pattern implementation

**Short explanation of example:**

We are building API project which will allow us to use one endpoint to fetch data from third-party providers (the same type of data). Let’s say there are 2 of these.

We need 2 Services (1 for each) which will handle data provider-specific logic since these differ due to different authentication method and responses. After all parsing is done, we want to return it to our caller.

Credentials for each of these providers are stored in DB (security measurements taken into consideration), so we need endpoint(s) that will allow us to point which data provider we want data from and which credentials to use (hence dynamic {id} below). In reality it is more complicated case but let’s keep it simple here.

We can implement 2 different endpoints for GET method, f.ex.

https://ourhost.app/api/fetch/firstDataProvider/{id}/testData
https://ourhost.app/api/fetch/secondDataProvider/{id}/testData
Next step is to implement Controller(s) for handling the requests.
Intuitive thing is to make 2 Controllers — one for each endpoint since these are for different Data Providers.

**But… Here comes usage of Factory Pattern:**

We can have 1 Controller that will recognise which data provider is requested, it will call Factory Class to get needed Service Instance which will handle the logic and then the Controller will return the response (or error…)

Let’s define our interfaces

```php

<?php

namespace App\Interfaces\Services;

use App\Enums\DataProvidersEnum;
use Illuminate\Support\Collection;

/**
* Interface of a function parameter (can be for ValueObject, DTO 
* or any custom object that will carry values and methods)
*/
interface ITestDataQuery
{
  public function myQueryMethod(): mixed;
}

/**
 * Interface which needs to be implemented by all desirect Service Classes that are about to get instantiated.
 */
interface IDebugDataService
{
    public function fetchTestData( ITestDataQuery $query ): Collection;
}

/**
 * Let's make sure our Factory implements that interface, so we have clear contract for it.
 * That will also allow easier manipulations/extending for classes expecting that interface
 * As param's type
 */
interface IServiceFactory {

    public function getDebugDataServiceInstance( DataProvidersEnum $enum ): IDebugDataService;

}
```

Let’s define our Enum:



```php
namespace App\Enums;

/**
 * Let's use Enum for our data providers to make controlling easier
 */
enum DataProvidersEnum: string
{
    case FIRST_DATA_PROVIDER = 'firstDataProvider';
    case SECOND_DATA_PROVIDER = 'secondDataProvider';
    case NOT_SUPPORTED_DATA_PROVIDER = 'notSupportedDataProvider';
}

```

Now its time for Services:

```php
<?php

namespace App\Services\DebugData;
use App\Interfaces\Services\IDebugDataService;
use App\Interfaces\Tools\ValueObjects\Queries\DebugData\ITestDataQuery;
use Illuminate\Support\Collection;

/**
 * Our Service Class(es) must implement desired Interface to avoid surprises in Controllers.
 * These can also extend the same class if needed (the Interface can be on parent).
 */
class FirstDebugDataService implements IDebugDataService
{
    public function fetchTestData( ITestDataQuery $query ): Collection
    {
        // here goes your implementation....
        return collect();
    }

    // And your methods for the service...
}

class SecondDebugDataService implements IDebugDataService
{
    public function fetchTestData( ITestDataQuery $query ): Collection
    {
        // here goes your implementation....
        return collect();
    }

    // And your methods for the service...
}
```
### what are benefits of using Factory Pattern?
- **We get centralised logic for instantiating objects** which allows for re-using it in multiple places. Change to it can be done in one place instead of multiple locations.
- **Our code is much easier to test**. Imagine logic from Factory Class being implemented in Controller’s method. That adds multiple scenarios in tests only for that one function.
- Then, also you might end up with multiple methods needing instantiating Service. Now you have multiple additional scenarios in multiple functions.
- By implementing it on a bit more complicated way, you can extend Factory’s behaviour in one place when needed. Sure, in perfect world scenario you might want to have only one way to do things but real-life example: you need to instantiate object allowing calculations of budget for each year. Since each year there were changes, you end up with multiple options which might require different parameters. It is worth to spend a bit more time on making code flexible for long-term projects.
- Decoupling. The pattern decouples the client code from the concrete classes, promoting the use of interfaces or abstract classes. This loose coupling is beneficial for maintainability and scalability.
- Control over Object Creation. Factories can control the number of instances created, potentially implementing features like object pooling or singletons.

[Reference](https://medium.com/@bluznierca1/exploring-the-factory-pattern-in-php-8-2-d75f2de6f22e)

## Anonymous Classes

anonymous classes allow for the creation of classes without explicitly naming them. They are particularly useful for simple, one-off objects or when the class definition is only needed temporarily. Combining the Factory Pattern with anonymous classes can streamline object creation without the need for multiple named classes.

**Syntax:**

```php
<?php

// Using an explicit class
class Logger
{
    public function log($msg)
    {
        echo $msg;
    }
}

$util->setLogger(new Logger());

// Using an anonymous class
$util->setLogger(new class {
    public function log($msg)
    {
        echo $msg;
    }
});
```

**Example of Factory Pattern with Anonymous Classes in PHP**

```php

<?php

interface Product
{
    public function getType(): string;
}

class Factory
{
    public static function createProduct(string $type): Product
    {
        return match ($type) {
            'A' => new class implements Product {
                public function getType(): string
                {
                    return 'Type A';
                }
            },
            'B' => new class implements Product {
                public function getType(): string
                {
                    return 'Type B';
                }
            },
            default => throw new InvalidArgumentException('Unknown product type'),
        };
    }
}

// Usage
try {
    $product = Factory::createProduct('A');
    echo $product->getType(); // Outputs: Type A
} catch (InvalidArgumentException $e) {
    echo $e->getMessage();
}
?>
```



[Reference](https://www.php.net/manual/en/language.oop5.anonymous.php)
## MVC Architecture

MVC is a software architectural pattern for implementing user interfaces on computers. It divides a given application into three interconnected parts. This is done to separate internal representations of information from the ways information is presented to, and accepted from the user.

- MVC stands for "Model, view And Controller".
- The main aim of MVC Architecture is to separate the Business logic & Application data from the USER interface.
- Different types of Architectures are available. There are 3-tier Architecture, N-tier Architecture, MVC Architecture, etc.
- The main advantage of Architecture is Reusability, Security and Increasing the performance of Application.

**Model**: Database operation such as fetch data or update data etc.

**View**: End-user GUI through which user can interact with system, i.e., HTML, CSS.

**Controller**: Contain Business logic and provide a link between model and view.

**Let's understand this MVC concept in detail:**

- **Model**:
  - The Model object knows all about all the data that need to be displayed.
  - The Model represents the application data and business rules that govern to an update of data.
  - Model is not aware about the presentation of data and How the data will be display to the browser.
- **View**:
  - The View represents the presentation of the application.
  - View object refers to the model remains same if there are any modifications in the Business logic.
  - In other words, we can say that it is the responsibility of view to maintain consistency in its presentation and the model changes.
- **Controller**:
  - Whenever the user sends a request for something, it always goes through Controller.
  - A controller is responsible for intercepting the request from view and passes to the model for appropriate action.
  - After the action has been taken on the data, the controller is responsible for directly passes the appropriate view to the user.
  - In graphical user interfaces, controller and view work very closely together.

[Reference](https://www.tpointtech.com/php-mvc-architecture)