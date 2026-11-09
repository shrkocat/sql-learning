-- Sum of stock for the whole table --
SELECT SUM(stock_quantity)
FROM products;

-- Sum of stock quantity for a specific category --
SELECT SUM(stock_quantity)
FROM products
WHERE category = 'Electronics';

-- Using aliases --
SELECT SUM(stock_quantity) AS "Total Inventory"
FROM products;

-- =====================================================
-- TOPIC 02: SUM()
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Calculate the total stock quantity of all products.
SELECT SUM(stock_quantity)
FROM products;

-- QUESTION 2:
-- Calculate the total stock quantity of products
-- belonging to the Furniture category.
SELECT SUM(stock_quantity)
FROM products
WHERE category = 'Furniture';

-- QUESTION 3:
-- Calculate the total stock quantity of products
-- supplied by TechSource.
SELECT SUM(stock_quantity)
FROM products
WHERE supplier = 'TechSource';

-- QUESTION 4:
-- Calculate the total stock quantity of products
-- with a price greater than 5000.
-- Rename the output column to "Total Stock".
SELECT SUM(stock_quantity) AS "Total Stock"
FROM products
WHERE price > 5000;

-- QUESTION 5:
-- Calculate the total stock quantity of products
-- belonging to Electronics OR Accessories,
-- with a price greater than 1000.
SELECT SUM(stock_quantity)
FROM products
WHERE category IN ('Electronics', 'Accessories') AND price > 1000;