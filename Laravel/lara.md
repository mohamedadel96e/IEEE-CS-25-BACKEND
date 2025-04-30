Blade is the templating engine provided with Laravel, designed to help you build dynamic HTML views using clean, readable syntax. It allows embedding PHP code within HTML and includes helpful features like inheritance, components, loops, conditionals, and more—while keeping the code concise and organized.

## Blade Syntax

Blade templates are stored in the resources/views/ directory. By default, Laravel uses .blade.php extensions for Blade files.

### Basic Syntax

```php
  // resources/views/layouts/main.blade.php
<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>
</head>
<body>
    <header>
        <h1>My Laravel App</h1>
    </header>
    <main>
        @yield('content')
    </main>
    <footer>
        <p>&copy; 2025 My Laravel App</p>
    </footer>
</body>
</html>
```

### Child Views can extend the layout

```php
// resources/views/home.blade.php
@extends('layouts.main')

@section('title', 'Home Page')

@section('content')
    <h2>Welcome to Mohamed Adel Dashboard</h2>
@endsection

Rendering a Blade View in a Controller

To display the home.blade.php file, define a route and return the view:

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('home');
});
```

### [Reference](https://dev.to/icornea/laravel-blade-template-engine-a-beginners-guide-54bi)

## What is the ORM ,why it is so useful


ORM stands for Object-Relational Mapping. It’s basically a way to interact with a database using objects instead of writing raw SQL queries all the time. In simple words, you represent your database tables as classes, and rows become instances of those classes.

Laravel uses **Eloquent ORM**.

Why is ORM so useful?

- **Simplifies Database Interaction:** You don't have to write complex SQL queries manually.
- **Readable and Maintainable Code:** Code looks cleaner and more understandable.
- **Database Abstraction:** You can often switch databases (like from MySQL to PostgreSQL) with minimal changes.
- **Security:** ORMs usually help prevent SQL Injection automatically by binding parameters properly.
- **Productivity:** You can build applications faster because you spend less time thinking about the database layer.
