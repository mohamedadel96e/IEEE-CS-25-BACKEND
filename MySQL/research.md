
# Task 1

> ## What is a Database and Why Does It Exist?
>
> A Database is an organized collection of data that can be easily accessed, managed, and updated. It allows storing information in a 
> structured way to ensure data integrity, security, and efficient retrieval.
>
> ### Why Databases Exist:
>
> - **Data Organization**: They structure data logically for easy management.
> - **Data Retrieval**: Quick access to specific data through queries.
> - **Data Integrity**: Ensures accuracy and consistency.
> - **Concurrency Control**: Allows multiple users to access data simultaneously without conflicts.
> - **Security**: Protects sensitive data from unauthorized access.
<hr>

> ## What is SQL?
> SQL (Structured Query Language) is a standard language for managing relational databases. It is used to create, update, and retrieve data from databases.

<hr>

> ## History of MySQL
> MySQL is an open-source relational database management system (RDBMS) that was first released in 1995. It was developed by MySQL AB, a Swedish company founded by David Axmark, Allan Larsson, and Michael "Monty" Widenius. MySQL is now owned by Oracle Corporation after its acquisition in 2010.

<hr>

> ## Top 5 Famous Databases in the World (2024):
> ### MySQL
>
> - **Why Popular**: Open-source, fast, reliable, widely supported in web applications.
> - **Used By**: Facebook, YouTube, WordPress.
> ### PostgreSQL
>
> - **Why Popular**: Advanced features, support for complex queries, open-source, ACID compliance.
> - **Used By:** Instagram, Reddit, Skype.
> ### MongoDB
>
> - **Why Popular**: NoSQL database, handles unstructured data, flexible schema, great for big data and real-time apps.
> - **Used By**: Uber, eBay, Coinbase.
> ### Oracle Database
>
> - **Why Popular**: Enterprise-grade security, scalability, optimized for large business applications.
> - **Used By**: Banks, government institutions, large corporations.
> ### Microsoft SQL Server
>
> - **Why Popular:** Strong integration with Microsoft products, robust security, and business intelligence features.
> - **Used By**: LinkedIn, Dell, Stack Overflow.





# links Required 
- https://www.markdownguide.org/basic-syntax/
- https://bestarion.com/most-popular-databases/
- https://www.tutorialspoint.com/discuss-the-history-of-mysql



# Task 2

## What is a relational database?
A relational database is a collection of information that organizes data in predefined relationships where data is stored in one or more tables (or "relations") of columns and rows, making it easy to see and understand how different data structures relate to each other. Relationships are a logical connection between different tables, established on the basis of interaction among these tables.

### [reference](https://cloud.google.com/learn/what-is-a-relational-database)
<hr>

## RDBMS VS DBMS.

<hr>



||      DBMS       |      RDBMS      |
|-----| :--------------- | :--------------- |
| **Definition** | DBMS (Database Management System) is software that provides an interface to interact with databases for storing, retrieving, and managing data. | RDBMS (Relational Database Management System) is a type of DBMS that stores data in a structured format using rows and columns. |
| **Structure** | Data is stored as files. | Data is stored in tabular form. |
| **Normalization** | Generally, normalization is not present. | Normalization is used to reduce data redundancy. |
| **Relationships** | No relationships between data. | Relationships between tables are established using foreign keys. |
| **Examples** | File systems, XML. | MySQL, PostgreSQL, Oracle Database. |

## Advantages of RDBMS
- **Data Integrity**: Ensures accuracy and consistency of data.
- **Data Security**: Provides robust security measures to protect data.
- **Data Redundancy**: Minimizes data redundancy through normalization.
- **Scalability**: Easily scalable to handle large amounts of data.
- **Flexibility**: Supports complex queries and transactions.

<hr>

## Disadvantages of RDBMS
- **Complexity**: Can be complex to design and manage.
- **Cost**: Licensing and maintenance can be expensive.
- **Performance**: May not perform well with unstructured data.
- **Resource Intensive**: Requires significant system resources.

### [reference](https://www.geeksforgeeks.org/difference-between-rdbms-and-dbms/)


## Naming Conventions

### What Is a Naming Convention?
In simple terms, a naming convention refers to a framework used for naming your files in a specific way. This should be descriptive and consistent throughout the organization. It is always best to use a naming convention to describe the contents of the files. Your file naming convention should typically start before you begin collecting data. This helps you avoid a backlog of randomly named, unstructured content that is more likely to be misplaced.

### What are the benefits of naming conventions?
Some of the key benefits of following a naming convention are:

- Smooth Operation: When your data is easy to find, it is easy to extract the required knowledge and make decisions based on it. There won’t be any delay in getting information, and this ensures smooth administration in your organization without any bottlenecks.
- Better Version Control: Information gets constantly updated in an organizational setting. To make sure you are using the most recent version, you need to tag it accordingly in your file name. This helps you avoid errors associated with outdated knowledge.
- Save Time and Money: When you avoid duplication through proper naming conventions, you can save a lot of time and money. You won’t have to spend time looking for lost files and there will be no need to create new versions of already existing files.

### some of the popular Cases.

#### Camel Case (camelCase)
This involves capitalizing all words except the first word and removing the space in between them. For instance, public domain software can be written as publicDomainSoftware.

#### Pascal Case (PascalCase)
This involves capitalizing all words in the name, including the first, and removing the space in between them. For instance, public domain software can be written as PublicDomainSoftware.

#### Snake Case (snake_case)
This type of naming combines words simply by replacing the space with an underscore (_). The same example used above can be written as public_domain_software.

#### Kebab Case (kebab-case)
This is similar to the snake case except the underscore is replaced with a dash (-). For the file name used above, the Kebab case name can be written as public-domain-software.


### Naming Convention Best Practices and Advanced Tips
Here are some best practices you can follow to ensure proper naming conventions across your organization.

- **Identify the files**: You can start your naming convention process by identifying the files to be named. You can group similar files together and follow consistent naming. You can also have different file sets based on different departments.
- **Think about your search process**: When naming files, it is also important to think about how you search for files. Decide on the type of metadata that should appear when filtering file sets.
- **Use the Organization Name When Needed**: If you are an MSP catering to multiple clients, you can use the organization’s name in the filename. You can also use location names to differentiate branches based on different locations. However, this process is not necessary for internal IT teams.
- **Create a Guideline for Naming Conventions**: Your naming convention should also be documented and shared with your teams. Create rules for the number of characters in the file name, metadata information and more. If you are using different metadata for different file sets, you may consider creating an excel sheet with all the information to share with the concerned stakeholders.

### [reference](https://www.itglue.com/blog/naming-conventions-examples-formats-best-practices/)




# Task 3

## primary keys vs unique keys.
|Criteria|      Primary Keys       |      Unique Keys      |
|-----| :--------------- | :--------------- |
|**Basic Function** | The primary key uniquely identifies each record in the table. | The unique key serves as a unique identifier for records when a primary key is absent.|
|**NULL Values** |The primary key cannot store NULL values.|The unique key can store a null value, but only one NULL value is allowed.|
|**Purpose** |It ensures entity integrity.|It enforces unique data.|
|**Index Creation**	|	By default, the primary key creates a clustered index.|The unique key generates a non-clustered index.|
|**Number of Keys** |Each table can have only one primary key.|A table can have multiple unique keys.|
|**Value Modification** |You cannot modify or delete values in a primary key.|You can modify the values in a unique key.|
|**Uses** |It identifies specific records in the table.|It prevents duplicate entries in a column, except for a NULL value.|
### [reference](https://testbook.com/key-differences/difference-between-primary-key-and-unique-key#:~:text=Distinguishing%20Between%20Primary%20Key%20and%20Unique%20Key&text=The%20primary%20key%20uniquely%20identifies,a%20primary%20key%20is%20absent.&text=The%20primary%20key%20cannot%20store,one%20NULL%20value%20is%20allowed.)
<hr>

## constraints in MySQL.
```SQL``` constraints are used to specify rules for data in a table like :
- **NOT NULL** - Ensures that a column cannot have a NULL value
- **UNIQUE** - Ensures that all values in a column are different
- **PRIMARY KEY** - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
- **FOREIGN KEY** - Prevents actions that would destroy links between tables
- **CHECK** - Ensures that the values in a column satisfies a specific condition
- **DEFAULT** - Sets a default value for a column if no value is specified
- **CREATE INDEX** - Used to create and retrieve data from the database very quickly


### [reference](https://www.w3schools.com/mysql/mysql_constraints.asp)


## indexing in MySQL.

<p>Indexes are used to find rows with specific column values quickly. Without an index, MySQL must begin with the first row and then read through the entire table to find the relevant rows. The larger the table, the more this costs. If the table has an index for the columns in question, MySQL can quickly determine the position to seek to in the middle of the data file without having to look at all the data. This is much faster than reading every row sequentially.</p>

### [reference](https://dev.mysql.com/doc/refman/8.4/en/mysql-indexes.html)

## Difference between MySQL and Postgresql

MySQL and PostgreSQL are two of the most widely used open-source relational database management systems. MySQL is known for its speed and ease of use, making it ideal for web applications and read-heavy workloads. PostgreSQL called “Postgres,” offers advanced features and strong data integrity by making it suitable for complex queries and transactions.

### [reference](https://www.geeksforgeeks.org/difference-between-mysql-and-postgresql/)
