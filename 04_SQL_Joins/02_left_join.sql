-- A LEFT JOIN:
-- Returns every record from the left table.
-- Returns matching records from the right table.
-- If there is no matching record, right-table columns contain NULL.
SELECT
    customers.customer_name,
    orders.order_id,
    orders.total_amount
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;

-- ============================================
-- LEVEL 4: SQL JOINS
-- TOPIC 2: LEFT JOIN
-- ============================================

-- Exercise 1: Complete Customer List
-- Display every customer's name, city, and order ID.
-- Include customers even if they have no orders.
SELECT
    customers.customer_name,
    customers.city,
    orders.order_id
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;

-- Exercise 2: Customers Without Orders
-- Find customers who have never placed an order.
-- Sort by customer_id ascending.
SELECT
    customers.customer_id,
    customers.customer_name,
    customers.city,
    orders.order_id
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL
ORDER BY customers.customer_id ASC;

-- Exercise 3: Customer Purchase Activity
-- Count the number of orders per customer.
-- Include customers with zero orders.
-- Sort by total_orders descending.
SELECT
    customers.customer_id,
    customers.customer_name,
    COUNT(orders.order_id) AS "total_orders"
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
ORDER BY total_orders DESC;

-- Exercise 4: Customer Spending Report
-- Calculate total spending per customer.
-- Display 0 for customers without orders.
-- Sort by total_spent descending.
SELECT
    customers.customer_name,
    COALESCE(
        NULLIF(SUM(orders.total_amount), 0), 0
    ) AS "total_spent",
    COALESCE(
        NULLIF(COUNT(orders.order_id), 0), 0
    ) AS "total_orders"
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id
ORDER BY total_spent DESC;

-- Exercise 5: Customer Activity Classification
-- Classify customers based on their total number of orders.
-- Include customers with no purchases.
-- Sort by total_orders descending.
SELECT
    customers.customer_name,
    COUNT(orders.order_id) AS "total_orders",
    CASE
        WHEN COUNT(orders.order_id) = 0 THEN 'No Purchases'
        WHEN COUNT(orders.order_id) = 1 THEN 'Single Purchase'
        WHEN COUNT(orders.order_id) >= 2 THEN 'Repeat Customer'
    END AS "customer_status"
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name
ORDER BY total_orders DESC;