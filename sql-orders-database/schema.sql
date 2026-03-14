create database R4s6
use R4s6

create table employee(
emp_id int primary key,
fname varchar(10),
lname varchar(10),
age int check(age>20),
city varchar(15),
salary int
)

create table customer(
cus_id int primary key,
fname varchar(10),
lname varchar(10),
city varchar(15),
phone nvarchar(11)
)

create table orders(
ord_id int primary key,
dates date,
qty int,
emp_id int foreign key references employee(emp_id),
cus_id int foreign key references customer(cus_id)
)

create table product(
pro_id int primary key,
name varchar(10) unique,
price float,
expire_date date
)

create table order_details(
ord_id int foreign key references orders(ord_id),
pro_id int foreign key references product(pro_id),
primary key (ord_id, pro_id)
)