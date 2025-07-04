USE db_aditya;

CREATE TABLE GymMembers 
(member_id INT PRIMARY KEY AUTO_INCREMENT,    
full_name VARCHAR(100) NOT NULL,    
email VARCHAR(100) UNIQUE NOT NULL,    
join_date DATE DEFAULT (CURDATE()),    
height_cm DECIMAL(5,2),     
weight_kg DECIMAL(5,2));

CREATE TABLE Events 
(event_id INT PRIMARY KEY AUTO_INCREMENT,    
event_name VARCHAR(100) NOT NULL,    
event_date DATE NOT NULL,    
created_on DATETIME DEFAULT (SYSDATE()));

INSERT INTO GymMembers 
(full_name, email, join_date, height_cm, weight_kg) 
VALUES
('Aanya Patel', 'aanya.patel@email.com', '2023-06-15',158.50, 54.25),
('Rohan Mehra', 'rohan.mehra@email.com', '2024-01-10',172.00, 68.75),
('Meera Shah', 'meera.shah@email.com', '2022-11-25', 165.75,62.40),
('Dev Malhotra', 'dev.malhotra@email.com', '2024-07-01',180.25, 82.10),
('Sanya Iyer', 'sanya.iyer@email.com', DEFAULT, 149.90,47.30);

INSERT INTO Events 
(event_name, event_date) 
VALUES
('Yoga Day', '2025-06-21'),
('Monsoon Marathon', '2025-07-20'),
('Wellness Camp', '2025-08-10'),
('Nutrition Workshop', '2025-07-05'),
('Annual Fitness Fest', '2025-12-01');

SELECT * FROM gymmembers;

SELECT * FROM events;

SELECT REPLACE(event_name,'o','1')
FROM events;

SELECT COALESCE(NULL,NULL,'Hello','World');

-- 1
SELECT 
full_name,
weight_kg,
ROUND(weight_kg,1) AS weight_rounded
FROM gymmembers;

-- 2
SELECT
full_name,
FLOOR(height_cm) AS height_floor
FROM gymmembers;

-- 3
SELECT
full_name,
CEIL(height_cm) AS height_ceil
FROM gymmembers;

-- 4
SELECT
full_name,
TRUNCATE(height_cm,1) AS height_truncate
FROM gymmembers;

-- 5
SELECT CURDATE() AS today, NOW() AS 'current_time';

-- 6
SELECT
full_name,
join_date
FROM gymmembers;

-- 7
SELECT
event_name,
event_date,
created_on
FROM events;

-- 8
SELECT
event_name,event_date,
DATE_ADD(event_date, INTERVAL 15 DAY) as reminder_date
FROM events;

-- 9
SELECT
event_name,event_date,
DATE_SUB(event_date, INTERVAL 7 DAY) as prep_day
FROM events;

-- 10
SELECT
event_name,event_date,
DATEDIFF(event_date, CURDATE()) as days_left
FROM events;