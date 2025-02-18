
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


# Task 4


## Relationships in SQL - One-to-One, One-to-Many, Many-to-Many.

Relationships in SQL tables define how tables are connected to one another. Building relationships in tables helps to organize and link data across multiple tables. Creating relationships among tables provides efficient data retrieval and maintenance maintenance.

Relationships in SQL refer to the associations or connections between tables in a relational database. These relationships are established using foreign keys, which are columns in a table that refer to the primary key in another table. Relationships help organize and structure data, allowing for efficient data retrieval and maintaining data integrity.
### Type of Relationships in SQL
There are different types of relationships: one-to-one, one-to-many, many-to-many, and self-referencing.

1.**One-to-One Relationship**
  - **Definition**: Each record in Table A is associated with one and only one record in Table B, and vice versa.
  - **Setup**: Include a foreign key in one of the tables that references the primary key of the other table.
  - **For example**: Tables users and user_profiles, where each user has a single corresponding profile.
  <br>

2.**One-to-Many Relationship**
  - **Definition**: Each record in Table A can be associated with one or more records in Table B, but each record in Table B is associated with only one record in Table A.
  - **Setup**: Include a foreign key in the many side (Table B) that references the primary key of the one side (Table A).
  - **For example**: Tables departments and employees, where each department can have multiple employees, but each employee belongs to only one department.
  <br>

3.**Many-to-Many Relationship**
  - **Definition**: Each record in Table A can be associated with one or more records in Table B, and vice versa.
  - **Setup**: Create a junction table that includes foreign keys to both tables A and B.
  - **For example**: Tables students and courses, where each student can enroll in multiple courses, and each course can have multiple students.
  <br>

4.**Self Referencing Relationship**
  - **Definition**: A table that references itself.
  - **Setup**: Include a foreign key in the table that references its own primary key.
  - **For example**: A table employees with a manager_id column that references the employee_id of another record in the same table.
  <br>

### [reference](https://www.geeksforgeeks.org/relationships-in-sql-one-to-one-one-to-many-many-to-many/)


## Write-ahead logging.

Write-Ahead Logging (WAL) is a technique used in storage systems to ensure the durability and consistency of transactions.

- The basic idea behind WAL is to record changes in a log before they are applied to the actual storage.
- This log, often referred to as the write-ahead log, contains a sequential record of all changes made to the database.
- Transactions are not considered complete until the corresponding changes are safely recorded in the write-ahead log.

### [reference](https://medium.com/@vinciabhinav7/write-ahead-logs-but-why-494c3efd722d)
### [Another Reference](https://www.youtube.com/watch?v=PLnH8-BQmMg)

## Denormalized vs. Normalized Data

#### Normalization and denormalization are two key concepts in database design. This blog post delves into their key differences, use cases, and how to choose the best approach.

Normalization and denormalization are two key concepts in database design, each serving a specific purpose. The goal of normalization is to minimize data redundancy and dependency by organizing data into well-structured tables. Denormalization involves combining tables that have been normalized to improve query performance and simplify data retrieval.

The choice between the two depends on the specific requirements of the application and the balance between data consistency and system performance, but both play a very important role in data management. 

### What Is Normalized Data?
Normalized data refers to a database design technique that organizes data in a way that reduces redundancy and improves data integrity. The primary goal of normalization is to eliminate data anomalies and inconsistencies by organizing data into well-structured tables that adhere to certain rules.

The normalization process involves breaking down large tables into smaller, related tables and establishing relationships between them. This is achieved through a series of normal forms, each building on the previous one. The most common normal forms include:

- **First normal form (1NF)**, which eliminates duplicate columns within a table and ensures that each column contains atomic (indivisible) values.
- **Second normal form (2NF)**, which meets the requirements of 1NF and removes partial dependencies by ensuring that all non-key attributes are fully functionally dependent on the primary key.
- **Third normal form (3NF)**, which meets the requirements of 2NF and eliminates transitive dependencies by ensuring that non-key attributes are not dependent on other non-key attributes.


### What Is Denormalized Data?
Denormalized data refers to a database design approach where data from multiple tables is combined into a single table. The purpose of denormalization is to optimize data retrieval and improve performance, especially in scenarios where read operations significantly outnumber write operations. Unlike normalization, denormalization sacrifices some redundancy and data integrity in favor of faster query execution.

In denormalized data, related information that would typically be distributed across separate tables in a normalized database is consolidated into a single, flat table. This consolidation reduces the need for complex joins during query execution, as all the required data is available in one place. This approach is often used in data warehousing and business intelligence applications where the emphasis is on analytical processing rather than transactional processing.

Benefits of Denormalized Data
The benefits of denormalized data include:

- **Optimized data retrieval:** Denormalization aims to improve query performance by minimizing the number of joins needed to retrieve data. This is particularly beneficial in situations where complex queries are executed frequently. 
- **Simplified data analysis:** Analytical tasks and reporting can be simplified with denormalized data because all relevant information is stored in one place. This makes it easier to generate reports and perform data analysis without the complexity of navigating through multiple tables.

### [reference](https://blog.purestorage.com/purely-educational/denormalized-vs-normalized-data/#:~:text=The%20goal%20of%20normalization%20is,performance%20and%20simplify%20data%20retrieval.)


# Task 5

## Multi-version concurrency Control

### What is Multi-Version Concurrency Control (MVCC) in DBMS?
Multi-Version Concurrency Control is a technology, utilized to enhance databases by resolving concurrency problems and also data locking by preserving older database versions. When many tasks attempt to update the same piece of data simultaneously, MVCC causes a conflict and necessitates a retry from one or more of the processes.

### Types of Multi-Version Concurrency Control (MVCC) in DBMS


- **Timestamp-based MVCC**: The data visibility to transactions is defined by the unique timestamp assigned to each transaction that creates a new version of a record.
- **Snapshot-based MVCC**: This utilizes the database snapshot that is created at the beginning of a transaction to supply the information that is needed for the transaction.
- **History-based MVCC**: This Keeps track of every modification made to a record, making transaction rollbacks simple.
- **Hybrid MVCC**: This coordinates data flexibility and performance by combining two or more MVCC approaches.
### How Does Multi-Version Concurrency Control (MVCC) in DBMS Works?
- In the database, every tuple has a version number. The tuple with the greatest version number can have a read operation done on it simultaneously.
- Only a copy of the record may be used for writing operations.
- While the copy is being updated concurrently, the user may still view the previous version.
- The version number is increased upon successful completion of the writing process.
- The upgraded version is now used for every new record operation and every time there is an update, this cycle is repeated.

### [reference](https://www.geeksforgeeks.org/what-is-multi-version-concurrency-control-mvcc-in-dbms/)

## Triggers

### What is a Trigger in DBMS?
A trigger is a special kind of stored procedure that is activated ("triggered") in response to a particular event in a database.

trigger is called automatically when a data modification event occurs against a table.

There are different kinds of events that can activate a trigger like inserting or deleting rows in a table, a user logging into a database server instance, an update to a table column, a table is created, altered, or dropped, etc.

### TYPES OF TRIGGERS

1) DML triggers are automatically fired when an INSERT, UPDATE or DELETE event occurs on a table.

2) DDL triggers are automatically invoked when a CREATE, ALTER, or DROP event occurs in a    database.

3) Logon triggers is invoked when a LOGON event is raised when a user session is established.

### WHY WE NEED TRIGGER

Triggers will be helpful when we need to execute some events automatically on certain desirable scenarios. For example, we have a constantly changing table and need to know the occurrences of changes and when these changes happen. If the primary table made any changes in such scenarios, we could create a trigger to insert the desired data into a separate table.

**FOR Triggers**

The FOR triggers can be defined on tables or views. It fires only when all operations specified in the triggering SQL statement have initiated successfully.

**AFTER Triggers**

 The AFTER trigger fires only after the specified triggering SQL statement completed successfully. AFTER triggers cannot be defined on views.

**INSTEAD OF Triggers**

 An INSTEAD OF trigger allows you to override the INSERT, UPDATE, or DELETE operations on a table or view. The actual DML operations do not occur at all.

**LOGON Triggers**

In SQL Server, the Logon trigger is fired automatically on a LOGON event. They are DDL triggers and are created at the server level. We can define more than one LOGON trigger on a server.

 

### DVANTAGES OF TRIGGERS

- Triggers set database object rules and roll back if any change does not satisfy those rules. The trigger will inspect the data and make changes if necessary.

- Triggers help us to enforce data integrity.

- Triggers help us to validate data before inserted or updated.

- Triggers help us to keep a log of records.

- Triggers increase SQL queries' performance because they do not need to compile each time they  are executed.

- Triggers reduce the client-side code that saves time and effort.

- Triggers are easy to maintain.


### DISADVANTAGES OF TRIGGERS

- Triggers are invoked automatically, and their execution is invisible to the user. Therefore, it isn't easy to troubleshoot what happens in the database layer.

- Triggers may increase the overhead of the database server.

- We can define the same trigger action for multiple user actions such as INSERT and UPDATE in the same CREATE TRIGGER statement.

- We can create a trigger in the current database only, but it can reference objects outside the current database.

### [reference](https://www.geopits.com/blog/triggers-in-dbms.html)

## How can you take the backup of a database?

### Taking a backup of a database is essential to ensure data security and integrity. In MySQL, you can use the mysqldump command to create a backup of a database. The mysqldump command allows you to dump the contents of a database into a file, which can be used to restore the database in case of data loss or corruption.

### Steps to Backup a MySQL Database Using the mysqldump Command:

1. **Open a terminal window**.
2. **Use the following command to create a backup of a MySQL database**:

```powershell
mysqldump -u username -p database_name > backup.sql
```
3. **Replace username with your MySQL username, database_name with the name of the database you want to back up, and backup.sql with the name of the backup file you want to create**.  
4. **Enter your MySQL password when prompted**.
5. **The backup file will be created in the current directory**.


### [reference](https://www.sqlshack.com/how-to-backup-and-restore-mysql-databases-using-the-mysqldump-command/)
