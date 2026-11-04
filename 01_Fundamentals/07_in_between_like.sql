-- Multiple Conditions -- 
WHERE category = 'Electronics'
OR category = 'Furniture'
OR category = 'Accessories';

-- Can instead use IN --
WHERE category IN ('Electronics', 'Furniture', 'Accessories');

-- Simplified Condition --
WHERE price >= 1000 AND price <= 8000;

-- Can instead use BETWEEN --
SELECT product_name, price
FROM products
WHERE price BETWEEN 1000 AND 8000;

-- Search using patterns (names that start with D) --
SELECT product_name
FROM products
WHERE product_name LIKE 'D%';

-- ==========================================
-- LIKE PATTERN REFERENCE
-- ==========================================

-- '%'  = Matches zero or more characters
-- '_'  = Matches exactly one character

-- PATTERN          MEANING                  EXAMPLE MATCHES
-- 'D%'             Starts with D             Desk, Desk Chair
-- '%s'             Ends with s               Headphones
-- '%top%'          Contains "top"            Laptop
-- '_ouse'          Any one character + ouse  Mouse

-- ==========================================
-- EXERCISE 7
-- ==========================================

-- Display product_name and category for products
--    belonging to Electronics, Furniture, or Accessories
--    using IN.
SELECT product_name, category 
FROM products
WHERE category IN ('Electronics', 'Furniture', 'Accessories');

-- Display product_name and price for products
--    priced between 1000 and 8000 using BETWEEN.
SELECT product_name, price
FROM products
WHERE price BETWEEN 1000 AND 8000;

-- Display all columns for products supplied by
--    either TechSource or GadgetHub using IN.
SELECT *
FROM products
WHERE supplier IN ('TechSource', 'GadgetHub');

-- Display product_name for products whose names
--    start with the letter 'D' using LIKE.
SELECT product_name
FROM products
WHERE product_name LIKE 'D%';

-- Display product_name for products whose names
--    contain the word 'top' using LIKE.
SELECT product_name
FROM products
WHERE product_name LIKE '%top%';