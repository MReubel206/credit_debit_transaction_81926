# Credit, Debit & Loan Transactions Database

A relational database project modeling a bank's customers, accounts, and transaction history across three account types: credit cards, debit cards, and loans. Built in MySQL Workbench as part of a SQL portfolio for data analyst internship applications.

## Project Overview

This project simulates a simplified banking system where customers can hold multiple accounts of different types, and each account generates a history of transactions. It was designed to practice multi-table relationships, normalization with a lookup table, and writing queries that combine filtering, joins, and aggregation.

## Schema Design

The database consists of four tables:

- **`customers`** — customer contact and signup info
- **`payment_types`** — lookup table defining account types (Credit Card, Debit Card, Loan)
- **`accounts`** — each customer's accounts, linked to a customer and a payment type
- **`transactions`** — individual transactions tied to a specific account

**Relationships:**
- One customer → many accounts
- One payment type → many accounts
- One account → many transactions

See `er_diagram_credit_debit_081826.png` for the full entity-relationship diagram, generated using MySQL Workbench's Reverse Engineer feature.

## Files

| File | Description |
|---|---|
| `schema.sql` | Creates the database and all four tables with primary keys, foreign keys, and constraints |
| `insert_data.sql` | Populates the tables with sample data (6 customers, 3 payment types, 8 accounts, 25 transactions) |
| `queries.sql` | Six SQL queries demonstrating filtering, joins, aggregation, and grouping |
| `er_diagram_credit_debit_081826.png` | Entity-relationship diagram of the schema |

## Sample Queries

The `queries.sql` file includes:

1. **Basic filter** — transactions over $200
2. **Multi-table JOIN** — each customer's accounts with their account type
3. **Aggregation** — total transaction amount per account
4. **LEFT JOIN** — customers with no accounts on file
5. **Filtered JOIN** — all transactions on credit card accounts only
6. **GROUP BY with HAVING** — customers whose total transaction amount exceeds $500

## Tools Used

- MySQL Workbench (schema design, querying, ER diagram generation)
- Git & GitHub (command-line workflow: SSH key setup, clone, add, commit, push via PowerShell)

## Notes

- One customer in the sample data intentionally has no accounts, to demonstrate the difference between an `INNER JOIN` and a `LEFT JOIN`.
- `credit_limit` and `interest_rate` are nullable on the `accounts` table since they only apply to certain account types (e.g. a debit card has no credit limit or interest rate).
- 'Clean up README note'
