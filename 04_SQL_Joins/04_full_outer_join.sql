-- FULL OUTER JOIN:
-- A business wants to retrieve every record from both 
-- tables, including records that don't have a match
SELECT
    customers.customer_id,
    customers.customer_name,
    orders.order_id,
    orders.total_amount
FROM customers
FULL OUTER JOIN orders
    ON customers.customer_id = orders.customer_id;

-- ============================================
-- LEVEL 4: SQL JOINS
-- TOPIC 4: FULL OUTER JOIN
-- ============================================

-- Exercise 1: Complete Customer and Order Report
-- Display all customers and all orders.
-- Include records even when no matching record exists.
SELECT
    customers.customer_id,
    customers.customer_name,
    orders.order_id,
    orders.total_amount
FROM customers
FULL OUTER JOIN orders
    ON customers.customer_id = orders.customer_id;

-- Exercise 2: Identify All Unmatched Records
-- Find customers without orders and orders without customers.
SELECT
    customers.customer_id,
    customers.customer_name,
    orders.order_id,
    orders.total_amount
FROM customers
FULL OUTER JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL OR customers.customer_id IS NULL;

-- Exercise 3: Customer and Order Reconciliation
-- Create a report classifying whether records matched.
SELECT
    COALESCE(customers.customer_name, 'Unknown Customer'),
    COALESCE(orders.order_id :: TEXT, 'No Known Order'),
    COALESCE(orders.total_amount, 0),
    CASE
        WHEN customers.customer_id IS NOT NULL AND orders.order_id IS NOT NULL THEN 'Matched'
        WHEN customers.customer_id IS NOT NULL AND orders.order_id IS NULL THEN 'Customer Without Order'
        WHEN customers.customer_id IS NULL AND orders.order_id IS NOT NULL THEN 'Order Without Customer'
    END AS "record_status"
FROM customers
FULL OUTER JOIN orders
    ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_id ASC;