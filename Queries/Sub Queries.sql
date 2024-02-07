Create database subquery;
Use subquery;
create table student (student_id int, student_name varchar (20), student_loc varchar (10), cid int);
select * from student;
Insert into student values (1,"Tulsi", "hyd", 10),
							(2,"Nani", "Beng", 10),
                            (3,"Renu", "Chennai", 30),
                            (4,"Krishna", "hyd", 20),
                            (5,"Ramya", "Beng", 40);
                            
Create table course ( course_id int, Course_Name varchar(20), Course_fee int , pid int);
insert into course values (10,"sql_server", 2000, 101),
						  (20,"oracle", 2500, 101),
                          (30,".net", 4000, 104),
                          (40,"java", 4000, 103),
                          (50,"msbi", 8000, 102);
select * from course;

create table product (product_id int, product_name varchar(20), product_cost double, mid int);
insert into product values ( 101,"lap",40000,1002),
						   ( 102,"pd",1000,1003),
                           ( 103,"monitor",15000,1001),
                           ( 104,"table",5000,1005),
                           ( 105,"tablet",40000,1004);
select * from product;

-- Display student who joined sql server

select student_name from student where cid =
(select course_id from course where course_name="sql_server");

-- student name who spend more then 3000 as course fee.
select * from course;
select * from student;
select * from product;
select student_name from student where cid in
(select course_id from course where course_fee > 3000);

-- display student name who bought laptop

select * from student;
select * from course;
select * from product;

select student_name from student where cid in
(select course_id from course where pid=
(select product_id from product where product_name="lap"));










