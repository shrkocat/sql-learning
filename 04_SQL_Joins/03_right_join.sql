-- A RIGHT JOIN:
-- All six orders are retained.
-- Order 104 remains despite having no matching customer.
-- Its customer_name becomes NULL.
-- Charlie and Edward disappear because they have no matching orders.
SELECT
    customers.customer_name,
    orders.order_id,
    orders.total_amount
FROM customers
RIGHT JOIN orders
    ON customers.customer_id = orders.customer_id;

-- ============================================
-- LEVEL 4: SQL JOINS
-- TOPIC 3: RIGHT JOIN
-- ============================================

-- Exercise 1: Complete Order Records
-- Display every order ID, customer ID, and customer name.
-- Include orders even when the customer does not exist.
SELECT
    orders.order_id,
    orders.customer_id,
    customers.customer_name
FROM customers
RIGHT JOIN orders
    ON customers.customer_id = orders.customer_id;
    
-- Exercise 2: Unmatched Orders
-- Identify orders that do not have a matching customer.
SELECT
    orders.order_id,
    orders.customer_id,
    orders.total_amount
FROM customers
RIGHT JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE customers.customer_id IS NULL
ORDER BY orders.order_id ASC;

-- Exercise 3: Order Value Classification
-- Create a report containing all orders, including
-- those without matching customers.
SELECT
    orders.order_id,
    COALESCE(
        NULLIF(customers.customer_name, ''), 'Customer Unknown'
    ) AS "customer_name",
    COALESCE(
        NULLIF(customers.city, ''), 'City Unknown'
    ) AS "city",
    orders.total_amount,
    CASE
        WHEN orders.total_amount >= 3000 THEN 'High Value'
        WHEN orders.total_amount >= 1500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS "classif"
FROM customers
RIGHT JOIN orders
    ON customers.customer_id = orders.customer_id
ORDER BY orders.total_amount DESC;
