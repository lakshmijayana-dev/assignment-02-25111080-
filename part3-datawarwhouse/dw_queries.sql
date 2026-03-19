c
SELECT d.month, p.category,
SUM(F.TOTAL_AMOUNT) AS total_sales
from fact_sales f
JOIN dim_date d on f.date_id = d.date_id
join dim_product p on f.product_id = p.product_id
GROUP BY d.month, p.category;

--Q2: Top 2 performing stores by total revenue
SELECT s.store_name,
SUM(f.total_amount) AS revenue 
FROM fact_sales f
JOIN dim_store s on f.store_id = s.store_id
GROUP BY s.store_name
ORDER BY revenue DESC
LIMIT 2;

--Q3: month-over-moth sales trend across all stores
SELECT d.month, sum(f.total_amount) AS total_sales
FROM fact_sales f
JOIN dim_date d on f.date_id = d.date_id
GROUP BY d.month
ORDER BY d.month;