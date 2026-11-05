-- =====================================================
-- LEVEL 01: SQL FUNDAMENTALS
-- PRACTICAL ASSESSMENT
-- BUSINESS SCENARIO: PRODUCT INVENTORY ANALYSIS
-- =====================================================

-- SCENARIO:
-- You are working as a Junior Data Analyst for a retail
-- company. The store manager has requested a product
-- inventory report to identify expensive products,
-- monitor stock levels, and review supplier information.
--
-- Your task is to use SQL queries to retrieve and analyze
-- the requested information from the products table.
--
-- DATABASE: sql_learning
-- TABLE: products
--
-- =====================================================
-- PART A: PRODUCT FILTERING
-- =====================================================

-- QUESTION 1: EXPENSIVE ELECTRONICS
-- Display product_name, category, and price for products
-- belonging to the Electronics category and costing
-- more than 5000.
SELECT product_name, category, price
FROM products
WHERE category = 'Electronics' AND price > 5000;

-- QUESTION 2: SUPPLIER RECORDS
-- Display product_name and supplier for products supplied
-- by either TechSource or GadgetHub.
SELECT product_name, supplier
FROM products
WHERE supplier IN ('TechSource', 'GadgetHub');

-- QUESTION 3: INVENTORY CHECK
-- Display product_name and stock_quantity for products
-- with fewer than 15 units in stock.
-- Sort the results from lowest stock to highest stock.
SELECT product_name, stock_quantity
FROM products
WHERE stock_quantity < 15
ORDER BY stock_quantity ASC;

-- QUESTION 4: PRODUCT SEARCH
-- Display all columns for products whose names contain
-- the letter 'o' using LIKE.
SELECT *
FROM products
WHERE product_name LIKE '%o%';

-- =====================================================
-- PART B: COMBINING SQL CONCEPTS
-- =====================================================

-- QUESTION 5: CATEGORY AND PRICE ANALYSIS
-- Display product_name, category, and price for products
-- belonging to either Furniture or Electronics,
-- with a price between 5000 and 10000.
SELECT product_name, category, price
FROM products
WHERE category IN ('Furniture', 'Electronics') AND 
      price BETWEEN 5000 AND 10000;

-- QUESTION 6: TOP PRODUCTS
-- Display the three most expensive products.
-- Show product_name and price.
-- Rename the output columns to:
-- "Product" and "Selling Price".
SELECT product_name AS "Product", price AS "Selling Price"
FROM products
ORDER BY price DESC
LIMIT 3;

-- QUESTION 7: MISSING SUPPLIER INFORMATION
-- Display product_name and category for products
-- whose supplier information is missing (NULL).
SELECT product_name, category
FROM products
WHERE supplier IS NULL;

-- QUESTION 8: OUT-OF-STOCK REPORT
-- Display product_name, category, and stock_quantity
-- for products that have zero stock OR fewer than
-- 10 units in stock.
-- Sort the results from lowest stock to highest stock.
SELECT product_name, category, stock_quantity
FROM products
WHERE stock_quantity = 0 OR stock_quantity < 10
ORDER BY stock_quantity ASC;

-- =====================================================
-- ASSESSMENT GUIDELINES
-- =====================================================

-- TOTAL QUESTIONS: 8
-- TOTAL SCORE: 100 POINTS
--
-- CORRECTNESS AND QUERY LOGIC: 80 POINTS
-- SQL FORMATTING AND READABILITY: 20 POINTS
--
-- INSTRUCTIONS:
-- 1. Write your SQL query below each question.
-- 2. Use the existing products table.
-- 3. Do not modify or delete the original dataset.
-- 4. Execute and verify each query in PostgreSQL.
-- 5. Review your results before submitting your answers.
--
-- =====================================================
-- END OF PRACTICAL ASSESSMENT
-- =====================================================