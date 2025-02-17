# SQL Study Roadmap - MySQL

This repository contains a practical SQL script based on a study roadmap. The script demonstrates various SQL operations including basic and advanced commands, data manipulation, transactions, and views. It serves as a reference for learning how to work with SQL in MySQL.

## 📌 Overview

The SQL script includes the following:

- **Database Creation & Table Setup**: Creating a database and tables for client and order management.
- **Data Insertion**: Populating tables with sample data.
- **CRUD Operations**: Performing `SELECT`, `UPDATE`, and `DELETE` queries.
- **Joins**: Demonstrating different types of joins (INNER JOIN, LEFT JOIN, etc.).
- **Aggregation Functions**: Using `COUNT()`, `SUM()`, `AVG()`, and `HAVING`.
- **Subqueries**: Implementing nested queries for complex conditions.
- **Transactions**: Using `START TRANSACTION`, `COMMIT`, `ROLLBACK`, and `SAVEPOINT`.
- **Views**: Creating and managing views for simplified querying.

## 📌 SQL Script Description

### 1. **Creating Tables**
The script begins by creating two tables: `Clientes` (clients) and `Pedidos` (orders). The `Pedidos` table references the `Clientes` table through a foreign key.

### 2. **Inserting Data**
Sample data is inserted into both the `Clientes` and `Pedidos` tables. This data is used for querying and testing various SQL operations.

### 3. **CRUD Operations**
The script performs:
- **SELECT**: Retrieving data from the tables.
- **UPDATE**: Modifying specific client information.
- **DELETE**: Removing an order entry.

### 4. **Joins**
Various types of joins are demonstrated:
- **INNER JOIN**: Fetching data from both tables based on the matching client ID.
- **LEFT JOIN**: Retrieving all clients, with corresponding orders where available.
- **RIGHT JOIN** and others.

### 5. **Aggregation Functions**
The script uses functions like `SUM()`, `COUNT()`, and `AVG()` to aggregate order totals by client, and filters results with the `HAVING` clause.

### 6. **Subqueries**
Subqueries are used to find clients who have placed orders above a specific value.

### 7. **Transactions**
A transaction block is demonstrated where changes to the `Pedidos` table are temporarily made and rolled back.

### 8. **Views**
A view is created to simplify querying the client order details.

## 📌 How to Use

To use this script:
1. **Clone this repository** to your local machine.
2. **Execute the SQL script** in your MySQL environment.
3. **Observe the results** from the queries, joins, aggregations, and views.

This script is designed to help you practice SQL commands and improve your understanding of database management.

---

## 📌 Contributing

Feel free to fork the repository and contribute with improvements or additional examples to further enhance this SQL learning resource.

---

## 📌 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
