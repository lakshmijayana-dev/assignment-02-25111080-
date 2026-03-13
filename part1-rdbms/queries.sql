-- Q1
SELECT * FROM customers;

-- Q2
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;
