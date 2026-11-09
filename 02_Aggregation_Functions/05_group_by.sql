-- Find the total stock quantity for each product category --
SELECT
    category,
    SUM(stock_quantity) AS "Total Stock"
FROM products
GROUP BY category;

-- Find the count of products per category --
SELECT
    category,
    COUNT(*) AS "Number of Products"
FROM products
GROUP BY category;

-- With WHERE conditions --
SELECT
    category,
    COUNT(*) AS "Products In Stock"
FROM products
WHERE stock_quantity > 5
GROUP BY category;

-- =====================================================
-- TOPIC 05: GROUP BY
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Count the number of products in each category.
SELECT 
    category,
    COUNT(*)
FROM products
GROUP BY category;

-- QUESTION 2:
-- Calculate the total stock quantity for each category.
SELECT
    category,
    SUM(stock_quantity)
FROM products
GROUP BY category;

-- QUESTION 3:
-- Calculate the average product price for each category.
-- Rename the output column to "Average Price".
SELECT
    category,
    AVG(price) AS "Average Price"
FROM products
GROUP BY category;

-- QUESTION 4:
-- Find the highest product price for each category.
-- Rename the output column to "Highest Price".
SELECT
    category,
    MAX(price) AS "Highest Price"
FROM products
GROUP BY category;

-- QUESTION 5:
-- Count the number of products in each category
-- where stock quantity is greater than 5.
-- Rename the output column to "Products In Stock".
SELECT
    category,
    COUNT(*) AS "Products In Stock"
FROM products
WHERE stock_quantity > 5
GROUP BY category;