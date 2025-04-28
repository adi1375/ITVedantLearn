CREATE DATABASE online_db;
USE online_db;

CREATE TABLE Customer(
customerID INT auto_increment primary key,
first_name VARCHAR(100),
last_name varchar(100),
email varchar(100) UNIQUE,
address VARCHAR(255),
phone INT,
city VARCHAR(100),
zipcode INT,
country VARCHAR(100)
);

CREATE TABLE Product(
productID INT auto_increment primary key,
productNAme VARCHAR(100),
price decimal(10,2),
stock_quantity INT
);

CREATE TABLE Orders(
orderID INT auto_increment primary key,
order_date DATETIME,
total_amount decimal(10,2),
customerID int,
FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);

CREATE TABLE Payment(
paymentID INT auto_increment primary key,
payment_date DATETIME,
amount decimal(10,2),
orderID INT,
FOREIGN KEY (orderID) REFERENCES Orders(orderID)
);

CREATE TABLE OrderDetails ( 
order_detailID int auto_increment primary key,
orderID INT,
productID int,
quantity int,
FOREIGN KEY (orderID) REFERENCES Orders(orderID),
FOREIGN KEY (productID) REFERENCES Product(productID)
);

SHOW TABLES;