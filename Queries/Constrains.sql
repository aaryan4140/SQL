CREATE DATABASE Constrains;
Use Constrains;
-- constrains

-- 1. Null

CREATE TABLE TAB_NULL(
						ID INT,
                        NAME VARCHAR(20) NULL,
                        SALARY INT
                        );
					
INSERT INTO TAB_NULL Value (1,null,10000);
select * from tab_null;
INSERT INTO tab_null VALUE( NULL,NULL,NULL);
select * from tab_null;

-- Not Null:- It does not allow null values to the column
-- NN While creating a table
CREATE TABLE TAB_NN (
					ID INT NOT NULL,
                    NAME VARCHAR(20),
                    SALARY INT
                    );

INSERT INTO TAB_NN VALUE (1,"SATYA",2000);
SELECT * FROM TAB_NN;

INSERT INTO TAB_NN VALUE ( NULL,"AARYAN", 300000);
SELECT * FROM Tab_nn;

-- NN A	fter table creation
create table tab_nn1(id int, name varchar(20), sal int);
INSERT INTO TAB_NN1 VALUE (NULL,NULL,NULL);
select * from tab_nn1;

 -- ALTER TABLE TAB_NN1 MODIFY COLUMN ID INT not null;
-- Alter table tab_nn1 alter column id int not null;

-- Primary key
-- 1:- No Null values
-- 2:- No duplicate values
-- 3:- only one pk per table
-- 4:- we cant apply pk on nullable column


create table pk (id int primary key, name varchar(20), sal int);
insert into pk value (1,"aar",20);
select * from pk;
insert into pk value (null,"aak", 23);
insert into pk value ( 1,"aap", 45); 
create table pk3 (id int primary key , name varchar(20) primary key, sal int);

-- After creating a table
Create table pk1(id int, name varchar(20), sal int);
ALTER TABLE Pk1 ADD primary key(id);
Insert into pk1 value(null,"aaa", 23);
-- check with sp

-- UNIQUE KEY
-- OLLOW ONLY ONE NULL VALUES
-- NO DUPLICATE VALUES
-- TABLE ALLOW MULTIPLE UNIQUE KEY 
-- WE CAN APPLY UK TO NULLABLE COLUMN SINCE ONE NULL VALUE IS ALLOWED

CREATE table UK (ID INT UNIQUE, NAME VARCHAR(20), SAL INT);
INSERT INTO UK VALUE( 2,"AAR", 45);
INSERT INTO UK VALUE (NULL, "AAP",43);
INSERT INTO UK VALUE (NULL, "AAPS",44);
INSERT INTO UK VALUE (NULL, "AAPN",45);
SELECT * FROM UK;
/*  INSERT INTO UK VALUE(NULL,"AAC",34);
SELECT * FROM UK; */

-- Multiple unique keys
CREATE TABLE UK2 ( UID INT UNIQUE, NAME VARCHAR(20) UNIQUE);
INSERT INTO UK2 VALUE
					(1,"QWE"),
                    (NULL,NULL),
                    (2,"NO"),
                    (3,"NO1"),
                    (4,"NO2"),
                    (5,"AARAY");
SELECT * FROM UK2;
INSERT INTO UK2 VALUE
					(NULL,NULL),
                    (NULL,NULL),
                    (NULL,NULL),
                    (9,"ONION"),
                    (NULL,NULL);
-- AFTER CREATING THE TABLE
CREATE TABLE UK3 (ID INT, NAME VARCHAR(20));
ALTER TABLE UK3 ADD UNIQUE(ID);

-- CHECK :- It check the condition, if the condn is true it return value, otherwise throw error.
-- before creating table
create table ck (id int, name varchar(10), money int check(money>500));
insert into ck value(1,"aar", 1000);
insert into ck value(2,"asd",300);

-- After Creating Table
CREATE TABLE CK2(ID INT, NAME VARCHAR(20), SAL INT);
INSERT INTO CK2 VALUE(1,"AARY", 100000);
ALTER TABLE CK2 ADD CHECK(SAL<=100000);
INSERT INTO CK2 VALUE(2,"AAM",100001);
INSERT INTO CK2 VALUE(2,"AAM",10001);

-- DEFAULT

Create table DF (ID INT, NAME VARCHAR(20) , LOC VARCHAR(20) DEFAULT "HYD");
INSERT INTO DF VALUES (1,"AAR","BEN");
INSERT INTO DF VALUE(2,"AAP","AND");
insert INTO DF VALUE(3,"AYAN"); -- Expecting 3 values but getting only 2
Insert into DF (ID,NAME) VALUES (4,"ANJALI");
SELECT * FROM DF;


-- Assigning Default After creating table
Create Table df1(id int primary key,name Varchar(20),loc varchar(20));
INSERT into DF1 VALUES (1,"Aar","Hyd");
-- ALTER TABLE DF1 ADD DEFAULT "PATNA" FOR TABLE LOC ;


-- Forein key
Create table emp (id int primary key, name varchar(10));
insert into emp values (1,"aar"),(2, "aap"),(3,"Par"),(4, "Ans");
Select * from emp;
drop table emp;
drop table product;
Create table product (p_id int primary key, p_name varchar(20), e_id int,  foreign key (e_id) references emp (id));
insert into product values (100,"Lap", 1);
insert into product values (200,"pd",5);   -- error because 5 is not present in the 1st emp table
insert into product values ( 300,"cd",2);
select * from emp;
select * from product;

-- After creating the table
create table product1 (p_id int primary key, p_name varchar(10), emp_id int);
Alter table product1 add foreign key (emp_id) references emp(id);





