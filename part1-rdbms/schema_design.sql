CREATE TABLE customers(
    customer_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    signup_date DATE,
    email VARCHAR(100)
);

CREATE TABLE products(
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE orders(
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50),
    product_id VARCHAR(50),
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
('c1', 'akshaya', 'mumbai', '2026-03-17', 'akshaya@gamil.com'),
('c2', 'likitha', 'delhi', '2026-03-18', 'likitha@gmail.com'),
('c3', 'dedipiya', 'kerala', '2026-03-19', 'dedipiya@gmail.com'),
('c4', 'hanisha', 'chennai', '2026-03-20', 'hanisha@gmail.com'),
('c5', 'bahul', 'punjab', '2026-03-21', 'bahul@gmail.com');

INSERT INTO products VALUES
('p1', 'laptop', 'electronics', 5000),
('p2', 'mobile', 'electronics', 2000),
('p3', 'perfume', 'cosmetics', 500),
('p4', 'dolo', 'medicines', 300),
('p5', 'cream', 'cosmetics', 900);

INSERT INTO orders VALUES
('o1', 'c1', 'p1', 2, '2025-04-17'),
('o2', 'c2', 'p2', 3, '2025-03-18'),
('o3', 'c3', 'p3', 4, '2025-02-19'),
('o4', 'c4', 'p4', 6, '2025-04-20'),
('o5', 'c5', 'p5', 3, '2025-03-21');