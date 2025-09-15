--🛒 1. Top 10 Product Categories by Total Sales
SELECT product_category_name, SUM(price) AS total_sales
FROM order_items
JOIN products USING(product_id)
GROUP BY product_category_name
ORDER BY total_sales DESC
LIMIT 10;



--📦 2. Average Delivery Time by State
SELECT customer_state, AVG(order_delivered_customer_date - order_purchase_timestamp) AS avg_delivery_days
FROM orders
JOIN customers USING(customer_id)
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY customer_state
ORDER BY avg_delivery_days DESC;



--💳 3. Payment Type Distribution
SELECT payment_type, COUNT(*) AS payment_count
FROM payments
GROUP BY payment_type
ORDER BY payment_count DESC;



--🛍️ 4. Top 10 Sellers by Revenue
SELECT seller_id, SUM(price) AS total_revenue
FROM order_items
GROUP BY seller_id
ORDER BY total_revenue DESC
LIMIT 10;



--📈 5. Monthly Order Volume Trend
SELECT DATE_TRUNC('month', order_purchase_timestamp) AS month, COUNT(*) AS order_count
FROM orders
GROUP BY month
ORDER BY month;



--⭐ 6. Average Review Score by Product Category
SELECT product_category_name, ROUND(AVG(review_score), 2) AS avg_score
FROM reviews
JOIN order_items USING(order_id)
JOIN products USING(product_id)
GROUP BY product_category_name
ORDER BY avg_score DESC;



--🚚 7. Orders with Longest Delivery Delays
SELECT order_id, order_estimated_delivery_date, order_delivered_customer_date,
       (order_delivered_customer_date - order_estimated_delivery_date) AS delay_days
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date
ORDER BY delay_days DESC
LIMIT 10;



--🧾 8. Total Freight Cost by Seller
SELECT seller_id, ROUND(SUM(freight_value), 2) AS total_freight
FROM order_items
GROUP BY seller_id
ORDER BY total_freight DESC;



--🧍 9. Repeat Customers Count
SELECT customer_unique_id, COUNT(DISTINCT order_id) AS order_count
FROM customers
JOIN orders USING(customer_id)
GROUP BY customer_unique_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY order_count DESC;



--🕒 10. Approval Time Analysis
SELECT ROUND(AVG(EXTRACT(EPOCH FROM (order_approved_at - order_purchase_timestamp)) / 3600), 2) AS avg_approval_hours
FROM orders
WHERE order_approved_at IS NOT NULL;



--🛍️ 11. Most Sold Products
SELECT product_id, COUNT(*) AS item_count
FROM order_items
GROUP BY product_id
ORDER BY item_count DESC
LIMIT 10;



--🗺️ 12. Customer Distribution by City
SELECT customer_city, COUNT(*) AS customer_count
FROM customers
GROUP BY customer_city
ORDER BY customer_count DESC
LIMIT 10;



--📦 13. Average Items per Order
SELECT ROUND(AVG(item_count), 2) AS avg_items_per_order
FROM (
    SELECT order_id, COUNT(*) AS item_count
    FROM order_items
    GROUP BY order_id
) AS sub;



--💰 14. Total Revenue by State
SELECT customer_state, ROUND(SUM(price), 2) AS total_revenue
FROM order_items
JOIN orders USING(order_id)
JOIN customers USING(customer_id)
GROUP BY customer_state
ORDER BY total_revenue DESC;



--🧾 15. Orders with Multiple Payment Installments
SELECT order_id, payment_installments, payment_value
FROM payments
WHERE payment_installments > 1
ORDER BY payment_installments DESC
LIMIT 10;



--MORE ADVANCED QUERIES
-- 1. Top 10 product categories by total sales
SELECT product_category_name, SUM(price) AS total_sales
FROM order_items
JOIN products USING(product_id)
GROUP BY product_category_name
ORDER BY total_sales DESC
LIMIT 10;

-- 2. Average delivery time by customer state
SELECT customer_state, AVG(order_delivered_customer_date - order_purchase_timestamp) AS avg_delivery_days
FROM orders
JOIN customers USING(customer_id)
WHERE order_delivered_customer_date IS NOT NULL
GROUP BY customer_state
ORDER BY avg_delivery_days DESC;

-- 3. Payment type distribution
SELECT payment_type, COUNT(*) AS payment_count
FROM payments
GROUP BY payment_type
ORDER BY payment_count DESC;

-- 4. Top 10 sellers by total revenue
SELECT seller_id, SUM(price) AS total_revenue
FROM order_items
GROUP BY seller_id
ORDER BY total_revenue DESC
LIMIT 10;

-- 5. Monthly order volume trend
SELECT DATE_TRUNC('month', order_purchase_timestamp) AS month, COUNT(*) AS order_count
FROM orders
GROUP BY month
ORDER BY month;

-- 6. Average review score by product category
SELECT product_category_name, ROUND(AVG(review_score), 2) AS avg_score
FROM reviews
JOIN order_items USING(order_id)
JOIN products USING(product_id)
GROUP BY product_category_name
ORDER BY avg_score DESC;

-- 7. Orders with longest delivery delays
SELECT order_id, order_estimated_delivery_date, order_delivered_customer_date,
       (order_delivered_customer_date - order_estimated_delivery_date) AS delay_days
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date
ORDER BY delay_days DESC
LIMIT 10;

-- 8. Total freight cost by seller
SELECT seller_id, ROUND(SUM(freight_value), 2) AS total_freight
FROM order_items
GROUP BY seller_id
ORDER BY total_freight DESC;

-- 9. Repeat customers (more than one order)
SELECT customer_unique_id, COUNT(DISTINCT order_id) AS order_count
FROM customers
JOIN orders USING(customer_id)
GROUP BY customer_unique_id
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY order_count DESC;

-- 10. Average approval time in hours
SELECT ROUND(AVG(EXTRACT(EPOCH FROM (order_approved_at - order_purchase_timestamp)) / 3600), 2) AS avg_approval_hours
FROM orders
WHERE order_approved_at IS NOT NULL;

-- 11. Most sold products by item count
SELECT product_id, COUNT(*) AS item_count
FROM order_items
GROUP BY product_id
ORDER BY item_count DESC
LIMIT 10;

-- 12. Customer distribution by city
SELECT customer_city, COUNT(*) AS customer_count
FROM customers
GROUP BY customer_city
ORDER BY customer_count DESC
LIMIT 10;

-- 13. Average items per order
SELECT ROUND(AVG(item_count), 2) AS avg_items_per_order
FROM (
    SELECT order_id, COUNT(*) AS item_count
    FROM order_items
    GROUP BY order_id
) AS sub;

-- 14. Total revenue by customer state
SELECT customer_state, ROUND(SUM(price), 2) AS total_revenue
FROM order_items
JOIN orders USING(order_id)
JOIN customers USING(customer_id)
GROUP BY customer_state
ORDER BY total_revenue DESC;

-- 15. Orders with multiple payment installments
SELECT order_id, payment_installments, payment_value
FROM payments
WHERE payment_installments > 1
ORDER BY payment_installments DESC
LIMIT 10;

-- 16. Sellers with highest average review score
SELECT seller_id, ROUND(AVG(review_score), 2) AS avg_review
FROM reviews
JOIN order_items USING(order_id)
GROUP BY seller_id
ORDER BY avg_review DESC
LIMIT 10;

-- 17. Product categories with highest return rate (canceled orders)
SELECT product_category_name, COUNT(*) AS return_count
FROM orders
JOIN order_items USING(order_id)
JOIN products USING(product_id)
WHERE order_status = 'canceled'
GROUP BY product_category_name
ORDER BY return_count DESC
LIMIT 10;

-- 18. Total revenue by payment type
SELECT payment_type, ROUND(SUM(payment_value), 2) AS total_revenue
FROM payments
GROUP BY payment_type
ORDER BY total_revenue DESC;





-- 19. Top 10 cities by order volume
SELECT customer_city, COUNT(*) AS order_count
FROM orders
JOIN customers USING(customer_id)
GROUP BY customer_city
ORDER BY order_count DESC
LIMIT 10;

-- 20. Sellers with most unique products
SELECT seller_id, COUNT(DISTINCT product_id) AS unique_products
FROM order_items
GROUP BY seller_id
ORDER BY unique_products DESC
LIMIT 10;

-- 21. Average order value by state
SELECT customer_state, ROUND(AVG(payment_value), 2) AS avg_order_value
FROM payments
JOIN orders USING(order_id)
JOIN customers USING(customer_id)
GROUP BY customer_state
ORDER BY avg_order_value DESC;

-- 22. Distribution of review scores
SELECT review_score, COUNT(*) AS count
FROM reviews
GROUP BY review_score
ORDER BY review_score;

-- 23. Orders with items from multiple sellers
SELECT order_id, COUNT(DISTINCT seller_id) AS seller_count
FROM order_items
GROUP BY order_id
HAVING COUNT(DISTINCT seller_id) > 1
ORDER BY seller_count DESC
LIMIT 10;

-- 24. Most frequent shipping deadlines
SELECT shipping_limit_date::date, COUNT(*) AS item_count
FROM order_items
GROUP BY shipping_limit_date::date
ORDER BY item_count DESC
LIMIT 10;

-- 25. Customers who ordered the most product categories
SELECT customer_id, COUNT(DISTINCT product_category_name) AS category_count
FROM orders
JOIN order_items USING(order_id)
JOIN products USING(product_id)
GROUP BY customer_id
ORDER BY category_count DESC
LIMIT 10;

-- 26. Total freight cost by product category
SELECT product_category_name, ROUND(SUM(freight_value), 2) AS total_freight
FROM order_items
JOIN products USING(product_id)
GROUP BY product_category_name
ORDER BY total_freight DESC;



-- 27. Orders with highest total item value
SELECT order_id, ROUND(SUM(price + freight_value), 2) AS total_value
FROM order_items
GROUP BY order_id
ORDER BY total_value DESC
LIMIT 10;
