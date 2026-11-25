-- IN --
SELECT
    product_name,
    supplier,
    price
FROM products
WHERE supplier IN (
    SELECT supplier
    FROM products
    WHERE price > 10000
);

-- ANY --
SELECT
    product_name,
    price
FROM products
WHERE price > ANY (
    SELECT price
    FROM products
    WHERE category = 'Electronics'
);

-- ALL --
SELECT
    product_name,
    price
FROM products
WHERE price > ALL (
    SELECT price
    FROM products
    WHERE category = 'Electronics'
);

-- ============================================
-- LEVEL 5: SUBQUERIES AND CTEs
-- TOPIC 2: MULTI-ROW SUBQUERIES
-- ============================================

-- Exercise 1: IN
SELECT
    product_name,
    supplier,
    price
FROM products
WHERE supplier IN (
    SELECT supplier
    FROM products
    WHERE price > 5000
);

-- Exercise 2: ANY
SELECT
    product_name,
    price
FROM products
WHERE price > ANY (
    SELECT price
    FROM products
    WHERE supplier = 'OfficePlus'
);

-- Exercise 3: ALL
SELECT
    product_name,
    price
FROM products
WHERE price > ALL (
    SELECT price
    FROM products
    WHERE supplier = 'GadgetHub'
);