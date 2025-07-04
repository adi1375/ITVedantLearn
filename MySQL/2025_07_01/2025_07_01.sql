USE db_aditya;

-- 6
SELECT *
FROM customers
WHERE city LIKE 'M%';

-- 7
SELECT *
FROM customers
WHERE city LIKE '%A%';

-- 8
SELECT *
FROM customers
WHERE city LIKE '%D';

-- 9
SELECT *
FROM customers
WHERE city LIKE 'P%E';

-- 10
SELECT *
FROM customers
WHERE city NOT LIKE 'M%';

-- 11
SELECT *
FROM customers
ORDER BY city ASC
LIMIT 3;

-- 12
SELECT *
FROM customers
LIMIT 3 OFFSET 2;

INSERT INTO products
(productid,productname,supplierid,categoryid,unit,price)
VALUES
(1,'Laptop',101,1,'each',1200.00),
(2,'Mouse',102,1,'each',25.00),
(3,'Keyboard',101,1,'each',75.00),
(4,'Monitor',103,1,'each',300.00),
(5,'External Hard Drive',102,2,'each',100.00);

SELECT * FROM products;
