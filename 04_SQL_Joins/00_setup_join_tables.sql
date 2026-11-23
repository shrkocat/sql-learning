-- ============================================
-- LEVEL 4: SQL JOINS
-- SETUP: CUSTOMERS AND ORDERS
-- ============================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount NUMERIC(10,2)
);

INSERT INTO customers
(customer_id, customer_name, city)
VALUES
(1, 'Alice', 'Manila'),
(2, 'Bob', 'Makati'),
(3, 'Charlie', 'Quezon City'),
(4, 'Diana', 'Pasig'),
(5, 'Edward', 'Taguig');

INSERT INTO orders
(order_id, customer_id, order_date, total_amount)
VALUES
(101, 1, '2026-01-05', 2500),
(102, 2, '2026-01-08', 1800),
(103, 1, '2026-01-12', 3200),
(104, 6, '2026-01-15', 900),
(105, 4, '2026-01-18', 4500),
(106, 2, '2026-01-20', 1200);

-- Verify the tables --
SELECT * FROM customers;
SELECT * FROM orders;