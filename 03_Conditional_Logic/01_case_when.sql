-- Identify which products are available and which are out of stock --
SELECT
    product_name,
    stock_quantity,
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        ELSE 'Available'
    END AS stock_status
FROM products;

-- =====================================================
-- LEVEL 03: CONDITIONAL LOGIC
-- TOPIC 01: CASE WHEN
-- =====================================================

-- EXERCISE 1:
-- Display each product's name and stock quantity.
-- Classify products with zero stock as 'Out of Stock'.
-- Classify all other products as 'Available'.
SELECT
    product_name,
    stock_quantity,
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        ELSE 'Available'
    END AS 'Stock_Status'
FROM products;

-- EXERCISE 2:
-- Display each product's name and price.
-- Classify products costing 10000 or more as 'Expensive'.
-- Classify all other products as 'Affordable'.
SELECT
    product_name,
    price,
    CASE
        WHEN price >= 10000 THEN 'Expensive'
        ELSE 'Affordable'
    END AS 'Affordability'
FROM products;

-- EXERCISE 3:
-- Display each product's name and supplier.
-- If the supplier is NULL, display 'Unknown Supplier'.
-- Otherwise, display the original supplier value.
SELECT
    product_name,
    supplier,
    CASE
        WHEN supplier IS NULL THEN 'Unknown Supplier'
        ELSE supplier 
    END AS 'Supplier_Status'
FROM products;