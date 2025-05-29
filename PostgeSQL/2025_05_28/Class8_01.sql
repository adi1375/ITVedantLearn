-- Practicing DDL commands

/* Design tables name customer, product,
orders */

CREATE TABLE customer_details(
c_id SERIAL PRIMARY KEY,
c_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
phone VARCHAR(13)
);

CREATE TABLE products(
p_id SERIAL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
price NUMERIC(6,2) NOT NULL CHECK (price>0),
quantity INT DEFAULT 0
);

CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
c_id INT REFERENCES customer_details(c_id),
p_id INT REFERENCES products(p_id),
order_date DATE NOT NULL,
status VARCHAR(30) DEFAULT 'Pending'
);

CREATE TABLE employee(
emp_id INT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
department VARCHAR(100),
doj DATE CHECK (EXTRACT (year FROM doj) > 2005),
);

-- INSERT INTO employee(emp_id,first_name,last_name,department,doj)
-- VALUES
-- (100, 'Rahul', 'Kamra','Gamer','2006-07-02');
-- SELECT * FROM employee;
-- TRUNCATE TABLE employee;