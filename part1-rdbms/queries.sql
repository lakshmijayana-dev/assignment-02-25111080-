-- Q1: Total order value for customers in Mumbai
SELECT c.name, SUM(p.price * o.quantity) AS total_order_value
FROM CUSTOMERS C
JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN PRODUCTS P ON O.PRODUCT_ID = P.PRODUCT_ID
WHERE C.CITY = 'mumbai'
GROUP BY C.NAME;

-- Q2: Top 3 best-selling products by quantity
SELECT p.product_name, SUM(o.quantity) AS total_quantity
FROM PRODUCTS P
JOIN ORDERS O ON P.PRODUCT_ID = O.PRODUCT_ID
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q3: Unique products purchased by each customer
SELECT customer_id, COUNT(DISTINCT product_id) AS unique_products
FROM ORDERS
GROUP BY customer_id;

-- Q4: Orders with total value exceeding 10000
SELECT o.order_id, (p.price * o.quantity) AS total_value
FROM ORDERS O
JOIN PRODUCTS P ON O.PRODUCT_ID = P.PRODUCT_ID
WHERE (p.price * o.quantity) > 10000
ORDER BY total_value DESC;

-- Q5: Products that have never been ordered
SELECT p.product_name
FROM PRODUCTS P
LEFT JOIN ORDERS O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE o.product_id IS NULL;