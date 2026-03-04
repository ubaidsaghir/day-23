CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
customer_name VARCHAR(50),
product VARCHAR(50),
category VARCHAR(50),
quantity INT,
price INT,
order_date DATE
);

-- INSERT DATA

INSERT INTO orders (customer_name,product,category,quantity,price,order_date)
VALUES
('Ubaid','Laptop','Electronics',5,20000,'2026-03-01'),
('Ahmad','Shoes','Clothing',10,30000,'2026-03-02'),
('Ali','Mobile','Electronics',20,40000,'2026-03-03'),
('Raheel','Headphones','Electronics',45,50000,'2026-03-04'),
('Afzal','Rice Bag','Grocery',60,60000,'2026-03-05'),
('Ahsan','T-Shirt','Clothing',70,70000,'2026-03-06'),
('Awais','Smart Watch','Electronics',90,80000,'2026-03-07'),
('Huzaifa','Makeup Kit','Beauty',30,90000,'2026-03-08');


SELECT * FROM orders;

--Show orders where price > 50000

SELECT * FROM orders
WHERE price >50000;

-- Show only Electronics category orders

SELECT * FROM orders
WHERE category= 'Electronics';

-- Show orders where:

-- category = Electronics

-- AND price > 30000

SELECT * FROM orders
WHERE category='Electronics'
AND price >30000
ORDER BY price DESC;


-- Show orders where:

-- category = Electronics

-- OR quantity > 5


SELECT * FROM orders
WHERE category = 'Electronics'
OR quantity >5;

-- Sort orders:

-- First by price descending

-- Then by quantity ascending

SELECT * FROM orders
ORDER BY price DESC, quantity ASC;

-- Show:

-- customer_name

-- product

-- total_amount (quantity × price)
-- 👉 (Column calculate karna hoga SELECT mein)

SELECT customer_name,product, quantity * price 
AS total_amount FROM orders;


-- Show orders between two dates
SELECT * FROM orders
WHERE order_date BETWEEN '2026-03-02' AND '2026-03-05'; 

-- Show orders between two dates

-- Show orders where product name starts with letter 'S'

SELECT * FROM orders
WHERE product LIKE 'S%';