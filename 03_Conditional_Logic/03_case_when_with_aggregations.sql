-- Group By without using distinctive categories --
SELECT
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity <= 10 THEN 'Low Stock'
        WHEN stock_quantity <= 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END AS "Stock Classification",

    COUNT(*) AS "Number of Products"

FROM products

GROUP BY
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity <= 10 THEN 'Low Stock'
        WHEN stock_quantity <= 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END

ORDER BY COUNT(*) DESC;

-- Conditional Aggregation --
SELECT
    category,

    SUM(CASE
        WHEN stock_quantity = 0 THEN 1
        ELSE 0
    END) AS "Out of Stock",

    SUM(CASE
        WHEN stock_quantity BETWEEN 1 AND 10 THEN 1
        ELSE 0
    END) AS "Low Stock",

    SUM(CASE
        WHEN stock_quantity BETWEEN 11 AND 30 THEN 1
        ELSE 0
    END) AS "Normal Stock",

    SUM(CASE
        WHEN stock_quantity > 30 THEN 1
        ELSE 0
    END) AS "High Stock"

FROM products
GROUP BY category
ORDER BY category;

-- =====================================================
-- LEVEL 03: CONDITIONAL LOGIC
-- TOPIC 03: CASE WHEN WITH AGGREGATION
-- =====================================================

-- EXERCISE 1:
-- Count how many products have a stock quantity
-- of 10 or less.
-- Name the result "Low Stock Products".
SELECT
    SUM(
        CASE
            WHEN stock_quantity <= 10 THEN 1
        END
    ) AS "Low Stock Products"
FROM products;

-- EXERCISE 2:
-- Create a stock classification summary.
-- Display:
-- - Stock Classification
-- - Number of Products
--
-- Classifications:
-- 0 = 'Out of Stock'
-- 1 to 10 = 'Low Stock'
-- 11 to 30 = 'Normal Stock'
-- Above 30 = 'High Stock'
--
-- Sort by the number of products, highest first.
SELECT
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity >= 1 AND stock_quantity <= 10 THEN 'Low Stock'
        WHEN stock_quantity >= 11 AND stock_quantity <= 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END AS "Stock Classification",
    COUNT(*)
FROM products
GROUP BY
    CASE
        WHEN stock_quantity = 0 THEN 'Out of Stock'
        WHEN stock_quantity >= 1 AND stock_quantity <= 10 THEN 'Low Stock'
        WHEN stock_quantity >= 11 AND stock_quantity <= 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END
ORDER BY COUNT(*) DESC;

-- EXERCISE 3:
-- Create an inventory report for each product category.
-- Display:
-- - Category
-- - Number of products with zero stock
-- - Number of products with stock between 1 and 10
-- - Number of products with stock above 10
--
-- Sort alphabetically by category.
SELECT
    category,
    SUM(
        CASE
            WHEN stock_quantity = 0 THEN 1
            ELSE 0
        END
    ) AS "Out of Stock",
    SUM(
        CASE
            WHEN stock_quantity BETWEEN 1 AND 10 THEN 1
            ELSE 0
        END
    ) AS "Low Stock",
    SUM(
        CASE
            WHEN stock_quantity > 10 THEN 1
            ELSE 0
        END
    ) AS "Normal or High Stock"
FROM products
GROUP BY category
ORDER BY category ASC;

-- EXERCISE 4:
-- Calculate the total stock quantity of products
-- costing at least 10000.
--
-- Display the result as "High Value Product Stock".
-- Use conditional aggregation.
SELECT
    SUM(
        CASE
            WHEN price >= 10000 THEN stock_quantity
            ELSE 0
        END
    ) AS "High Value Product Stock"
FROM products;