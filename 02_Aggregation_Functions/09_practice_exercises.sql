-- =====================================================
-- LEVEL 02: AGGREGATION FUNCTIONS
-- COMPREHENSIVE REVIEW
-- =====================================================

-- QUESTION 1:
-- Count the total number of products in the products table.
SELECT COUNT(*)
FROM products;

-- QUESTION 2:
-- Calculate the total stock quantity of all products
-- supplied by TechSource.
SELECT SUM(stock_quantity)
FROM products
WHERE supplier = 'TechSource';

-- QUESTION 3:
-- Find the average product price for Electronics products.
SELECT AVG(price)
FROM products
WHERE category = 'Electronics';

-- QUESTION 4:
-- Find the lowest and highest product prices
-- across all products.
-- Use aliases "Lowest Price" and "Highest Price".
SELECT
    MIN(price) AS "Lowest Price",
    MAX(price) AS "Highest Price"
FROM products;

-- QUESTION 5:
-- Count the number of products for each supplier.
-- Sort the results alphabetically by supplier.
SELECT
    supplier,
    COUNT(*)
FROM products
GROUP BY supplier
ORDER BY supplier;

-- QUESTION 6:
-- Calculate the total stock quantity for each category.
-- Display only categories with total stock greater than 20.
SELECT
    category,
    SUM(stock_quantity)
FROM products
GROUP BY category
HAVING SUM(stock_quantity) > 20;

-- QUESTION 7:
-- Calculate the average product price for each category.
-- Only include products with stock quantity greater than 5.
-- Sort the results by average price, highest first.
SELECT
    category,
    AVG(price)
FROM products
WHERE stock_quantity > 5
GROUP BY category
ORDER BY AVG(price) DESC;

-- QUESTION 8:
-- Count the number of products for each combination
-- of category and supplier.
-- Display only combinations with at least 2 products.
SELECT
    category,
    supplier,
    COUNT(*)
FROM products
GROUP BY category, supplier
HAVING COUNT(*) >= 2;

-- QUESTION 9:
-- Create a summary for each category.
-- Display:
-- - Number of products
-- - Total stock quantity
-- - Average product price
-- - Highest product price
--
-- Sort by total stock quantity, highest first.
SELECT
    category,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock Qty",
    AVG(price) AS "Average Price",
    MAX(price) AS "Highest Price"
FROM products
GROUP BY category
ORDER BY SUM(stock_quantity) DESC;

-- QUESTION 10:
-- Display suppliers whose average product price
-- is greater than 5000.
-- Display:
-- - Number of products
-- - Average product price
-- - Lowest product price
-- Sort by average product price, highest first.
SELECT
    supplier,
    COUNT(*) AS "Number of Products",
    AVG(price) AS "Average Price",
    MIN(price) AS "Lowest Price"
FROM products
GROUP BY supplier
HAVING AVG(price) > 5000
ORDER BY AVG(price) DESC;

-- =====================================================
-- END OF LEVEL 02 COMPREHENSIVE REVIEW
-- =====================================================
