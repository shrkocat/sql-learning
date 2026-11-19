-- Verify the tables --
SELECT * FROM customers;
SELECT * FROM orders;

-- Sample syntax --
SELECT
    customers.customer_name,
    orders.order_id,
    orders.total_amount
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;

-- ============================================
-- LEVEL 4: SQL JOINS
-- TOPIC 1: INNER JOIN
-- ============================================

-- Exercise 1: Customer Orders
-- Display each customer's name and their order ID.
-- Only include customers with matching orders.
SELECT
    customers.customer_name,
    orders.order_id
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;

-- Exercise 2: Customer Order Details
-- Display customer name, city, order ID, order date,
-- and total amount for customers with matching orders.
SELECT
    customers.customer_name,
    customers.city,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id;

-- Exercise 3: High-Value Customer Orders
-- Display customers and orders worth more than 2000.
-- Sort by total_amount from highest to lowest.
SELECT
    customers.customer_name,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.total_amount > 2000
ORDER BY orders.total_amount DESC;

-- Exercise 4: Manila High-Value Orders
-- Filter customers by city and orders by total amount.
-- Sort by total_amount descending.
SELECT
    customers.customer_name,
    customers.city,
    orders.order_id,
    orders.total_amount
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE customers.city IN ('Manila') AND orders.total_amount > 2000
ORDER BY orders.total_amount DESC;

-- Exercise 5: Customer Spending Report
-- Calculate total spending per customer.
-- Sort from highest to lowest spending.
SELECT
    customers.customer_name,
    SUM(orders.total_amount) AS "total_spent"
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name
ORDER BY SUM(orders.total_amount) DESC;
