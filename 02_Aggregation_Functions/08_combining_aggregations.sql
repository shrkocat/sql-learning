-- Complete inventory summary per category --
SELECT
    category,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock",
    AVG(price) AS "Average Price",
    MIN(price) AS "Lowest Price",
    MAX(price) AS "Highest Price"
FROM products
GROUP BY category
ORDER BY category;

-- Combining aggregates with WHERE --
SELECT
    category,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock",
    AVG(price) AS "Average Price",
    MIN(price) AS "Lowest Price",
    MAX(price) AS "Highest Price"
FROM products
WHERE stock_quantity > 5
GROUP BY category
ORDER BY category;

-- Combining aggregates with HAVING --
SELECT
    category,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock",
    AVG(price) AS "Average Price",
    MAX(price) AS "Highest Price"
FROM products
GROUP BY category
HAVING SUM(stock_quantity) > 30
ORDER BY SUM(stock_quantity) DESC;

-- =====================================================
-- TOPIC 08: Combining Aggregates
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Create a summary for each product category.
-- Display:
-- - Number of products
-- - Total stock quantity
-- - Average product price
SELECT
    category,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock Qty",
    AVG(price) AS "Average Price"
FROM products
GROUP BY category;

-- QUESTION 2:
-- Create a summary for each supplier.
-- Display:
-- - Number of products
-- - Total stock quantity
-- - Lowest product price
-- - Highest product price
-- Sort by supplier alphabetically.
SELECT
    supplier,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock Qty",
    MIN(price) AS "Lowest Price",
    MAX(price) AS "Highest Price"
FROM products
GROUP BY supplier
ORDER BY supplier;

-- QUESTION 3:
-- Create a summary for each category and supplier.
-- Display:
-- - Number of products
-- - Total stock quantity
-- - Average product price
SELECT
    category,
    supplier,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock Qty",
    AVG(price) AS "Average Price"
FROM products
GROUP BY category, supplier;

-- QUESTION 4:
-- Create a summary for each category.
-- Only include products with stock quantity greater than 5.
-- Display:
-- - Number of products
-- - Total stock quantity
-- - Average product price
-- Sort by total stock quantity in descending order.
SELECT
    category,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock Qty",
    AVG(price) AS "Average Price"
FROM products
WHERE stock_quantity > 5
GROUP BY category
ORDER BY SUM(stock_quantity) ASC;

-- QUESTION 5:
-- Create a summary for each category.
-- Display:
-- - Number of products
-- - Total stock quantity
-- - Average product price
-- - Highest product price
--
-- Only display categories with total stock greater than 20.
-- Sort by total stock quantity in descending order.
SELECT
    category,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock Qty",
    AVG(price) AS "Average Price",
    MAX(price) AS "Highest Price"
FROM products
GROUP BY category
HAVING SUM(stock_quantity) > 20
ORDER BY SUM(stock_quantity) ASC;