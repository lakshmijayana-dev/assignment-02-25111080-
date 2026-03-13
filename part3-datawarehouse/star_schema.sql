-- Star Schema Example

CREATE TABLE dim_customer (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  city VARCHAR(50)
);

CREATE TABLE dim_product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100)
);

CREATE TABLE fact_sales (
  sale_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  amount DECIMAL
);
