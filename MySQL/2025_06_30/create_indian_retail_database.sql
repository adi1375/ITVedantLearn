CREATE DATABASE DB_ADITYA;
USE DB_ADITYA;

CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    CustomerName TEXT NOT NULL,
    ContactName TEXT NOT NULL,
    Address TEXT NOT NULL,
    City TEXT NOT NULL,
    PostalCode INT,
    Country TEXT NOT NULL
);

CREATE TABLE products (
    ProductID INT PRIMARY KEY,
    ProductName TEXT NOT NULL,
    SupplierID INT,
    CategoryID INT,
    Unit TEXT,
    Price DECIMAL(10,2)
);

SELECT *
FROM customers;

SELECT *
FROM products;

INSERT INTO customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1,'Ganes Enterprises', 'Ganes Iyer', 'MG Road', 'Mumbai', '400001', 'India'),
(2,'Kiran Stores', 'Kiran Patel', 'Laxmi Nager', 'Ahmedabad', '380001', 'India'),
(3,'Meenakshi Traders', 'Meena Rao', 'T Nagar', 'Chennai', '600017', 'India'),
(4,'Ravi Electronics', 'Ravi Verma', 'Hitech City', 'Hyderabad', '500081', 'India'),
(5,'Shree Books', 'Divya Joshi', 'Kothrud', 'Pune', NULL, 'India');

SELECT *
FROM customers;

SELECT *
FROM products;

-- 1
SELECT *
FROM customers
WHERE city = 'Mumbai' AND postalcode = '400001';

-- 2
SELECT *
FROM customers
WHERE city = 'Mumbai' OR city = 'Ahmedabad';

-- 2 alternate
SELECT *
FROM customers
WHERE city IN ('Mumbai', 'Ahmedabad');

-- 3
SELECT *
FROM customers
ORDER BY city DESC;

-- 4
SELECT *
FROM customers
WHERE postalcode IS NULL;

-- 5
SELECT *
FROM customers
WHERE postalcode IS NOT NULL;