-- Count products by category and supplier --
SELECT
    category,
    supplier,
    COUNT(*) AS "Number of Products"
FROM products
GROUP BY category, supplier
ORDER BY category, supplier;

-- Multiple aggregate functions --
SELECT
    category,
    supplier,
    COUNT(*) AS "Number of Products",
    SUM(stock_quantity) AS "Total Stock"
FROM products
GROUP BY category, supplier
ORDER BY category, supplier;

-- With WHERE condition --
SELECT
    category,
    supplier,
    COUNT(*) AS "Number of Products"
FROM products
WHERE stock_quantity > 5
GROUP BY category, supplier;

-- =====================================================
-- TOPIC 06: GROUP BY Multiple Columns
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Count the number of products for each combination
-- of category and supplier.
SELECT 
    category,
    supplier,
    COUNT(*)
FROM products
GROUP BY category, supplier;

-- QUESTION 2:
-- Calculate the total stock quantity for each
-- combination of category and supplier.
SELECT
    category,
    supplier,
    SUM(stock_quantity)
FROM products
GROUP BY category, supplier;

-- QUESTION 3:
-- Calculate the average product price for each
-- combination of category and supplier.
-- Rename the output column to "Average Price".
SELECT
    category,
    supplier,
    AVG(price) AS "Average Price"
FROM products
GROUP BY category, supplier;

-- QUESTION 4:
-- Find the highest product price for each combination
-- of category and supplier.
-- Rename the output column to "Highest Price".
-- Sort the results by category and supplier.
SELECT
    category,
    supplier,
    MAX(price) AS "Highest Price"
FROM products
GROUP BY category, supplier
ORDER BY category, supplier;


-- QUESTION 5:
-- Count the number of products for each combination
-- of category and supplier, but only include products
-- with stock quantity greater than 5.
-- Rename the output column to "Number of Products".
SELECT 
    category,
    supplier,
    COUNT(*) AS "Number of Products"
FROM products
WHERE stock_quantity > 5
GROUP BY category, supplier;