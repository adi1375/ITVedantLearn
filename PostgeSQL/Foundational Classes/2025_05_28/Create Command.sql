/* Single line comment use 
-- message.
Multi line comment -- use 
/* message
message
mjgfv
fjgvhefk
hefgviefh
jyhgiufeh */
-- Create a database named practice_ddl
create database practice_ddl;
use practice_ddl;

/* Design tables named Customer ,product
 orders */
 
 create table customer_details (
 c_id int primary key,
 cname varchar(100) not null,
 email varchar(100) unique,
 phone varchar(13) ) ;
 
create table product (
p_id int primary key,
name varchar(100) not null,
price float not null Check (price > 0),
quantity int default 0 
);

create table orders (
order_id int primary key,
c_id int,
p_id int,
order_date date not null,
status varchar(30) default "pending",
foreign key (c_id) references customer_details(c_id),
foreign key (p_id) references product(p_id) );

create table employee (
emp_id int primary key,
first_name varchar(100),
last_name varchar(100),
department varchar(100),
DOJ date check (year(DOJ) > 2005)
);









