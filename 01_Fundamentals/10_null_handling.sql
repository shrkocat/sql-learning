-- Search for NULL vals --
SELECT *
FROM products
WHERE supplier IS NULL;

-- Search for NOT NULL vals --
SELECT *
FROM products
WHERE supplier IS NOT NULL;

-- ==========================================
-- EXERCISE 10
-- ==========================================

-- 1. Display all columns for products with a NULL supplier.
SELECT *
FROM products
WHERE supplier IS NULL;

-- 2. Display product_name and supplier for products
--    that have a recorded supplier.
SELECT product_name, supplier
FROM products
WHERE supplier IS NOT NULL;

-- 3. Display product_name and category for products
--    with a NULL category.
SELECT product_name, category
FROM products
WHERE category IS NULL;

-- 4. Display product_name and price for products
--    with a known price (not NULL).
SELECT product_name, price
FROM products
WHERE price IS NOT NULL;