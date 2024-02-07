Create database Temp1;
CREATE DATABASE TEMP2;
SHOW DATABASES;
DROP DATABASE TEMP1;
DROP DATABASE TEMP2;

Create database College;
USE COLLEGE;

CREATE TABLE STUDENTS(
	ID INT PRIMARY KEY,
	NAME VARCHAR(50),
	AGE INT NOT NULL
);

INSERT INTO STUDENTS VALUES( 1, "AMAN", 26);
INSERT INTO STUDENTS VALUES 
(2,"Aaryan", 24),
(3,"ayan",26),
(4,"Akshay",32),
(5,"Pranav",45);

Select * from Students;

use college;
Create table student_Info(
roll_no int primary key,
name varchar(50)
);
select * from student_info;

Insert into student_info values
(1,"sudhya"),
(2,"jabl");


insert into student_info (name,roll_no)
values
("ayan",3),
("aksh",4);
select * from student_info;

-- Practice

create database xyz;
create table employee_info(
id int primary key,
name varchar(50),
salary double
);
use xyz;
insert into employee_info (name,id,salary)
values
("aaryan", 1,100000),
("ayan", 2,1000),
("Rakshit", 3,20000),
("pratik", 4,100);



-- Constrains
-- PRIMARY KEY

CREATE TABLE Bank_Data (
id int,
name varchar(50),
balance int,
primary key (id,name) 
);
select * from bank_data;

create or replace table  office(
emp_id int primary key ,
emp_name varchar (50),
emp_salary int
);
select * from office;


use college;
drop database college;

create database college;
use college;

CREATE or Replace TABLE Students(
Roll_No int primary key,
Name varchar(50),
marks int default 330,
grade varchar(1),
city varchar(10)
);

drop table students;


INSERT INTO students
VALUES
(10,"AAyaN",300,"A","Patna"),
(9,"AARYAN", 540, "A","kol"),
(3,"Akshay",356,"A","van"),
(4,"pranav", 5460, "A","Patna"),
(5,"sudhya",380,"A","delhi"),
(6,"kirti", 580, "A","delhi"),
(7,"babu",567,"A","mumbai"),
(8,"reddy", 234, "A","Patna");

select city , count(roll_no) from students
group by city;

select city , name  from students
group by city;

select city , name, count(roll_no) from students
group by city, name;

select * from students;

select city, avg(marks) as avg_m from students
group by city
order by avg_m desc;

