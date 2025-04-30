-- DROP TABLE employees;
-- DROP TABLE departments;

-- CREATE TABLE departments(
-- department_id INT PRIMARY KEY,
-- department_name VARCHAR(50)
-- );

-- CREATE TABLE employees(
-- id INT PRIMARY KEY,
-- name VARCHAR(50),
-- department_id INT REFERENCES departments(department_id),
-- salary NUMERIC(10,2)
-- );

-- INSERT INTO departments
-- (department_id,department_name)
-- VALUES
-- (1,'HR'),
-- (2,'IT'),
-- (3,'Sales'),
-- (4,'Marketing');

-- INSERT INTO employees
-- (id,name, department_id,salary)
-- VALUES
-- (1,'Alice',1,50000),
-- (2,'Bob',2,60000),
-- (3,'Charlie',1,70000),
-- (4,'Diana',3,40000),
-- (5,'Ethan',NULL,45000);

SELECT * FROM employees;
SELECT * FROM departments;

-- INNER JOIN
SELECT
name AS employee_name,
d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- LEFT JOIN
SELECT
name AS employee_name,
d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- RIGHT JOIN
SELECT
name AS employee_name,
d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


-- FULL OUTER JOIN
SELECT
name AS employee_name,
d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

-- CROSS JOIN
SELECT
name AS employee_name,dxesw3
d.department_name
FROM employees e
CROSS JOIN departments d;

-- SELF JOIN
SELECT
e1.name as employee,
e2.name as colleague
FROM employees e1
INNER JOIN employees e2
ON e1.salary > e2.salary;