-- Count all rows for the product table --
SELECT COUNT(*)
FROM products;

-- Count all data where supplier is present --
SELECT COUNT(supplier)
FROM products;

SELECT *
FROM products
WHERE supplier IS NOT NULL;

SELECT *
FROM products
WHERE supplier IS NULL;
-- 10 is only retrieved as one is NULL --

-- Count all rows that are Electronics --
SELECT COUNT(*)
FROM products
WHERE category = 'Electronics';

-- =====================================================
-- TOPIC 01: COUNT()
-- PRACTICE EXERCISES
-- =====================================================

-- QUESTION 1:
-- Count the total number of products in the products table.
SELECT COUNT(product_name)
FROM products;

-- QUESTION 2:
-- Count how many products belong to the Accessories category.
SELECT COUNT(product_name)
FROM products
WHERE category = 'Accessories';

-- QUESTION 3:
-- Count how many products have a supplier value
-- that is NOT NULL.
SELECT COUNT(product_name)
FROM products
WHERE supplier IS NOT NULL;

-- QUESTION 4:
-- Count how many unique suppliers exist.
-- Remember that NULL should not be counted.
SELECT COUNT(DISTINCT supplier)
FROM products
WHERE supplier IS NOT NULL;

-- QUESTION 5:
-- Count how many products have a stock quantity
-- greater than or equal to 10.
SELECT COUNT(product_name)
FROM products
WHERE stock_quantity >= 10;