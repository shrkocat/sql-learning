-- Order by price in ascending order --
SELECT product_name, price
FROM products
ORDER BY price ASC;

-- Can exclude ASC as ascending order is the default--

-- Order by price in descending order --
SELECT product_name, price
FROM products
ORDER BY price DESC;

-- ==========================================
-- EXERCISE 8
-- ==========================================

-- Display product_name and price, sorted from
--    lowest price to highest price.
SELECT product_name, price
FROM products
ORDER BY price ASC;

-- Display product_name and price, sorted from
--    highest price to lowest price.
SELECT product_name, price
FROM products
ORDER BY price DESC;

-- Display product_name and stock_quantity,
--    sorted from highest stock to lowest stock.
SELECT product_name, stock_quantity
FROM products
ORDER BY stock_quantity DESC; 

-- Display product_name, category, and price.
--    Sort category alphabetically, then price
--    from highest to lowest within each category.
SELECT product_name, category, price
FROM products
ORDER BY category ASC, price DESC;