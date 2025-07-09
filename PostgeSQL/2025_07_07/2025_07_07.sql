CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    restaurant_id INT REFERENCES restaurant_info,
    order_date DATE,
    delivery_time INT, -- in minutes
    amount DECIMAL(10,2),
    city VARCHAR(50)
);

CREATE TABLE restaurant_info (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    cuisine_type VARCHAR(50)
);

SELECT * FROM orders;
SELECT * FROM restaurant_info;

INSERT INTO restaurant_info
(restaurant_id, restaurant_name, cuisine_type)
VALUES
(1, 'Tandoori Treats', 'North Indian'),
(2, 'Sushi World', 'Japanese'),
(3, 'Pasta Palace', 'Italian'),
(4, 'Biryani Bowl', 'Hyderabadi'),
(5, 'Green Earth Cafe', 'Vegan');

INSERT INTO orders
(order_id, user_id, restaurant_id, order_date, delivery_time, amount, city)
VALUES
(101, 1001, 1, '2025-07-01', 30, 499.50, 'Bangalore'),
(102, 1002, 3, '2025-07-02', 45, 729.00, 'Chennai'),
(103, 1003, 2, '2025-07-02', 25, 1299.75, 'Mumbai'),
(104, 1004, 4, '2025-07-03', 35, 599.00, 'Hyderabad'),
(105, 1005, 1, '2025-07-03', 40, 850.00, 'Bangalore'),
(106, 1006, 5, '2025-07-04', 20, 399.99, 'Pune'),
(107, 1007, 3, '2025-07-05', 50, 950.00, 'Delhi'),
(108, 1008, 4, '2025-07-05', 30, 675.25, 'Kolkata'),
(109, 1009, 2, '2025-07-06', 27, 1220.00, 'Mumbai'),
(110, 1010, 5, '2025-07-06', 22, 430.10, 'Chennai');

-- 1 
SELECT order_date, SUM(amount) AS revenue
FROM orders
WHERE city = 'Delhi'
GROUP BY order_date
ORDER BY order_date;

-- 2
SELECT restaurant_name, COUNT(*) AS no_of_orders
FROM orders o
INNER JOIN restaurant_info r
ON o.restaurant_id = r.restaurant_id
WHERE city = 'Delhi'
GROUP BY restaurant_name;

-- 3
SELECT cuisine_type, SUM(amount) AS revenue
FROM orders o
INNER JOIN restaurant_info r
ON o.restaurant_id = r.restaurant_id
WHERE city = 'Delhi'
GROUP BY cuisine_type;