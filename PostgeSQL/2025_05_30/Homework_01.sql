SELECT * FROM countries;
-- ROWS 25
SELECT * FROM departments;
-- ROWS 11
SELECT * FROM dependents;
-- ROWS 30
SELECT * FROM employees;
-- ROWS 40
SELECT * FROM jobs;
-- ROWS 19
SELECT * FROM locations;
-- ROWS 7
SELECT * FROM regions;
-- ROWS 4

SELECT
employee_id,
first_name,
last_name,
salary,
salary*12 AS annual_salary
FROM employees;

SELECT
employee_id,
salary,
(salary*12)*0.05 AS deduction
FROM employees;

SELECT
employee_id,
salary*12 AS annual_salary,
(salary*12)*0.05 AS deduction,
(salary*12)-(salary*12)*0.05 AS final_salary
FROM employees;

SELECT annual_salary-(annual_salary*0.05) AS final_salary
FROM (SELECT (salary*12) AS annual_salary FROM employees);