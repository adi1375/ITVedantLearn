describe table customer_details;

/* Insert records in 
customer_details table*/

-- single record
insert into customer_details 
values (1,"Sravani","sravani005@gmail.com",
"+917898756578");

-- multiple record

insert into customer_details values 
(2,"Rutu","rutu01@gmail.com","8937898910"),
(3,"Riya","riya23@gmail.com","7388927987"),
(4,"Alex","alex56@gmail.com","2778936343"),
(5,"Kay","kay67898@yahoo.com","6724787283");

select * from customer_details;

/* Insert data into product table*/

insert into product values
(101,"Bag",200.00,78),
(102,"Bottle",100.00,200),
(103,"Jeans",2500.00,150),
(104,"Mobile",30000.00,20);

select * from product;

insert into orders values
(1000,2,103,"2025-05-20","Delivered"),
(1001,1,103,"2025-05-20","Delivered"),
(1002,5,101,"2025-04-30","Not delivered"),
(1003,2,104,"2025-05-13","Delivered"),
(1004,3,102,"2025-05-21","Delivered");

alter table orders modify column status 
varchar(50);
