-- DROP TABLE employees;
-- TRUNCATE TABLE employees;
-- DROP TABLE departments;
-- TRUNCATE TABLE departments;
-- SELECT * FROM employees;

-- create table departments
-- CREATE TABLE departments(
-- department_id SERIAL primary key,
-- department_name VARCHAR(100) NOT NULL unique
-- );

-- Create table employees
-- CREATE TABLE employees (
-- id SERIAL PRIMARY KEY,
-- name VARCHAR(100) NOT NULL,
-- department_id INT NULL,
-- salary DECIMAL(10,2) NOT NULL,
-- date_of_joining DATE,
-- FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL
-- );

-- Inset a value into employees
-- INSERT INTO employees 
-- (id,name, department_id, salary, date_of_joining)
-- VALUES
-- (101,'Satish',150,10000,'2025-05-02');

-- Insert a value into depatments
-- INSERT INTO departments 
-- (department_id, department_name)
-- VALUES
-- (150,'Marketing');

-- SELECT * FROM employees;

-- SELECT * FROM departments;

-- Insert more values into department
-- INSERT INTO departments 
-- (department_id, department_name)
-- VALUES
-- (151,'Operations'),
-- (152,'Recruitment'),
-- (153,'Development'),
-- (154,'Finance');

--  Insert more values int employees
-- INSERT INTO employees 
-- (id,name, department_id, salary, date_of_joining)
-- VALUES
-- (102,'Rajesh',151,10000,'2025-04-01'),
-- (103,'Suthan',152,20000,'2025-03-01'),
-- (104,'Sandeep',153,30000,'2025-02-01'),
-- (105,'Prajwal',154,30000,'2025-01-01');


-- Retrieve all values from the table
SELECT * FROM employees;

-- Retrieve specific cols
SELECT
name,
salary
FROM employees;

-- Use where to filter data
SELECT
*
FROM employees
WHERE salary > 50000;

-- Sort using order by in desc
SELECT
*
FROM employees
ORDER BY salary DESC;

-- Group the data
SELECT
department_id,
COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

-- Filter group data using having
-- INSERT INTO employees
-- (id,name,department_id,salary,date_of_joining)
-- VALUES
-- (106,'Tony',150,20000,'2025-05-01'),
-- (107,'Vipul',150,25000,'2025-05-01');

-- UPDATE employees
-- SET bonus = 5000;
SELECT
department_id,
COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Top 3 employees by highest salary
SELECT 
*
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Combination of AND & OR
SELECT
*
FROM employees
WHERE department_id = 150 AND salary > 30000;

-- Aggregate functions -> COUNT, SUM, AVG, MIN, MAX
SELECT
COUNT(*) AS number_of_employees,
COUNT(DISTINCT department_id) AS number_of_departments,
SUM(salary) AS total_salary,
ROUND(AVG(salary),2) AS avergae_salay,
MIN(salary) AS min_salary,
MAX(salary) AS max_salary,
STDDEV(salary) AS standard_deviation_salary,
VARIANCE(salary) AS variance_salary
FROM employees;

-- String functions
SELECT 
CONCAT('Hello',' ','World'),
LENGTH('Hello'),
CHAR_LENGTH('Hello'),
UPPER('Hello'),
LOWER('Hello'),
TRIM(' Hello '),
LTRIM(' Hello '),
RTRIM(' Hello '),
SUBSTRING('Hello World',7,5),
REPLACE('Hello World', 'World', 'Universe');

-- Date and time functions 
SELECT 
CURRENT_DATE,
CURRENT_TIME,
NOW(),
DATE('2025-04-28 15:27:56'),
EXTRACT(YEAR FROM DATE '2025-04-28') AS "year",
EXTRACT(MONTH FROM DATE '2025-04-28') AS "month",
EXTRACT(DAY FROM DATE '2025-04-28') AS "day",
EXTRACT(DOW FROM DATE '2025-04-28') AS day_of_week,s
EXTRACT(ISODOW FROM DATE '2025-04-28') AS iso_day_of_week,
EXTRACT(WEEK FROM DATE '2025-04-28') AS "week",
DATE '2025-04-28' + INTERVAL '5 days' AS "5_days_ahead",
DATE '2025-04-28' - INTERVAL '5 days'AS "5_days_before";

-- Mathematical FUNCTIONS
SELECT 
ABS(-10),
CEIL(4.2),
FLOOR(4.2),
ROUND(4.5678,2),
POWER(2,4),
SQRT(16),
RANDOM(),
MOD(10,3),
EXP(1),
LOG(2),
PI();