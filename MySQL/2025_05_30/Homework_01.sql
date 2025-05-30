use hr;
show tables;

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