USE employee_db;

CREATE TABLE departments(
department_id INT auto_increment primary key,
department_name VARCHAR(100) NOT NULL unique
);


CREATE TABLE employees (
id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department_id INT NULL,
salary DECIMAL(10,2) NOT NULL,
date_of_joining DATE,
FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE SET NULL
);

INSERT INTO employees 
(id, name, department_id, salary, date_of_joining)
VALUES
(101,'Satish',150,10000,'2025-05-02');

INSERT INTO departments 
(department_id, department_name)
VALUES
(150,'Marketing');

select * from departments;-- 
select * from employees;