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


