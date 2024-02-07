-- Inner join . Give matching data from both the table
create database joins;
use joins;
Create table emp ( id int, name varchar(10), loc varchar (10), pid int);
drop table emp;
insert into emp values (101,"sai","hyd",1),
					   (102,"ram","beng",2),
                       (103,"satya","hyd",3),
                       (104,"raj","chennai",4),
                       (105,"renu","beng",5);
select * from emp;

Create table product (p_id int, p_name varchar(20), p_cost int);
insert into product values (1,"lap",30000),
							(2,"pc",40000),
                            (3,"pd",1000),
                            (6,"tab",20000),
                            (17,"keyb",1000);
Select * from product;
SELECT * FROM EMP;

SELECT *
FROM EMP INNER JOIN PRODUCT
ON EMP.PID=PRODUCT.P_ID;

SELECT NAME, LOC,ID
FROM EMP INNER JOIN PRODUCT
ON EMP.PID=PRODUCT.P_ID;

SELECT E.NAME, E.LOC,E.ID, P.P_ID
FROM EMP E INNER JOIN PRODUCT P
ON E.PID=P.P_ID;

-- LEFT OUTER JOIN:- Matched data from both the tables, Unmatched data from left table.

Select * 
from emp E left outer join product P
on E.PID = P.P_ID;

-- RIGHT OUTER JOIN:- Matched data from both the tables, Unmatched data from RIGHT table.
SELECT * 
FROM EMP E right OUTER JOIN PRODUCT P
ON E.PID=P.P_ID;

-- FULL OUTER JOIN:- Matched data from both table and umnatched data from right table and unmatched data from left table

/* 
Full join mysql me nahi hota
select *
from emp e full join product p
on e.pid=p.p_id;
*\




