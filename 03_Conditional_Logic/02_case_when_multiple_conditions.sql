-- Generate an inventory classification report --
SELECT
    product_name,
    stock_quantity,
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity <= 10 THEN 'Low Stock'
        WHEN stock_quantity <= 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END AS "Stock Classification"
FROM products
ORDER BY stock_quantity ASC;

-- =====================================================
-- LEVEL 03: CONDITIONAL LOGIC
-- TOPIC 02: CASE WHEN MULTIPLE CONDITIONS
-- =====================================================

-- EXERCISE 1:
-- Display each product's name and stock quantity.
-- Classify products using these rules:
-- 0 = 'Out of Stock'
-- 1 to 10 = 'Low Stock'
-- 11 to 30 = 'Normal Stock'
-- Above 30 = 'High Stock'
SELECT
    product_name,
    stock_quantity,
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity >= 1 AND stock_quantity <= 10 THEN 'Low Stock'
        WHEN stock_quantity >= 11 AND stock_quantity <= 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END AS 'Stock_Status'
FROM products;

-- EXERCISE 2:
-- Display each product's name and price.
-- Classify products using these rules:
-- Below 1000 = 'Budget'
-- 1000 to 5000 = 'Mid-Range'
-- Above 5000 = 'Premium'
SELECT
    product_name,
    price,
    CASE
        WHEN price < 1000 THEN 'Budget'
        WHEN price >= 1000 AND price <= 5000 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS 'Price Class'
FROM products;

-- EXERCISE 3:
-- Display each product's name, price, and stock quantity.
-- Classify products using these rules:
-- Price >= 10000 AND stock <= 10:
-- 'High Value - Low Stock'
-- Price >= 10000:
-- 'High Value'
-- Stock <= 10:
-- 'Low Stock'
-- Otherwise:
-- 'Regular Product'
SELECT
    product_name,
    price,
    stock_quantity,
    CASE
        WHEN price >= 10000 AND stock_quantity <= 10 THEN 'High Value - Low Stock'
        WHEN price >= 10000 THEN 'High Value'
        WHEN stock_quantity <= 10 THEN 'Low Stock'
        ELSE 'Regular Product'
    END AS 'Status'
FROM products;