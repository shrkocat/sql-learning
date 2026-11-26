SELECT
    p1.product_name,
    p1.supplier,
    p1.price
FROM products AS p1
WHERE p1.price > (
    SELECT AVG(p2.price)
    FROM products AS p2
    WHERE p2.supplier = p1.supplier
);

SELECT * FROM products;

-- ============================================
-- LEVEL 5: SUBQUERIES AND CTEs
-- TOPIC 3: CORRELATED SUBQUERIES
-- ============================================

-- Exercise 1: Above Supplier Average
SELECT
    p1.product_name,
    p1.supplier,
    p1.price
FROM products AS p1
WHERE p1.price > (
    SELECT
        AVG(p2.price)
    FROM products as p2
    WHERE p1.supplier = p2.supplier
);

-- Exercise 2: Above Supplier Average Stock
SELECT
    p1.product_name,
    p1.supplier,
    p1.stock_quantity
FROM products AS p1
WHERE p1.stock_quantity > (
    SELECT
        AVG(p2.stock_quantity)
    FROM products as p2
    WHERE p1.supplier = p2.supplier
);

-- Exercise 3: More Expensive Than Another Product
-- From the Same Supplier
SELECT
    p1.product_name,
    p1.supplier,
    p1.price
FROM products AS p1
WHERE EXISTS (
    SELECT
        1
    FROM products as p2
    WHERE p1.supplier = p2.supplier
        AND p1.price > p2.price
        AND p2.product_id <> p1.product_id
);

SELECT * FROM products;
