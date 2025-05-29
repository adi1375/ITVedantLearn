-- DROP TABLE departments;
-- DROP TABLE employees;
-- TRUNCATE TABLE departments;
-- TRUNCATE TABLE employees;

--Create departmenst table
-- CREATE TABLE departments(
-- d_id SERIAL PRIMARY KEY,
-- department_name VARCHAR(100) NOT NULL UNIQUE
-- );

--Create employees tables
-- CREATE TABLE employees(
-- e_id SERIAL PRIMARY KEY,
-- full_name VARCHAR(50) NOT NULL,
-- d_id INT NULL REFERENCES departments(d_id),
-- salary NUMERIC(10,2) NOT NULL,
-- date_of_joining DATE
-- );

--Insert department data
-- INSERT INTO departments
-- (d_id,department_name)
-- VALUES
-- (101,'HR'),
-- (102,'Marketing'),
-- (103,'Development'),
-- (104,'IT'),
-- (105,'Sales'),
-- (106,'Recruitment');

SELECT * FROM departments;

--Insert employee data
-- INSERT INTO employees
-- (full_name,d_id,salary,date_of_joining)
-- VALUES
-- ('John Simmons',101,1000000,'2020-01-01'),
-- ('Matt Mercer',102,50000,'2023-05-10'),
-- ('Elena Merick',102,50000, '2020-01-10'),
-- ('John Doe',104,30000,'2020-02-15'),
-- ('Jane Doe',104,30000,'2020-02-15'),
-- ('Alex Jones',106,10000,'2020-01-01'),
-- ('James Miller',103,35000, '2020-01-05'),
-- ('Atulya Srivastava',105,20000,'2020-06-15'),
-- ('Nidhi Kulkarni',105,20000,'2023-04-20'),
-- ('Parshuram Sail',104,30000,'2022-07-01');

SELECT * FROM employees;
