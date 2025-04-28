-- DROP TABLE employees;
-- TRUNCATE TABLE employees;
-- DROP TABLE departments;
-- TRUNCATE TABLE departments;
-- SELECT * FROM employees;

-- create table departments
CREATE TABLE departments(
department_id SERIAL primary key,
department_name VARCHAR(100) NOT NULL unique
);

-- Create table employees
CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department_id INT NULL,
salary DECIMAL(10,2) NOT NULL,
date_of_joining DATE,
FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL
);

-- Inset a value into employees
INSERT INTO employees 
(id,name, department_id, salary, date_of_joining)
VALUES
(101,'Satish',150,10000,'2025-05-02');

-- Insert a value into depatments
INSERT INTO departments 
(department_id, department_name)
VALUES
(150,'Marketing');

SELECT * FROM employees;

SELECT * FROM departments;

-- Insert more values into department
INSERT INTO departments 
(department_id, department_name)
VALUES
(151,'Operations'),
(152,'Recruitment'),
(153,'Development'),
(154,'Finance');

--  Insert more values int employees
INSERT INTO employees 
(id,name, department_id, salary, date_of_joining)
VALUES
(102,'Rajesh',151,10000,'2025-04-01'),
(103,'Suthan',152,20000,'2025-03-01'),
(104,'Sandeep',153,30000,'2025-02-01'),
(105,'Prajwal',154,30000,'2025-01-01');


SELECT * FROM employees
ORDER BY id;

SELECT * FROM departments
ORDER BY department_id;

-- update salary at id 101
UPDATE employees
SET salary = 55000
WHERE id = 101;

-- Update department name
update departments
set department_name='doctor'
where department_id=151;

-- Update employee salary
UPDATE employees
SET salary = salary+5000
WHERE salary <= 30000;

-- Add bonus column
ALTER TABLE employees
ADD COLUMN bonus NUMERIC(8,2) DEFAULT 0;

-- Update all bonus to 5000
UPDATE employees
SET bonus = 5000
RETURNING *;

SELECT * FROM employees
ORDER BY id;

-- Create employees_backup from previous employees table
CREATE TABLE employees_backup
AS
SELECT 
*
FROM employees;

SELECT * FROM employees_backup
ORDER BY id;

-- Update salary at id 2 using a subquery
UPDATE employees
SET salary = (SELECT MAX(salary) FROM employees_backup)
WHERE id = 102;

UPDATE employees
set salary=
CASE
when department_id=150 then salary*1.10
when department_id=151 then salary*1.15
when department_id=152 then salary*1.20
when department_id=153 then 35000
else salary
end;

-- Delete a row
DELETE FROM employees_backup
WHERE id = 101;

-- Delete multiple rows
DELETE FROM employees_backup
WHERE salary < 30000;

-- Delete from employees
TRUNCATE TABLE employees_backup;