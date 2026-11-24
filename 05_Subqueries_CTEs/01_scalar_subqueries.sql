-- Query Structure with Aggregated Function --
SELECT
    product_name,
    price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);

-- ============================================
-- LEVEL 5: SUBQUERIES AND CTEs
-- TOPIC 1: SCALAR SUBQUERIES
-- ============================================

-- Exercise 1: Above Average Price
SELECT
    product_name,
    price
FROM products
WHERE price > (
    SELECT 
        AVG(price)
    FROM products
);

-- Exercise 2: Most Expensive Product Price
SELECT
    product_name,
    price
FROM products
WHERE price = (
    SELECT 
        MAX(price)
    FROM products
);

-- Exercise 3: Above Average Stock
SELECT
    product_name,
    stock_quantity
FROM products
WHERE stock_quantity > (
    SELECT 
        AVG(stock_quantity)
    FROM products
);