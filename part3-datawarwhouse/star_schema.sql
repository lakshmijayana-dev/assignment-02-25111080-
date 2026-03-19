create dimension tables


CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month VARCHAR(20),
    year INT
);

CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT NOT NULL,
    store_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    amount DECIMAL(10, 2),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

create fact table

CREATE TABLE fact_sales (
  sale_id INT PRIMARY KEY,
  date_id INT,
  store_id INT,
  product_id INT,
  quantity INT,
  total_amount DECIMAL(10,2),

  FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
  FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
  FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

insert sample data minimum 10 rows


INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'Mobile','Electronics'),
(3,'Shampoo','Grocery'),
(4,'speaker','electronics'),
(5,'tablet','electronics'),
(6,'saree','clothing'),
(7,'biscuits','groceries'),
(8,'pulses','groceries'),
(9,'T-shirt','clothing'),
(10,'jeans','clothing');

INSERT INTO dim_store VALUES
(1,'Store A','Mumbai'),
(2,'Store B','Delhi'),
(3,'store c','chennai'),
(4,'store d','bangalore'),
(5,'store e','pune'),
(7,'store f','delhi'),
(8,'store g','mumbai'),
(9,'store h','pune'),
(10,'store i','chennai');

INSERT INTO dim_date VALUES
(1,'2025-01-01','January',2025),
(2,'2025-02-01','February',2025),
(3,'2025-03-01','March',2025),
(4,'2025-04-01','April',2025),
(5,'2025-05-01','May',2025),
(6,'2025-06-01','June',2025),
(7,'2025-07-01','July',2025),
(8,'2025-08-01','August',2025),
(9,'2025-09-01','September',2025),
(10,'2025-10-01','October',2025);

INSERT INTO fact_sales VALUES
(1,1,1,1,2,100000),
(2,1,2,2,3,60000),
(3,2,1,3,5,5000),
(4,2,3,4,1,15000),
(5,3,2,5,4,80000),
(6,3,4,6,2,4000),
(7,4,1,7,10,2000),
(8,4,5,8,8,16000),
(9,5,3,9,6,12000),
(10,5,4,10,3,9000);

The given raw data contains issues such as inconsistent date formats, NULL values, and inconsistent category casing. Before inserting the data into the data warehouse, these issues must be cleaned and standardized.

All date values should be converted into a single consistent format (YYYY-MM-DD). NULL values should be handled by either replacing them with appropriate default values or removing incomplete records. Category names should be standardized by using consistent casing (either all lowercase or uppercase).

Thus, the INSERT statements should reflect clean, consistent, and standardized data to ensure accurate analysis and reporting.