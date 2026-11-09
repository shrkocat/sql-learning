-- Categories with total stock greater than 30 --
SELECT
    category,
    SUM(stock_quantity) AS "Total Stock"
FROM products
GROUP BY category
HAVING SUM(stock_quantity) > 30;
-- Cannot use simple WHERE condition as WHERE cannot handle aggregated conditions --

SELECT
    category,
    COUNT(*) AS "Number of Products"
FROM products
GROUP BY category
HAVING COUNT(*) >= 3;

-- Combining WHERE and HAVING --
SELECT
    category,
    COUNT(*) AS "Number of Products"
FROM products
WHERE stock_quantity > 5
GROUP BY category
HAVING COUNT(*) >= 2;

-- =====================================================
-- TOPIC 07: HAVING
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Display categories with more than 2 products.
-- Rename the count column to "Number of Products".
SELECT
    category,
    COUNT(*) as "Number of Products"
FROM products
GROUP BY category
HAVING COUNT(*) > 2;

-- QUESTION 2:
-- Display suppliers whose total stock quantity
-- is greater than 20.
-- Rename the output column to "Total Stock".
SELECT
    supplier,
    SUM(stock_quantity) AS "Total Stock"
FROM products
GROUP BY supplier
HAVING SUM(stock_quantity) > 20;

-- QUESTION 3:
-- Display categories whose average product price
-- is greater than 5000.
-- Rename the output column to "Average Price".
SELECT
    category,
    AVG(price) AS "Average Price"
FROM products 
GROUP BY category
HAVING AVG(price) > 5000

-- QUESTION 4:
-- Display suppliers whose highest product price
-- is greater than 10000.
-- Rename the output column to "Highest Price".
SELECT
    supplier,
    MAX(price) AS "Highest Price"
FROM products
GROUP BY supplier
HAVING MAX(price) > 10000;

-- QUESTION 5:
-- Only consider products with stock quantity
-- greater than 5.
-- Group the remaining products by category.
-- Display only categories with at least 2 products.
-- Rename the count column to "Number of Products".
SELECT
    category,
    COUNT(*) AS "Number of Products"
FROM products
WHERE stock_quantity > 5
GROUP BY category
HAVING COUNT(*) >= 2;