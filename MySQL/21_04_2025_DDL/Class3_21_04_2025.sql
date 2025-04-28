-- CREATE, USE, SHOW, DROP database COMMANDS 
CREATE DATABASE employee_db;

USE employee_db;

SHOW databases;

-- DROP DATABASE employee_db;

-- CREATE AND ALTER TABLE/COLUMN COMMANDS 
CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department_id INT NULL,
salary DECIMAL(10,2) NOT NULL,
date_of_joining DATE,
UNIQUE(name)
);

SELECT * FROM employees;

RENAME TABLE employees TO staff;

SELECT * FROM staff;

ALTER TABLE staff ADD bonus decimal(10,2) default 0;

select * FROM staff;

ALTER TABLE staff CHANGE bonus performance_bonus DECIMAL(8,2);

ALTER TABLE staff MODIFY salary DECIMAL(12,2);

ALTER TABLE staff DROP COLUMN date_of_joining;

SELECT * FROM staff;

TRUNCATE TABLE staff;

DROP TABLE staff;

DROP TABLE employees;

-- CONSTRAINTS 
CREATE TABLE departments(
department_id INT,
department_name VARCHAR(10)
);

ALTER TABLE departments
ADD primary key (department_id);

ALTER TABLE employees
ADD constraint fk_department
FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL;

ALTER TABLE departments ADD constraint unique_department_name unique(department_name);

ALTER table employees ADD constraint check_salary CHECK (salary>0);

ALTER TABLE employees DROP primary key;

ALTER TABLE employees DROP foreign key fk_department;

-- ALTER TABLE employees DROP INDEX unique_department_name;

-- ALTER TABLE employees DROP check_salary;

DROP TABLE departments;