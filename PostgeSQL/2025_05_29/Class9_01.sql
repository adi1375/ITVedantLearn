-- ALTER COMMAND

ALTER TABLE customer_details
RENAME COLUMN c_name TO first_name;

ALTER TABLE employee
ADD COLUMN phone_no VARCHAR(13);

ALTER TABLE orders
DROP COLUMN status;

ALTER TABLE orders
ADD COLUMN status VARCHAR(30) DEFAULT 'Pending';

ALTER TABLE employee
RENAME TO emp_details;

ALTER TABLE emp_details
ADD CONSTRAINT length_ph CHECK(LENGTH(phone_no) >= 10 AND LENGTH(phone_no) <= 13);


-- Test value to check if check constraint in employee table works.
-- INSERT INTO employee(emp_id,first_name,last_name,department,doj)
-- VALUES
-- (100, 'Rahul', 'Kamra','Gamer','2006-07-02');
-- SELECT * FROM employee;
-- TRUNCATE TABLE employee;