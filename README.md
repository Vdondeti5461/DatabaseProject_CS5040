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

Oracle live Sql access - https://livesql.oracle.com/apex/livesql/s/z4k415zjbidot1hpl0ww0wbc
Apex Information - https://mail-attachment.googleusercontent.com/attachment/u/0/?ui=2&ik=fab40601f1&attid=0.1&permmsgid=msg-a:r323807790244156335&th=18c663c8903202d2&view=att&disp=inline&realattid=18c663c28da47ae62c31&ser=1&saddbat=ANGjdJ_nV24CJER_G5h0BEpJdx7tdbnmzGbJvmUDk3D0BBzvbsTQGxdmNr0sYxBq73sVVXM9snqGll3tjit7G5mt25REorYukYGvEnS8mpsfCVcVyql9fLXrZQH3uoCdeYpsU6GVhyiVwwKhZ_5UF7_P67hR-kvepkjdd4mi9ESQ5vN7OH74AWUqozMAUAsgYy1zFs0bWXeXNIu5oNofCdF0-Vo17prYfm-kFpcioe5d5EQXb2lCbset8xGGJRxt9Grnr3qY4VwikC5DYoiqjHRJkgw6DMA7MOEKvbV7cbipyds-OX0j1xVruMaWo0bB3FAmk_rnt7UNdD7psiLsXxCeFzqaIVqm8aGxAHxm-KHJDRbsYHpvesCRgJwy2zIH8ROBKP6kQY6y_A8TcLZuQZzAG4_NgJcsu5M1pdEUli5Rr6X0-CZGmLKH38pnC5ceTv7EP0oFI6x_ANrya39ssYuyMJA8hpNHKl87Y-xO3je2QFDz3D8Uh04h8opVLyO9ApASvADe4AXZr4UhZvO14Ojd00nXAM3nvMgmgSG7B5xED-wl9CCmkyG_8LVr2-iJIA6VkngwljktbpAH5yLprwq4xFQWQISGgGqAw9yidWtvm7dQzyfnWR2z832dk1568QhuKM84IWBtCWQpnmH6PFJupeluxRfbOUZjn43g1DcpX13w_yIA7zinwNg_uCEMSkZxft_PQdZLbn5HFHy8QHj6vpLA71baCg59HvrDHv1fdsrdtD7fiv_NJJooowNbWnF864DwXLEW5PYPSQ6MS4zz5QcLGsqk52jtHCPUY1tb2RXigb78haF4BeYJdcpbSbpJX1bTgkVeyzgsKT6ptrjNl4v3nghYKakT3G3Y41WVCnSAR-rqrLFqyIpX9aXqVpxVKuFd5tgSslG1R14NS2TTf3TIdx7cpiKdUtKagW1qzx5IASlVIrtKn8UKqebue0rbAULkGs7LnP2wxzNGZyUl-Md61op9fqaUlQjRypi6Z8kywbS9NAdqnVZ3H0Y0dvA-7wxBp3Wpu6lArmLEAAHydzBvsEKhEpHvOfb4fY1WEYU9sLbWrxkJnLBTfUlOFSw4E3XH-P6cgKYkX7a1ixC6XfiA_qRYpaDIp6W18A
