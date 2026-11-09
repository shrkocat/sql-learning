-- Return all columns from the products table --
SELECT * FROM products;

-- Return specific columns from the products table -- 
SELECT product_name, price FROM products;

-- ==========================================
-- EXERCISE 1
-- ==========================================

-- Retrieve all columns from the products table. --
SELECT * FROM products;

-- Retrieve only product_name and category. --
SELECT product_name, category FROM products;

-- Retrieve product_id, product_name, and price. --
SELECT product_id, product_name, price FROM products;

-- Retrieve product_name, price, and supplier. --
SELECT product_name, price, supplier FROM products;