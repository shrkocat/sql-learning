-- ============================================
-- LEVEL 3: CONDITIONAL LOGIC
-- TOPIC 7: PRACTICE EXERCISES
-- ============================================

-- Exercise 1: Product Inventory Classification
SELECT
    product_name,
    COALESCE(supplier, 'Unknown Supplier'),
    price,
    CASE
        WHEN stock_quantity = 0 THEN 'Out Of Stock'
        WHEN stock_quantity BETWEEN 1 AND 10 THEN 'Low Stock'
        WHEN stock_quantity BETWEEN 11 AND 30 THEN 'Normal Stock'
        ELSE 'High Stock'
    END AS stock_status
FROM products;

-- Exercise 2: Product Value Classification
SELECT
    product_name,
    price,
    stock_quantity,
    CASE
        WHEN price >= 10000 AND stock_quantity <= 10 THEN 'High Value - Low Stock'
        WHEN price < 1000 THEN 'Budget Product'
        WHEN stock_quantity = 0 THEN 'Restock Required'
        ELSE 'Regular Product'
    END AS product_classification
FROM products
ORDER BY price DESC;

-- Exercise 3: Inventory Summary by Category
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
            WHEN stock_quantity BETWEEN 11 AND 30 THEN 1
            ELSE 0
        END
    ) AS normal_stock,
    SUM(
        CASE
            WHEN stock_quantity > 30 THEN 1
            ELSE 0
        END
    ) AS high_stock
FROM products
GROUP BY category;

-- Exercise 4: Supplier Data Cleaning
SELECT
    product_name,
    COALESCE(
        NULLIF(
            NULLIF(supplier, 'Unknown'), ''
        ),
        'Supplier Not Assigned'
    ) AS supplier_name
FROM products;

-- Exercise 5: Supplier Performance Summary
SELECT
    COALESCE(supplier, 'Unknown Supplier') AS supplier_name,
    COUNT(*),
    SUM(stock_quantity),
    COALESCE(
        SUM(stock_quantity)::NUMERIC / NULLIF(COUNT(*), 0),
        0
    ),
    CASE
        WHEN SUM(stock_quantity) = 0 THEN 'No Inventory'
        WHEN SUM(stock_quantity) BETWEEN 1 AND 20 THEN 'Low Inventory'
        WHEN SUM(stock_quantity) BETWEEN 21 AND 50 THEN 'Moderate Inventory'
        ELSE 'High Inventory'
    END AS stock_status
    
FROM products
GROUP BY COALESCE(supplier, 'Unknown Supplier')
ORDER BY SUM(stock_quantity) DESC;

-- ============================================
-- END OF PRACTICAL ASSESSMENT
-- ============================================