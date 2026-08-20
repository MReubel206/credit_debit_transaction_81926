# Fresh Threads Retail Database

A relational database designed to streamline retail operations for Fresh Threads by managing data across five core entities: **Customers**, **Employees**, **Departments**, **Orders**, and **Cities**. This project demonstrates schema design, normalization, and SQL query writing for a small retail business.

## ER Diagram

![Fresh Threads ER Diagram](er_diagram.png)

The schema is normalized around five entities:
- **Customers** *place* **Orders**
- **Customers** and **Employees** each *live in* / are *located in* a **City**
- **Employees** *work in* a **Department**
- **Departments** are *located in* a **City**

## Schema Overview

| Table | Description | Primary Key | Foreign Keys |
|---|---|---|---|
| `cities` | Reference table of city/state locations | `city_id` | — |
| `customers` | Customer contact info and enrollment date | `customers_id` | `city_id` → `cities` |
| `department` | Company departments | `department_id` | `city_id` → `cities` |
| `employees` | Employee records | `employee_id` | `city_id` → `cities`, `department_id` → `department` |
| `orders` | Customer orders | `order_id` | `customers_id` → `customers`, `employee_id` → `employees` |

## Files in This Repo

| File | Description |
|---|---|
| `schema.sql` | CREATE TABLE statements for all 5 tables, with data types, primary keys, and foreign key constraints |
| `insert_data.sql` | INSERT statements with 5 sample rows per table, ordered to satisfy foreign key dependencies |
| `queries.sql` | Six required queries: filtered SELECT, JOIN, GROUP BY aggregation, UPDATE, DELETE, and a bonus HAVING query |
| `er_diagram.png` | Entity-relationship diagram of the schema |

## Sample Queries

**Filtered SELECT** — orders over $50:
```sql
SELECT order_id, customer_id, total_amount, status
FROM orders
WHERE total_amount > 50;
```

**JOIN** — match orders to the customer who placed them:
```sql
SELECT o.order_id, c.first_name, c.last_name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customers_id;
```

**Aggregation with GROUP BY** — total sales per employee:
```sql
SELECT employee_id, SUM(total_amount) AS total_sales
FROM orders
GROUP BY employee_id;
```

See [`queries.sql`](queries.sql) for the full set, including the UPDATE, DELETE, and bonus HAVING query.

## Tech Used

- MySQL Workbench (schema design, table creation, querying)
- MySQL 8.0

## Skills Demonstrated

- Relational schema design and normalization
- Primary key / foreign key relationships across 5 tables
- Entity-relationship (ER) modeling
- Data manipulation: filtered SELECT, JOIN, GROUP BY, UPDATE, DELETE, HAVING
