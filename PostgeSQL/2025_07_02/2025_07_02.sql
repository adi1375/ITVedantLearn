SELECT * FROM products;

-- 13
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

-- 14
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5 OFFSET 5;

-- 14 alternate
SELECT
*,
RANK() OVER (ORDER BY price DESC) AS rank
FROM products;

-- 15
SELECT *
FROM products
WHERE price BETWEEN 100 AND 500;

-- 16
SELECT *
FROM products
WHERE price = 200
AND categoryid = 3;

-- 17
SELECT MIN(price) AS min_price
FROM products;

-- 18
SELECT MAX(price) AS max_price
FROM products;

-- 19
SELECT COUNT(*) AS no_of_products
FROM products
WHERE price = 18;

-- 20
SELECT ROUND(AVG(price),2) AS average_price
FROM products;

-- 21
SELECT SUM(price) AS total_price
FROM products;

SELECT * FROM customers;

-- 22
INSERT INTO customers
VALUES
(6,'TechMart','Sana Sheikh','ITPL Road','Bangalore',560066,'India');

-- 23
UPDATE customers
SET city = 'Kochi'
WHERE customerid = 6
RETURNING *;

-- 24
DELETE FROM customers
WHERE customerid = 6
RETURNING *;

-- 25
ALTER TABLE customers
ADD COLUMN mobile_no VARCHAR(15);

-- 26
ALTER TABLE customers
RENAME COLUMN contactname TO contactfullname;

-- 27
-- TRUNCATE TABLE customers;

CREATE TABLE students(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
marks INT);

INSERT INTO students
(student_id,student_name,marks)
VALUES
(1,'Alice',85),
(2,'Bob',65),
(3,'Charlie',45);

SELECT * FROM students;

SELECT *,
CASE
WHEN marks >= 75 THEN 'Distinction'
WHEN marks >= 50 THEN 'Pass'
ELSE 'Fail'
END AS grade
FROM students;
