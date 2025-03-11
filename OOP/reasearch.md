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


