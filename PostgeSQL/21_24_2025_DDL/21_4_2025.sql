CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department_id INT,
salary NUMERIC(10,2) NOT NULL,
date_of_joining DATE,
UNIQUE(name)
);

SELECT * FROM employees;

ALTER TABLE employees
RENAME TO staff;

SELECT * FROM staff;

ALTER TABLE staff
ADD COLUMN bonus NUMERIC(10,2) DEFAULT 0;

SELECT * FROM staff;

ALTER TABLE staff
RENAME COLUMN bonus TO performance_bonus;

ALTER TABLE staff
ALTER COLUMN performance_bonus TYPE NUMERIC(8,2);

ALTER TABLE staff
ALTER COLUMN salary TYPE NUMERIC(12,2);

ALTER TABLE staff
DROP COLUMN date_of_joining;

SELECT * FROM staff;

TRUNCATE TABLE staff;

DROP TABLE staff;

SELECT * FROM staff;


