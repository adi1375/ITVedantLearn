-- select payment_date from payment;

SELECT *
FROM employees e1
WHERE salary > (SELECT AVG(salary) FROM employees e2
WHERE e1.department_id = e2.department_id);

SELECT 
ROUND(AVG(salary),2),
position_title
FROM employees
GROUP BY position_title;

SELECT 
ROUND(AVG(salary),2)
FROM employees
GROUP BY department_id;

SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT * FROM employees 
WHERE start_date > '2016-01-01';

SELECT
department,
count(e.first_name),
EXTRACT (year from start_date) as year_of_hiring
FROM departments d 
INNER JOIN employees e ON e.department_id = d.department_id 
GROUP BY department, year_of_hiring
ORDER BY year_of_hiring;

SELECT 
d.department,
ROUND(AVG(e.salary),2) as avg_salary 
FROM departments d 
INNER JOIN employees e ON e.department_id = d.department_id 
GROUP BY d.department;
