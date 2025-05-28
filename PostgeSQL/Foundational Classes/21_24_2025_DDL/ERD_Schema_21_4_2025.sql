CREATE TABLE Customer(
customer_id SERIAL PRIMARY KEY,
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
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(100),
price NUMERIC(10,2),
stock_quantity INT
);

CREATE TABLE Orders(
order_id SERIAL PRIMARY KEY,
order_date TIMESTAMP,
total_amount NUMERIC(10,2),
customer_id int,
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Payment(
payment_id SERIAL PRIMARY KEY,
payment_date TIMESTAMP,
amount NUMERIC(10,2),
order_id INT,
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE OrderDetails ( 
order_detail_id SERIAL PRIMARY KEY,
order_id INT,
product_id int,
quantity int,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

SELECT * FROM Customer;
SELECT * FROM Product;
SELECT * FROM Orders;
SELECT * FROM Payment;
SELECT * FROM OrderDetails;