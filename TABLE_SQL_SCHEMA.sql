-- 1. Geolocation
CREATE TABLE geolocation (
    zip_code VARCHAR PRIMARY KEY,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    geolocation_city VARCHAR(40),
    geolocation_state VARCHAR(2)
);

-- 2. Customers
CREATE TABLE customers (
    customer_id VARCHAR(40) PRIMARY KEY,
    customer_unique_id VARCHAR(40),
    customer_zip_code_prefix VARCHAR(10),
    customer_city VARCHAR(40),
    customer_state VARCHAR(40),
    FOREIGN KEY (customer_zip_code_prefix) REFERENCES geolocation(zip_code)
);

-- 3. Sellers
CREATE TABLE sellers (
    seller_id VARCHAR(40) PRIMARY KEY,
    seller_zip_code_prefix VARCHAR(10),
    seller_city VARCHAR(40),
    seller_state VARCHAR(2),
    FOREIGN KEY (seller_zip_code_prefix) REFERENCES geolocation(zip_code)
);

-- 4. Orders
CREATE TABLE orders (
    order_id VARCHAR(40) PRIMARY KEY,
    customer_id VARCHAR(40),
    order_status VARCHAR(40),
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP,
    approval_time_hours DECIMAL(10,2),
    carrier_delivery_time_hours DECIMAL(10,2),
    customer_delivery_time_hours DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 5. Payments
CREATE TABLE payments (
    order_id VARCHAR(40),
    payment_sequential INTEGER,
    payment_type VARCHAR(20),
    payment_installments INTEGER,
    payment_value DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- 6. Reviews
CREATE TABLE reviews (
    review_id VARCHAR(40) PRIMARY KEY,
    order_id VARCHAR(40),
    review_score INTEGER,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- 7=. Products
CREATE TABLE products (
    product_id VARCHAR(40) PRIMARY KEY,
    product_category_name VARCHAR(40),
    product_name_lenght INTEGER,
    product_description_lenght INTEGER,
    product_photos_qty INTEGER,
    product_weight_g DECIMAL(10,2),
    product_length_cm DECIMAL(10,2),
    product_height_cm DECIMAL(10,2),
    product_width_cm DECIMAL(10,2)
);
-- 8. Order Items
CREATE TABLE order_items (
    order_id VARCHAR(40),
    order_item_id INTEGER,
    product_id VARCHAR(40),
    seller_id VARCHAR(40),
    shipping_limit_date TIMESTAMP,
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2),
    total_item_value DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);

--THE BELLOW QUERIES APPLIES WHEN SOME PROBLEM ARISES WHILE LOADING TO SQL..
--FOR REFERENCE VIEW THE LOADING_TO_SQL python notebook file...>
DELETE FROM geolocation;
SELECT COUNT(*) FROM customers;
DELETE FROM customers;
ALTER TABLE products
ALTER COLUMN product_category_name TYPE VARCHAR(100);
