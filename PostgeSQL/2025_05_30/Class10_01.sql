INSERT INTO customer_details
(c_id,first_name,email,phone)
VALUES
(1,'Sravani','sravani005@gmail.com','+917898756578');

INSERT INTO customer_details
(c_id,first_name,email,phone)
VALUES
(2,'Rutu','rutu01@gmail.com','8937898910'),
(3,'Riya','riya3@gmail.com','7388927987'),
(4,'Alex','alex56@gmail.com','2778936343'),
(5,'Kay','ay67898@gmail.com','6724787283');

SELECT * FROM customer_details;

ALTER TABLE products
ALTER COLUMN price TYPE NUMERIC(10,2);

INSERT INTO products
(p_id,name,price,quantity)
VALUES
(101,'Bag',200.00,78),
(102,'Bottle',100.00,200),
(103,'Jeans',2500.00,150),
(104,'Mobile',30000.00,20);

SELECT * FROM products;

INSERT INTO orders
(order_id,c_id,p_id,order_date,status)
VALUES
(1000,2,103,'2025-05-20','Delivered'),
(1001,1,103,'2025-05-20','Delivered'),
(1002,5,101,'2025-04-30','Not delivered'),
(1003,2,104,'2025-05-13','Delivered'),
(1004,3,102,'2025-05-21','Delivered');

INSERT INTO orders
VALUES 
(1005,4,104,'2025-06-02'),
(1006,1,101,'2025-05-29');

SELECT * FROM orders;

UPDATE products
SET quantity = 100
WHERE p_id = 102
RETURNING *;

UPDATE products
SET price = 2700
WHERE p_id = 103;
