# ATM Management System

The **ATM Management System** is an SQL-based project designed to simulate and manage the core functionalities of an Automated Teller Machine (ATM) system. It focuses on creating a secure, efficient, and scalable backend to support banking operations like managing user accounts, processing transactions, and generating transaction logs.



## Features

### 1. Database Design (DDL)
- Creation of tables for storing information about customers, accounts, transactions, and ATM machines.
- Establishing relationships between entities using primary keys, foreign keys, and constraints.
- Ensuring data integrity and consistency through structured database schemas.

### 2. Data Management (DML)
- Adding, updating, and deleting customer and account data.
- Managing transaction records such as deposits, withdrawals, and balance checks.
- Ensuring efficient and secure manipulation of sensitive customer information.

### 3. Advanced Data Queries (Joins)
- Retrieving transaction histories by combining data from multiple tables.
- Validating user credentials through relationships between customer and account tables.
- Generating summaries for account balances and customer details.

### 4. Procedures and Automation (PL/SQL)
- Automating banking operations like withdrawals, deposits, and balance updates using stored procedures.
- Utilizing triggers to log transactions and enforce real-time data validation.
- Implementing functions for frequently used operations, enhancing system efficiency.



## System Workflow

- **User Registration and Account Setup**: Captures customer details and creates associated accounts.
- **Authentication**: Validates user credentials for secure ATM access.
- **Transaction Processing**: Handles operations such as deposits, withdrawals, and fund transfers.
- **Transaction History**: Provides a detailed log of transactions for each account.
- **ATM Management**: Tracks ATM-specific data, such as available cash and maintenance logs.



## Tech Stack

- **Database Language**: SQL, PL/SQL
- **Key Concepts Used**:
  - DDL (Data Definition Language)
  - DML (Data Manipulation Language)
  - SQL Joins (Inner, Outer, Cross)
  - Stored Procedures and Functions
  - Triggers
- **Database Management System**: Oracle/MySQL/PostgreSQL *(modify based on your DBMS)*



## Installation

- **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/ATM-Management-System.git
