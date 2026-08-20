# credit_debt_loan_project Queries #

# Basic Filter #

SELECT transaction_id, account_id, transaction_date, amount, transaction_type
FROM transactions
WHERE amount > 200;

# JOIN across table #

SELECT c.first_name, c.last_name, a.account_number, p.type_name, a.balance
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id
JOIN payment_types p ON a.payment_type_id = p.payment_type_id
ORDER BY c.last_name;

# Aggregate w/ GROUP BY #

SELECT account_id, SUM(amount) AS total_amount
FROM transactions
GROUP BY account_id
ORDER BY total_amount DESC;

# Left JOIN #

SELECT c.customer_id, c.first_name, c.last_name
FROM customers c 
LEFT JOIN accounts a ON c.customer_id = a.customer_id
WHERE a.account_id IS NULL;

# Filtering by category/status

SELECT t.transaction_id, c.first_name, c.last_name, t.amount, t.transaction_type, t.transaction_date
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id
JOIN customers c ON a.customer_id = c.customer_id
JOIN payment_types p ON a.payment_type_id = p.payment_type_id
WHERE p.type_name = 'Credit Card';

# HAVING clause #

SELECT c.customer_id, c.first_name, c.last_name, SUM(t.amount) AS total_spent
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(t.amount) > 500
ORDER BY total_spent DESC;