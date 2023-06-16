# product table
INSERT INTO product (product_name, quantity, price) VALUES
('Apple iPhone 13 Pro', 10, 999.99),
('Samsung Galaxy S22 Ultra', 20, 1199.99),
('Google Pixel 6 Pro', 30, 899.99);

# customer table
INSERT INTO customer (customer_name) VALUES
('John Doe'),
('Jane Doe'),
('Sally Smith');

# order table
INSERT INTO order (customer_id, created_at) VALUES
(1, '2023-06-16'),
(2, '2023-06-17'),
(3, '2023-06-18');

# order_item table
INSERT INTO order_item (order_id, product_id, quantity, base_price, total_price) VALUES
(1, 1, 1, 999.99, 999.99),
(1, 2, 2, 1199.99, 2399.98),
(2, 3, 3, 899.99, 2699.97);
