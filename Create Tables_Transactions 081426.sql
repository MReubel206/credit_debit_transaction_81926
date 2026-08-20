# Transactions_project #

# Customers #

CREATE TABLE customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL, 
email VARCHAR(100) NOT NULL UNIQUE,
phone VARCHAR(20),
signup_date DATE NOT NULL);

# payment_types #

CREATE TABLE payment_types (
payment_type_id INT AUTO_INCREMENT PRIMARY KEY,
type_name VARCHAR(30) NOT NULL,
description VARCHAR(100)
);

# accounts)

CREATE TABLE accounts ( 
account_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
payment_type_id INT NOT NULL,
account_number VARCHAR(20) NOT NULL UNIQUE,
balance DECIMAL(10,2) NOT NULL,
credit_limit DECIMAL(10,2),
interest_rate DECIMAL(5,2),
open_date DATE NOT NULL,
status VARCHAR(20) NOT NULL,
CONSTRAINT fk_accounts_customer
	FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
CONSTRAINT fk_accounts_payment_type
	FOREIGN KEY (payment_type_id) REFERENCES payment_types(payment_type_id)
);

# transactions #

CREATE TABLE transactions (
transaction_id INT AUTO_INCREMENT PRIMARY KEY,
account_id INT NOT NULL,
trnasaction_date DATE NOT NULL,
amount DECIMAL(10,2) NOT NULL,
transaction_type VARCHAR(20) NOT NULL,
merchant VARCHAR (100),
description VARCHAR(150),
CONSTRAINT fk_transactions_account
	FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

	ALTER TABLE transactions CHANGE trnasaction_date transaction_date DATE NOT NULL;
    
    # Quick Sanity Check #
    
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM payment_type;

SHOW DATABASES;

USE credit_debt_loan_project_081826;

SELECT DATABASE();

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM payment_types;
SELECT COUNT(*) FROM accounts;
SELECT COUNT(*) FROM transactions;