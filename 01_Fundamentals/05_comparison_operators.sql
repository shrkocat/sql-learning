-- Return rows where prices are greater than 5000 -- 
SELECT product_name, price
FROM products
WHERE price > 5000;

-- ==========================================
-- EXERCISE 5
-- ==========================================

-- Display product_name and price for products costing more than 3000.
SELECT product_name, price FROM products WHERE price > 3000;

-- Display product_name and stock_quantity for products with fewer than 20 units in stock.
SELECT product_name, stock_quantity FROM products WHERE stock_quantity < 20;

-- Display all columns for products that do NOT belong to the 'Furniture' category.
SELECT * FROM products WHERE category != 'Furniture';

-- Display product_name and price for products costing 8000 or more.
SELECT product_name, price FROM products WHERE price >= 8000;

-- Display product_name and stock_quantity for products with exactly 0 units in stock.
SELECT product_name, stock_quantity FROM products WHERE stock_quantity = 0;