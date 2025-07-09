USE db_aditya;

-- 4
SELECT DISTINCT restaurant_name
FROM restaurant_info r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
WHERE o.amount > 1000;

-- 5
SELECT restaurant_name, 
ROUND(AVG(delivery_time),2) AS average_delivery_time
FROM restaurant_info r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY restaurant_name
ORDER BY average_delivery_time;

-- 7
-- LEFT JOIN
SELECT restaurant_name,
cuisine_type,
COUNT(o.order_id) AS total_orders
FROM restaurant_info r
LEFT JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY restaurant_name,cuisine_type;
-- VS
-- INNER JOIN
SELECT restaurant_name,
cuisine_type,
COUNT(o.order_id) AS total_orders
FROM restaurant_info r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY restaurant_name,cuisine_type;

-- to show working of LEFT JOIN
INSERT INTO restaurant_info
VALUES
(6,'Silver Streak', 'Chinese');

SELECT restaurant_name,
cuisine_type,
order_id FROM restaurant_info r
LEFT JOIN orders o
ON r.restaurant_id = o.restaurant_id;


-- SUBQUERIES
-- 1
SELECT *
FROM orders
WHERE amount >(SELECT AVG(amount) FROM orders);

-- 2
SELECT city, total_amount
FROM(SELECT city, SUM(amount) As total_amount 
FROM orders
GROUp BY city) AS city_totals
ORDER BY total_amount DESC;

-- 3
SELECT user_id, amount
FROM orders
WHERE amount = (SELECT MAX(amount) FROM orders);

-- 4
SELECT *
FROM orders
WHERE order_id IN (SELECT order_id FROM orders WHERE city = 'Mumbai');

-- 5
SELECT order_date, amount
FROM orders
WHERE amount = (SELECT MAX(amount) FROM orders);

-- HW
SELECT restaurant_name, revenue
FROM (
SELECT restaurant_name, SUM(amount) AS revenue
FROM restaurant_info r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
GROUP BY restaurant_name) as derived_table
ORDER BY revenue DESC
LIMIT 5;
