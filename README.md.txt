# DataDigger – SQL Database Project

##  Project Overview

DataDigger is a MySQL database project created to manage and analyze customer, order, product, and order detail data.

The project demonstrates basic to intermediate SQL concepts and shows how multiple tables can be connected and analyzed using SQL queries.

##  Database Tables

The project contains four main tables:

- **Customers** – Stores customer information.
- **Orders** – Stores customer order information.
- **Products** – Stores product name, price, and stock.
- **OrderDetails** – Stores product quantity and subtotal for each order.

## Key SQL Concepts Used

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- INSERT
- SELECT
- UPDATE
- DELETE
- WHERE
- ORDER BY
- BETWEEN
- SUM()
- MAX()
- MIN()
- COUNT()
- GROUP BY
- LIMIT
- INNER JOIN

##  Analysis Performed

The project performs different types of analysis, including:

- Finding the most expensive and cheapest products.
- Calculating total revenue.
- Finding the top 3 products based on quantity sold.
- Checking how many times a product was sold.
- Calculating total units sold for a product.
- Combining customer, order, product, and order detail information using INNER JOIN.

##  Table Relationships

```text
Customers
    ↓
  Orders
    ↓
OrderDetails
    ↓
 Products
name - naman
