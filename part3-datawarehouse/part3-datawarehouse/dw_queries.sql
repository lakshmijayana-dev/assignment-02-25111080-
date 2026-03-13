-- Q1
SELECT * FROM fact_sales;

-- Q2
SELECT customer_id, SUM(amount) AS total_sales
FROM fact_sales
GROUP BY customer_id;
