
-- ============================================
-- LEVEL 04: SQL JOINS
-- Topic 8: Practice Exercises
-- ============================================


-- ============================================
-- Exercise 1: Customer Order Report
-- Topic: LEFT JOIN
-- ============================================
-- Business Scenario:
-- A sales manager wants a report showing every
-- customer and their orders, including customers
-- who have never placed an order.
--
-- Requirements:
-- 1. Display customer_name, city, order_id,
--    and total_amount.
-- 2. Include customers without orders.
-- 3. Sort by customer_name alphabetically.
SELECT
    customers.customer_name,
    customers.city,
    COALESCE(orders.order_id :: TEXT, 'No Order Matched/Placed') AS "order_id",
    COALESCE(orders.total_amount :: TEXT, 'N/A') AS "total_amount"
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
ORDER BY customers.customer_name;

-- ============================================
-- Exercise 2: Payment Monitoring
-- Topic: LEFT JOIN + NULL Filtering
-- ============================================
-- Business Scenario:
-- The finance department wants to identify
-- orders that have no matching payment record.
--
-- Requirements:
-- 1. Display order_id, customer_id,
--    total_amount, and payment_status.
-- 2. Include only orders without a payment record.
-- 3. Sort by order_id in ascending order.
SELECT * FROM orders;
SELECT * FROM order_payments;

SELECT
    COALESCE(orders.order_id :: TEXT, 'No Payment Record') "order_id",
    orders.customer_id,
    COALESCE(orders.total_amount :: TEXT, 'N/A') AS "total_amount",
    order_payments.payment_status
FROM orders
LEFT JOIN order_payments
    ON orders.order_id = order_payments.order_id
WHERE order_payments.order_id IS NULL
ORDER BY orders.order_id;

-- ============================================
-- Exercise 3: Employee Hierarchy
-- Topic: SELF JOIN
-- ============================================
-- Business Scenario:
-- HR wants a report showing each employee
-- alongside their manager.
--
-- Requirements:
-- 1. Display employee_name, department,
--    and manager_name.
-- 2. Include employees who do not have managers.
-- 3. Sort by employee_name alphabetically.
SELECT
    employees.employee_name,
    employees.department,
    managers.employee_name
FROM employees
LEFT JOIN employees AS managers
    ON managers.employee_id = employees.manager_id
ORDER BY employees.employee_name;