-- Simplify parameters into readable and understandable column names --
SELECT product_id as "Product ID" FROM products;

SELECT product_name as "Product Name" FROM products;

SELECT stock_quantity as "Available Qty." FROM products;

-- ==========================================
-- EXERCISE 3
-- ==========================================

-- Display product_name as "Product"
SELECT product_name as "Product" FROM products;

-- Display price as "Product Price"
SELECT price as "Product Price" FROM products;

-- Display stock_quantity as "Available Stock"
SELECT stock_quantity as "Available Stock" FROM products;

-- Display all three columns using the aliases above
SELECT product_name as "Product",
       price as "Product Price",
       stock_quantity as "Available Stock"
FROM products;