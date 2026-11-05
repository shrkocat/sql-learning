-- Retrieve rows that only have Electronics as their category --
SELECT *
FROM products
WHERE category = 'Electronics';

-- ==========================================
-- EXERCISE 4
-- ==========================================

-- Display all columns for products in the 'Electronics' category.
SELECT * FROM products WHERE category = 'Electronics';

-- Display the product_name and price of the product named 'Laptop'.
SELECT 
       product_name as "Product Name",
       price
FROM products 
WHERE product_name = 'Laptop';

-- Display all columns for products supplied by 'GadgetHub'.
SELECT * FROM products WHERE supplier = 'GadgetHub';

-- Display the product_name and stock_quantity of the product named 'Desk'.
SELECT 
       product_name as "Product Name",
       stock_quantity as "Available Stock"
FROM products
WHERE product_name = 'Desk';
