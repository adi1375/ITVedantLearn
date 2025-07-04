CREATE DATABASE order_db;
USE order_db;

CREATE TABLE sales(
sale_id INT NOT NULL,
sale_date DATE NOT NULL,
customer_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
total_price FLOAT NOT NULL,
PRIMARY KEY (sale_id));

CREATE TABLE customer(
customer_id INT NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_nanme VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
phone VARCHAR(20),
PRIMARY KEY (customer_id));

CREATE TABLE inventory(
product_id INT NOT NULL,
product_name VARCHAR(50) NOT NULL,
description TEXT,
price float NOT NULL,
PRIMARY KEY (product_id));