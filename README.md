# Financial Trading Database System

## Project Overview
This project represents a comprehensive database system designed for financial trading applications. It encompasses a robust set of PL/SQL scripts that create a complete schema with tables, procedures, functions, triggers, packages, indexes, and their respective use cases. It's ideal for anyone looking to understand or implement a database system for financial services, trading platforms, or similar applications.

## Features
- **Database Schema**: A complete set of tables covering users, transactions, instruments, exchanges, and more.
- **Stored Procedures & Functions**: Essential operations like user management and financial transactions are encapsulated in stored procedures and functions.
- **Triggers**: Automated actions in response to table changes, ensuring data integrity and business logic enforcement.
- **Packages**: Grouped procedures and functions for user management and financial operations.
- **Indexes**: Optimization for faster query processing on large datasets.

## Components
The project includes the following scripts:
1. **Tables**: `tables.sql` for creating all necessary tables.
2. **Data Insertion**: `insertdata.sql` for initial data population.
3. **Functions**: `functions.sql` & `functionusecase.sql` for custom functions and their use cases.
4. **Triggers**: `triggers.sql` & `triggersusecase.sql` for database triggers and their use cases.
5. **Packages**: `packages.sql` & `packageusecase.sql` for grouped procedures and their use cases.
6. **Procedures**: `procedures.sql` & `proceduresusecases.sql` for standalone procedures and their test cases.
7. **Indexes**: `indexes.sql` & `indexesusecase.sql` for creating and testing indexes.
8. **Selection Queries**: `select.sql` for querying data from all tables.

## Getting Started
### Prerequisites
- Oracle Database (11g or later)
- SQL*Plus or any Oracle-compatible database client
- Basic understanding of SQL and PL/SQL

### Installation
1. Clone the repository:
   ```
   git clone https://github.com/Vdondeti5461/DatabaseProject_CS5040.git
   ```
2. Log in to your Oracle database via SQL*Plus or your preferred client.

3. Execute the SQL scripts in the following order:
   - Run `tables.sql` to create the database schema.
   - Use `insertdata.sql` to populate the tables with initial data.
   - Sequentially execute other scripts (`functions.sql`, `triggers.sql`, etc.) as per your requirement.

### Usage
- To test the functionalities, use the respective use case scripts after running the main scripts.
- Utilize the `select.sql` to view the data in the tables.

Important Note : When we encounter any Unique constraint issue it might be due to data available in Database so try to change the values as it might be due to run script earlier.

#DROP Tables - Use the script DROP tables to drop all tables , inserted data , functions , procedures , Triggers , packages , Indexes.

We have tested the files in Oracle live sql and apex sql . Below are the details for the same.

Apex_Environment:

Workspace:	financial_application
Username:	vdondeti.naidu@gmail.com
Environment:	https://apex.oracle.com/pls/apex/
Password - Vamsi@12

Oracle live sql - https://livesql.oracle.com/apex/livesql/s/z4k415zjbidot1hpl0ww0wbc

Please check live reports with logging into portal.
