-- Report where every product has a supplier name, even when the supplier information is missing --
SELECT
    product_name,
    COALESCE(supplier, 'Unknown Supplier') AS supplier_name
FROM products;

-- Coalesce VS Case When (Same output) --
SELECT
    product_name,
    CASE
        WHEN supplier IS NULL THEN 'Unknown Supplier'
        ELSE supplier
    END AS supplier_name
FROM products;

SELECT
    product_name,
    COALESCE(supplier, 'Unknown Supplier') AS supplier_name
FROM products;

-- ============================================
-- LEVEL 3: CONDITIONAL LOGIC
-- TOPIC 4: COALESCE()
-- ============================================

-- Exercise 1:
-- Display product_name and supplier.
-- Replace NULL supplier values with 'Unknown Supplier'.
SELECT
    product_name,
    COALESCE(supplier, 'Unknown Supplier')
FROM products;

-- Exercise 2:
-- Display product_name and supplier.
-- Replace NULL supplier values with 'Supplier Not Assigned'.
-- Use the alias "Supplier Display".
SELECT
    product_name,
    COALESCE(supplier, 'Supplier Not Assigned') AS "Supplier Display"
FROM products;

-- Exercise 3:
-- Display product_name and supplier.
-- Use COALESCE() with multiple fallback values:
-- First fallback: 'Not Available'
-- Second fallback: 'Unknown Supplier'.
SELECT
    product_name,
    COALESCE(supplier, 'Not Available', 'Unknown Supplier')
FROM products;