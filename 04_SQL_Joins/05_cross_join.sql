-- ============================================
-- LEVEL 4: SQL JOINS
-- TOPIC 5: CROSS JOIN
-- ============================================

-- Exercise 1: Customer and Product Combinations
-- Display every possible combination of customers and products.
SELECT
    customers.customer_name,
    products.product_name
FROM customers
CROSS JOIN products;

-- Exercise 2: Filtered Customer and Product Combinations
-- Display customers paired with products priced above 5,000.
-- Include customer_name, product_name, and category.
SELECT
    customers.customer_name,
    products.product_name,
    products.category
FROM customers
CROSS JOIN products
WHERE products.price > 5000;

-- Exercise 3: Store and Product Planning
-- Generate every possible combination of stores and products.
-- Display store_name, product_name, and category.
-- Only include products with stock_quantity greater than 0.
CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100)
);

INSERT INTO stores (store_id, store_name)
VALUES
    (1, 'Manila Branch'),
    (2, 'Makati Branch'),
    (3, 'Taguig Branch');

SELECT
    stores.store_name,
    products.product_name,
    products.category
FROM stores
CROSS JOIN products
WHERE products.stock_quantity > 0