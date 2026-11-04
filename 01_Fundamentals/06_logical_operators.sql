-- AND --
SELECT product_name, category, price
FROM products
WHERE category = 'Electronics'
AND price > 5000;

-- OR --
SELECT product_name, category
FROM products
WHERE category = 'Electronics'
OR category = 'Furniture';

-- NOT --
SELECT product_name, category
FROM products
WHERE NOT category = 'Electronics';

-- Combined Logics --
SELECT product_name, category, price
FROM products
WHERE (category = 'Electronics' OR category = 'Furniture')
AND price > 5000;

-- ==========================================
-- EXERCISE 6
-- ==========================================

-- 1. Display product_name and price for products
--    in the 'Electronics' category AND costing more than 3000.
SELECT product_name, price 
FROM products
WHERE category = 'Electronics' AND price > 3000;

-- 2. Display product_name and category for products
--    belonging to either 'Furniture' OR 'Office Equipment'.
SELECT product_name, category
FROM products
WHERE category = 'Furniture' OR category = 'Office Equipment';

-- 3. Display all columns for products that are NOT
--    supplied by 'TechSource'.
SELECT *
FROM products
WHERE NOT supplier = 'TechSource';

-- 4. Display product_name, category, and price for products
--    that belong to 'Accessories' AND cost less than 1500.
SELECT product_name, category, price
FROM products
WHERE category = 'Accessories' AND price < 1500;

-- 5. Display product_name, category, and price for products
--    that belong to either 'Electronics' OR 'Furniture',
--    AND have a price greater than 5000.
SELECT product_name, category, price
FROM products
WHERE (category = 'Electronics' OR category = 'Furniture')
      AND price > 5000;