-- Customers
INSERT INTO customers VALUES
(1, 'John', 'Smith', 'john.smith@email.com', '2024-01-10', 'New York'),
(2, 'Emma', 'Johnson', 'emma.j@email.com', '2024-01-15', 'Chicago'),
(3, 'Michael', 'Brown', 'michael.brown2002@email.com', '2024-01-12', 'Houston'),
(4, 'Olivia', 'Davis', 'oli.davis@email.com', '2024-02-03', 'Los Angeles'),
(5, 'Daniel', 'Wilson', 'daniel.w@email.com', '2024-02-10', 'New York'),
(6, 'Sophia', 'Martinez', 'sophia.martinez@email.com', '2024-02-15', 'Seattle'),
(7, 'James', 'Anderson', 'james.anderson1990@email.com', '2024-03-07', 'Boston'),
(8, 'Isabella', 'Thomas', 'isabella.thomas@email.com', '2024-03-10', 'Chicago'),
(9, 'David', 'Taylor', 'David.t@email.com', '2024-03-18', 'Houston'),
(10, 'Mia', 'Moore', 'mia.moore@email.com', '2024-03-22', 'Miami');

-- Products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 1200.00),
(102, 'Headphones', 'Electronics', 150.00),
(103, 'Table', 'Furniture', 300.00),
(104, 'Vaccum Cleaner', 'Home Appliances', 500.00),
(105, 'Smartphone', 'Electronics', 800.00);

-- Orders
INSERT INTO orders VALUES
(1001, 1, '2024-01-12', 'Completed'),
(1002, 3, '2024-01-19', 'Completed'),
(1003, 1, '2024-02-15', 'Completed'),
(1004, 2, '2024-02-25', 'Completed'),
(1005, 4, '2024-03-10', 'Completed'),
(1006, 2, '2024-03-11', 'Completed'),
(1007, 5, '2024-03-17', 'Completed'),
(1008, 6, '2024-03-20', 'Completed'),
(1009, 7, '2024-03-22', 'Completed'),
(1010, 8, '2024-04-02', 'Completed'),
(1011, 9, '2024-04-02', 'Completed'),
(1012, 10, '2024-04-10', 'Completed'),
(1013, 3, '2024-04-12', 'Completed'),
(1014, 5, '2024-04-18', 'Completed'),
(1015, 1, '2024-04-26', 'Completed');

--Order items
INSERT INTO orders_items VALUES
(1, 1001, 101, 1, 1200.00),
(2, 1001, 102, 2, 150.00),
(3, 1002, 105, 1, 800.00),
(4, 1003, 103, 1, 300.00),
(5, 1004, 104, 1, 500.00),
(6, 1005, 101, 1, 1200.00),
(7, 1006, 102, 3, 150.00),
(8, 1007, 105, 1, 800.00),
(9, 1008, 104, 2, 500.00),
(10, 1009, 103, 1, 300.00),
(11, 1010, 101, 1, 1200.00),
(12, 1011, 102, 2, 150.00),
(13, 1012, 105, 1, 800.00),
(14, 1013, 103, 2, 300.00),
(15, 1014, 104, 1, 500.00),
(16, 1015, 101, 1, 1200.00);

-- Payments
INSERT INTO payments VALUES
(5001, 1001, '2024-01-12', 'Credit Card', 1350.00),
(5002, 1002, '2024-01-19', 'UPI', 800.00),
(5003, 1003, '2024-02-15', 'Credit Card', 300.00),
(5004, 1004, '2024-02-25', 'Debit Card', 500.00),
(5005, 1005, '2024-03-10', 'Credit Card', 1200.00),
(5006, 1006, '2024-03-11', 'UPI', 150.00),
(5007, 1007, '2024-03-17', 'Credit Card', 800.00),
(5008, 1008, '2024-03-20', 'Debit Card', 500.00),
(5009, 1009, '2024-03-22', 'UPI', 300.00),
(5010, 1010, '2024-04-02', 'Credit Card', 1200.00),
(5011, 1011, '2024-04-02', 'UPI', 150.00),
(5012, 1012, '2024-04-10', 'Debit Card', 800.00),
(5013, 1013, '2024-04-12', 'Debit Card', 300.00),
(5014, 1014, '2024-04-18', 'UPI', 500.00),
(5015, 1015, '2024-04-26', 'Credit Card', 1200.00);
