-- Coalesce and Case When --
SELECT
    product_name,
    COALESCE(supplier, 'Unknown Supplier') AS supplier_name,
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity <= 10 THEN 'Low Stock'
        ELSE 'Available'
    END AS stock_status
FROM products;

-- Conditional Aggregation --
SELECT
    category,
    COUNT(*) AS total_products,
    SUM(
        CASE
            WHEN stock_quantity = 0 THEN 1
            ELSE 0
        END
    ) AS out_of_stock,
    SUM(
        CASE
            WHEN stock_quantity BETWEEN 1 AND 10 THEN 1
            ELSE 0
        END
    ) AS low_stock,
    SUM(
        CASE
            WHEN stock_quantity > 10 THEN 1
            ELSE 0
        END
    ) AS available_stock
FROM products
GROUP BY category
ORDER BY category;

-- Nullif and Coalesce --
SELECT
    supplier,
    COALESCE(
        SUM(stock_quantity) / NULLIF(COUNT(*), 0),
        0
    ) AS average_stock
FROM products
GROUP BY supplier;

-- Practical Report --
SELECT
    product_name,

    COALESCE(
        NULLIF(supplier, 'Unknown'),
        'Supplier Not Assigned'
    ) AS supplier_name,

    price,

    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity <= 10 THEN 'Low Stock'
        WHEN stock_quantity <= 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END AS stock_status,

    CASE
        WHEN price >= 10000 AND stock_quantity <= 10
            THEN 'High Value - Low Stock'
        WHEN price >= 10000
            THEN 'High Value Product'
        WHEN stock_quantity = 0
            THEN 'Restock Required'
        ELSE 'Regular Product'
    END AS product_classification

FROM products
ORDER BY price DESC;

-- ============================================
-- LEVEL 3: CONDITIONAL LOGIC
-- TOPIC 6: COMBINING CONDITIONAL LOGIC
-- ============================================

-- Exercise 1:
-- Display product_name, supplier, and stock status.
-- Use COALESCE() to replace NULL suppliers
-- with 'Unknown Supplier'.
--
-- Stock status:
-- 0 = Out of Stock
-- 1–10 = Low Stock
-- Above 10 = Available
SELECT
    product_name,
    COALESCE(supplier, 'Unknown Supplier'),
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity BETWEEN 1 AND 10 THEN 'Low Stock'
        ELSE 'Available'
    END
FROM products;

-- Exercise 2:
-- Create an inventory summary grouped by category.
-- Display:
-- category
-- total_products
-- out_of_stock
-- low_stock
-- available_stock
--
-- Use conditional aggregation.
--
-- Stock classifications:
-- 0 = Out of Stock
-- 1–10 = Low Stock
-- Above 10 = Available
SELECT
    category,
    COUNT(*),
    SUM(
        CASE
            WHEN stock_quantity = 0 THEN 1
            ELSE 0
        END
    ) AS "out_of_stock",
    SUM(
        CASE
            WHEN stock_quantity BETWEEN 1 AND 10 THEN 1
            ELSE 0
        END
    ) AS "low_stock",
    SUM(
        CASE
            WHEN stock_quantity > 10 THEN 1
            ELSE 0
        END
    ) AS "available_stock"
FROM products
GROUP BY category;


-- Exercise 3:
-- Display product_name, supplier, and product classification.
-- Use NULLIF() to convert 'Unknown' supplier values into NULL.
-- Use COALESCE() to replace NULL with 'Supplier Not Assigned'.
--
-- Product classification:
-- price >= 10000 AND stock_quantity <= 10
--     = 'High Value - Low Stock'
-- price >= 10000
--     = 'High Value Product'
-- stock_quantity = 0
--     = 'Restock Required'
-- Otherwise
--     = 'Regular Product'
SELECT
    product_name,
    COALESCE(
        NULLIF(supplier, 'Unknown'),
        'Supplier Not Assigned'
    ),
    CASE
        WHEN price >= 10000 AND stock_quantity <= 10 THEN 'High Value - Low Stock'
        WHEN price >= 10000 THEN 'High Value Product'
        WHEN stock_quantity = 0 THEN 'Restock Required'
        ELSE 'Regular Product'
    END
FROM products;

-- Exercise 4:
-- Create a supplier inventory summary.
-- Display:
-- supplier_name
-- total_products
-- total_stock
-- average_stock
--
-- Replace NULL suppliers with 'Unknown Supplier'.
-- Use COALESCE() to ensure average_stock displays 0
-- if the calculation returns NULL.
-- Sort by total_stock in descending order.
SELECT
    COALESCE(supplier, 'Unknown Supplier'),
    COUNT(*),
    SUM(stock_quantity),
    COALESCE(
        SUM(stock_quantity) / NULLIF(COUNT(*), 0),
        0
    ) AS "Average Stock"

FROM products
GROUP BY COALESCE(supplier, 'Unknown Supplier')
ORDER BY SUM(stock_quantity) DESC;