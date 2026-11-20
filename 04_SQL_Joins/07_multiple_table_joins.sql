-- ==========================================
-- TOPIC 7: MULTIPLE TABLE JOINS
-- Setup: Order Payments
-- ==========================================

CREATE TABLE order_payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50)
);

INSERT INTO order_payments
(payment_id, order_id, payment_method, payment_status)
VALUES
(1, 101, 'Credit Card', 'Paid'),
(2, 102, 'GCash', 'Paid'),
(3, 103, 'Bank Transfer', 'Paid'),
(4, 105, 'Credit Card', 'Pending'),
(5, 106, 'GCash', 'Paid');

SELECT
    customers.customer_name,
    orders.order_id,
    orders.total_amount,
    order_payments.payment_method,
    order_payments.payment_status
FROM customers
INNER JOIN orders
    ON customers.customer_id = orders.customer_id
INNER JOIN order_payments
    ON orders.order_id = order_payments.order_id;