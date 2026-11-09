-- Lowest retrieved data for price column --
SELECT MIN(price)
FROM products;

-- Highest retrieved data for price column --
SELECT MAX(price)
FROM products;

-- Combining commands together --
SELECT
    MIN(price) AS "Lowest Price",
    MAX(price) AS "Highest Price"
FROM products;

-- Retrieving multiple columns --
SELECT
    MIN(price) AS "Lowest Price",
    MAX(price) AS "Highest Price",
    MIN(stock_quantity) AS "Lowest Stock",
    MAX(stock_quantity) AS "Highest Stock"
FROM products;

-- Min for Electronics --
SELECT MIN(price)
FROM products
WHERE category = 'Electronics';

-- =====================================================
-- TOPIC 04: MIN() AND MAX()
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Find the lowest product price in the products table.
SELECT MIN(price)
FROM products;

-- QUESTION 2:
-- Find the highest stock quantity among all products.
SELECT MAX(stock_quantity)
FROM products;

-- QUESTION 3:
-- Find the highest product price among products
-- belonging to the Furniture category.
SELECT MAX(price)
FROM products
WHERE category = 'Furniture';

-- QUESTION 4:
-- Find both the lowest and highest stock quantities
-- among products supplied by TechSource.
-- Rename the output columns to:
-- "Minimum Stock" and "Maximum Stock".
SELECT 
    MIN(stock_quantity) AS "Minimum Stock", 
    MAX(stock_quantity) AS "Maximum Stock"
FROM products
WHERE supplier = 'TechSource';

-- QUESTION 5:
-- Find the lowest and highest product prices
-- among Electronics OR Accessories products
-- with stock quantity greater than 5.
SELECT 
    MIN(price),
    MAX(price)
FROM products
WHERE category IN ('Electronics', 'Accessories') AND stock_quantity > 5;