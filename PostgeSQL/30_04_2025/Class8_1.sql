-- SINLGE ROW SUBQUERY
SELECT 
name,
salary
FROM employees
WHERE salary >(SELECT AVG(salary) FROM employees);

-- MULTI ROW SUBQUERY
SELECT
name
FROM employees
WHERE department_id IN(SELECT department_id FROM departments WHERE department_id IN (1,2));

-- ALTERNATE
SELECT
name
FROM employees
WHERE department_id IN(1,2);

-- MULTI COLLUMN SUBQUERY
SELECT 
name
FROM employees
WHERE (department_id, salary) IN (SELECT department_id, salary FROM employees WHERE name = 'Alice');

-- ALTERNATE
SELECT 
name
FROM employees
WHERE name = 'Alice';


-- CORELATED SUBQUERY
SELECT
name,
salary
FROM employees e1
WHERE salary>(SELECT AVG(salary) FROM employees e2 WHERE e1.department_id = e2.department_id);


-- NON CORELATED SUBQUERY
SELECT
name,
(SELECT COUNT(*) FROM departments) AS total_departments
FROM employees;

-- FROM CLAUSE SUBQUERY
SELECT
department_name,
avg_salary
FROM(
SELECT
department_name,
ROUND(AVG(salary),2) AS avg_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name) AS department_avg
WHERE avg_salary > 50000;

-- ALTERNATE
SELECT
department_name,
ROUND(AVG(salary),2) AS avg_salary
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name
HAVING AVG(salary) > 50000;

-- SUBQUERY EXISTS
SELECT name
FROM employees e
WHERE NOT EXISTS(
SELECT 1
FROM departments d
WHERE e.department_id = d.department_id);

-- ALTERNATE
SELECT 
name 
FROM employees
WHERE department_id IS NOT NULL;