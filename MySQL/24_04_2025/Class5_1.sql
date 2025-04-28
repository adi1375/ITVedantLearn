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

select * from departments;
select * from employees; 

INSERT INTO departments 
(department_id, department_name)
VALUES
(151,'Operations'),
(152,'Recruitment'),
(153,'Development'),
(154,'Finance');


INSERT INTO employees 
(id,name, department_id, salary, date_of_joining)
VALUES
(102,'Rajesh',151,10000,'2025-04-01'),
(103,'Suthan',152,20000,'2025-03-01'),
(104,'Sandeep',153,30000,'2025-02-01'),
(105,'Prajwal',154,30000,'2025-01-01');-- 

SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;