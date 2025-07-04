CREATE DATABASE test_demo;
USE test_demo;

CREATE TABLE demo(
demo_id INT AUTO_INCREMENT PRIMARY KEY,
demo_name VARCHAR(10)
);

INSERT INTO demo
(demo_name)
VALUES
('Adam'),
('Bob'),
('Cathy'),
('Dennis'),
('Ethan');

SELECT *
FROM demo;

SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1;

DROP TABLE demo;
TRUNCATE TABLE demo;
DELETE FROM demo;


