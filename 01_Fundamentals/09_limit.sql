-- Show five most expensive products --
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 5;

-- Skip first three expensive products but print everything --
SELECT product_name, price
FROM products
ORDER BY price DESC
OFFSET 3;

-- Combined script to limit only 3 rows but skip the first 2 --
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3 OFFSET 2;

-- ==========================================
-- EXERCISE 9
-- ==========================================

-- Display the 3 most expensive products.
--    Show product_name and price.
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3;

-- Display the 3 cheapest products.
--    Show product_name and price.
SELECT product_name, price
FROM products
ORDER BY price ASC
LIMIT 3;

-- Display the 5 products with the highest stock.
--    Show product_name and stock_quantity.
SELECT product_name, stock_quantity
FROM products
ORDER BY stock_quantity DESC
LIMIT 5;

-- Sort products by price from highest to lowest,
--    skip the first 3 products, and display the next 3.
--    Show product_name and price.
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3 OFFSET 3;