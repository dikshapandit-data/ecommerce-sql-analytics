-- Customers table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  email VARCHAR(100),
  signup_date DATE,
  city VARCHAR(50)
);

-- Products table
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price DECIMAL(10,2)
);

-- Orders table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  order_status VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order items table
CREATE TABLE orders_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  item_price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Payments table
CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  order_id INT,
  payment_date DATE,
  payment_method VARCHAR(50),
  payment_amount DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
