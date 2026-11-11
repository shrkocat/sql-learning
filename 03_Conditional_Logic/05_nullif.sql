-- Treat 'Unknown' as missing information. --
SELECT
    product_name,
    NULLIF(supplier, 'Unknown') AS supplier_name
FROM products;

-- Combined with Coalesce --
SELECT
    COALESCE(
        NULLIF(supplier, 'Unknown'),
        'Supplier Not Assigned'
    ) AS supplier_name
FROM products;

-- ============================================
-- LEVEL 3: CONDITIONAL LOGIC
-- TOPIC 5: NULLIF()
-- ============================================

-- Exercise 1:
-- Use NULLIF() to compare 100 and 100.
-- Display the result using the alias "result".
SELECT
    NULLIF(100,100) AS "result";

-- Exercise 2:
-- Use NULLIF() to compare 100 and 50.
-- Display the result using the alias "result".
SELECT
    NULLIF(100,50) AS "result";

-- Exercise 3:
-- Display product_name and supplier.
-- Use NULLIF() to convert the supplier value
-- 'TechSource' into NULL.
-- Use the alias "supplier_name".
SELECT
    product_name,
    NULLIF(supplier, 'TechSource') AS "supplier_name"
FROM products;

-- Exercise 4:
-- Calculate 5000 divided by 0.
-- Use NULLIF() to prevent a division-by-zero error.
-- Use the alias "result".
SELECT
    5000 / NULLIF(0,0) AS "result";

-- Exercise 5:
-- Display product_name and supplier.
-- Use NULLIF() to convert 'Unknown' into NULL.
-- Then use COALESCE() to replace NULL values
-- with 'Supplier Not Assigned'.
-- Use the alias "supplier_name".
SELECT
    product_name,
    COALESCE(
        NULLIF(supplier, 'Unknown'),
        'Supplier Not Assigned'
    ) AS "supplier_name"
FROM products;