-- 6
SELECT restaurant_name, ROUND(AVG(amount),2) as avg_amount
FROM orders o
INNER JOIN restaurant_info r
ON r.restaurant_id = o.restaurant_id
GROUP BY restaurant_name
HAVING AVG(amount) >(SELECT AVG(amount) FROM orders);

-- 7
SELECT user_id, SUM(amount) AS amount_spent
FROM orders
GROUP BY user_id
HAVING SUM(amount) > 2000;

-- 8
SELECT day_of_week, no_of_orders
FROM(SELECT TO_CHAR(order_date, 'DAY') AS day_of_week, COUNT(*) AS no_of_orders
	FROM orders
	GROUP BY order_date) AS total_orders
WHERE no_of_orders = (SELECT MAX(no_of_orders) FROM (SELECT COUNT(*) AS no_of_orders
													FROM orders
													GROUP BY order_date))
ORDER BY day_of_week DESC;

-- 8 alternate
SELECT TO_CHAR(order_date, 'DAY') AS day_of_week, COUNT(*) AS no_of_orders
FROM orders
GROUP BY order_date 
HAVING COUNT(*) = (SELECT MAX(no_of_orders) FROM (SELECT COUNT(*) AS no_of_orders
													FROM orders
													GROUP BY order_date));

-- 9
SELECT user_id, COUNT(*) AS no_of_orders
FROM orders
WHERE order_date>=CURRENT_DATE - 30
GROUP BY user_id
HAVING COUNT(*) > 5;

-- 10 
SELECT
restaurant_name,
SUM(amount) as total_revenue,
RANK() OVER (ORDER BY SUM(amount) DESC) AS revenue_rank
FROM orders o
INNER JOIN restaurant_info r
ON o.restaurant_id = r.restaurant_id
GROUP BY restaurant_name;

-- 11
SELECT
order_date,
SUM(amount) AS daily_revenue,
RANK() OVER (ORDER BY SUM(amount) DESC) AS revenue_rank
FROM orders
GROUP BY order_date
LIMIT 3;

-- 12
SELECT
user_id,
SUM(amount) AS total_spent,
RANK() OVER (ORDER BY SUM(amount) DESC) AS relative_rank
FROM orders
GROUP BY user_id;
