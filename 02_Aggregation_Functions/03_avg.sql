-- Calculate the average of price for all products --
SELECT AVG(price)
FROM products;

-- Average a specific category --
SELECT AVG(price)
FROM products
WHERE category = 'Electronics';

-- Averaging with multiple conditions --
SELECT AVG(price)
FROM products
WHERE category = 'Accessories'
AND price > 500;

-- With aliases --
SELECT AVG(price) AS "Average Product Price"
FROM products;

-- =====================================================
-- TOPIC 03: AVG()
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Calculate the average price of all products.
SELECT AVG(price)
FROM products;

-- QUESTION 2:
-- Calculate the average stock quantity of all products.
SELECT AVG(stock_quantity)
FROM products;

-- QUESTION 3:
-- Calculate the average price of products
-- belonging to the Furniture category.
SELECT AVG(price)
FROM products
WHERE category = 'Furniture';

-- QUESTION 4:
-- Calculate the average price of products supplied
-- by TechSource.
-- Rename the output column to "Average Price".
SELECT AVG(price) as "Average Price"
FROM products
WHERE supplier = 'TechSource';

-- QUESTION 5:
-- Calculate the average price of products belonging
-- to Electronics OR Furniture, with stock quantity
-- greater than 5.
SELECT AVG(price)
FROM products
WHERE category IN ('Electronics', 'Furniture') AND stock_quantity > 5;