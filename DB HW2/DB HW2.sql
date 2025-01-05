CREATE DATABASE sales_database;

USE sales_database;

CREATE TABLE sales (id INT AUTO_INCREMENT PRIMARY KEY, product VARCHAR(50),
price DECIMAL(10, 2), quantity INT);

INSERT INTO sales (product, price, quantity)
VALUES
('Laptop', 1000, 5),
('Phone', 700, 3),
('Tablet', 500, 2),
('Printer', 300, 4);

SELECT * FROM sales;

SELECT * FROM sales
LIMIT 2;

SELECT SUM(price * quantity) AS total_price
FROM sales;


SELECT product, quantity,  
AVG(price) AS average_price
FROM sales
GROUP BY product, quantity;