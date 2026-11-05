INSERT INTO products
(product_id, product_name, category, price, stock_quantity, supplier)
VALUES
(1, 'Laptop', 'Electronics', 45000, 10, 'TechSource'),
(2, 'Mouse', 'Accessories', 500, 50, 'GadgetHub'),
(3, 'Keyboard', 'Accessories', 1200, 30, 'TechSource'),
(4, 'Monitor', 'Electronics', 8500, 15, 'DisplayPro'),
(5, 'Headphones', 'Accessories', 2500, 20, 'SoundWorld'),
(6, 'Webcam', 'Electronics', 3200, 8, 'TechSource'),
(7, 'USB Hub', 'Accessories', 750, 40, 'GadgetHub'),
(8, 'Printer', 'Office Equipment', 6500, 5, 'PrintWorks'),
(9, 'Desk Chair', 'Furniture', 5500, 12, 'OfficePlus'),
(10, 'Desk', 'Furniture', 8000, 0, 'OfficePlus');

-- Input NULL values --
INSERT INTO products
(product_id, product_name, category, price, stock_quantity, supplier)
VALUES
(11, 'Tablet', 'Electronics', 15000, 7, NULL);