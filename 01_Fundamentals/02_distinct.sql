-- Retrieve categories that appeared in the products table (only unique values) --
SELECT DISTINCT category FROM products;

-- Retrieve unique combinations of category and supplier --
SELECT DISTINCT category, supplier FROM products;

-- ==========================================
-- EXERCISE 2
-- ==========================================

-- Retrieve all unique product categories. --
SELECT DISTINCT category FROM products;

-- Retrieve all unique suppliers. --
SELECT DISTINCT supplier FROM products;

-- Retrieve all unique combinations of product categories and suppliers. --
SELECT DISTINCT category, supplier FROM products;
