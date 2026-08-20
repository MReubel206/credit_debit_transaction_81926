# Insert Data #

INSERT INTO payment_types (type_name, description) VALUES
('Credit Card', 'Revolving credit account with a credit limit'),
('Debit Card', 'Linked directly to customer funds, no credit extended'),
('Loan', 'Fixed installment loan with interest');

# Customers #

INSERT INTO customers (first_name, last_name, email, phone, signup_date) VALUES
('Maria', 'Prez', 'maria.prez@email.com', '206-553-0114', '2022-03-15'),
('James', 'Smith', 'james.smith@email.com', '425-525-1304', '2021-11-02'),
('Priya', 'Natarajan', 'priya.natarajan@email.com', '253-123-789', '2023-01-20'),
('Devon', 'Richardson', 'devon.richardson@email.com', '206-456-1237', '202-07-09'),
('Elena', 'Rossi', 'elena.rossi@email.com', '425-193-7610', '2023-06-11'),
('Tyler', 'Nguyen', 'tyler.nguyen@email.com', '206-525-3232', '2022-09-30');

# Accounts #

INSERT INTO accounts (customer_id, payment_type_id, account_number, balance, credit_limit, interest_rate, open_date, status) VALUES
(1, 1, 'CC-10001', 842.50, 5000.00, 19.99, '2022-04-01', 'Active'),
(1, 2, 'DB-20001', 2310.75, NULL, NULL, '2022-03-20', 'Active'),
(2, 1, 'CC-10002', 3120.00, 4000.00, 22.49, '2021-11-15', 'Delinquent'),
(2, 3, 'LN-30001', 15750.00, NULL, 6.75, '2022-01-10', 'Active'),
(3, 2, 'DB-20002', 980.20, NULL, NULL, '2023-01-25', 'Active'),
(4, 1, 'CC-10003', 0.00, 6000.00, 17.99, '2020-08-01', 'Active'),
(4, 3, 'LN-30002', 8200.00, NULL, 5.25, '2021-05-18', 'Active'),
(5, 2, 'DB-20003', 450.00, NULL, NULL, '2023-06-15', 'Active');

# Transactions #

INSERT INTO transactions (account_id, transaction_date, amount, transaction_type, merchant, description) VALUES

# Maria's credit card (account 1) #

(1, '2024-01-05', 54.20, 'Purchase', 'Trader Joes', 'Groceries'),
(1, '2024-01-12', 120.00, 'Purchase', 'REI', 'Hiking gear'),
(1, '2024-02-01', 200.00, 'Payment', NULL, 'Mothnly payment'),
(1, '2024-02-14', 39.99, 'Purchase', 'Neflix', 'Subcription'),

# Maria's Debit Card (account 2) #

(2, '2024-01-03', 85.00, 'Withdrawl', NULL, 'ATM withdrawal'),
(2, '2024-01-20', 62.50, 'Purchase', 'Safeway', 'Groceries'),
(2, '2024-02-10', 1500.00, 'Deposit', NULL, 'Paycheck'),

# James credit card (account 3) #


(3, '2024-01-08', 400.00, 'Purchase', 'Best Buy', 'Electronics'),
(3, '2024-01-22', 75.30, 'Purchase', 'Shell', 'Gas'),
(3, '2024-02-05', 50.00, 'Payment', NULL, 'Partial payment'),
(3, '2024-02-20', 22.99, 'Interest Charge', NULL, 'Monthly interest'),

# James loan (account 4) #

(4, '2024-01-01', 350.00, 'Payment', NULL, 'Monthly installment'),
(4, '2024-02-01', 350.00, 'Payment', NULL, 'Monthly installment'),
(4, '2024-02-01', 88.59, 'Interest Charge', NULL, 'Monthly interest'),

# Priya's debit card (account 5) #

(5, '2024-01-15', 40.00, 'Purchase', 'Starbucks', 'Coffee'),
(5, '2024-01-30', 200.00, 'Withdrawal', NULL, 'ATM withdrawal'),
(5, '2024-02-18', 1200.00, 'Deposit', NULL, 'Paycheck'),

# Devon's closed credit card (account6) #

(6, '2021-03-01', 300.00, 'Purchase', 'Home Depot', 'Home repair'),
(6, '2021-04-01', 300.00, 'Payment', NULL, 'Final payment'),

# Devon's loan (account 7) #

(7, '2024-01-01', 180.00, 'Payment', NULL, 'Monthly installment'),
(7, '2024-02-01', 180.00, 'Payment', NULL, 'Monthly installment'),
(7, '2024-02-01', 35.87, 'Interest Charge', NULL, 'Monthly interest'),

# Elena's debit card (account 8) #

(8, '2024-01-10', 25.00, 'Purchase', 'Amazon', 'Household items'),
(8, '2024-02-01', 600.00, 'Deposit', NULL, 'Paycheck'),
(8, '2024-02-15', 175.00, 'Withdrawal', NULL, 'ATM withdrawal');

DESCRIBE transactions;


SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM payment_type;

USE transactions_project;

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM payment_types;
SELECT COUNT(*) FROM accounts;
SELECT COUNT(*) FROM transactions;

SELECT DATABASE();

SELECT COUNT(*) FROM transactions;