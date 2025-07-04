/* ALTER COMMAND - USED TO MODIFY , ADD , DELETE THE 
STRUCTURE OF TABLE*/
-- Rename cname to First_name of customer_details table

alter table customer_details
rename column cname to First_name;

-- Add contact details to employee table 

Alter table employee add phone_no 
varchar(13);

-- Add a condition to contact details , the phone number should not be of more than 13 characters
alter table employee add constraint
length_ph check(10 <= char_length(phone_no) <= 13);

-- drop status column from orders table
alter table orders drop column status;

-- add status to the orders table
alter table orders add column status varchar(10)
default "pending";

-- Rename table employee to emp_details
Rename table employee to emp_details;

-- DROP THE PRODUCT TABLE
drop table product;

drop table emp_details;

show tables;

truncate table employee;

insert into employee values
(101,"rohan","nanda","HR","2022-09-02"),
(102,"Shaila","Roy","HR","2023-01-01") ;

select * from employee;

truncate table employee;







