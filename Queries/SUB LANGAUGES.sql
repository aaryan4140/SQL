-- Creating Database
CREATE DATABASE SQLD;

-- Using Database for creating table and other process
USE SQLD;

-- Creating a table with employee details
CREATE TABLE Employee(
E_id int,
E_name varchar(50),
Salary int
);

-- SP_HELP Gives info about all the definitions of a table, detailed information.
 -- sp_help 'Employee'
 
 -- Alter Command
 
 -- 1. Adding a extra column after creating a table
 ALTER TABLE Employee add Location Varchar(20);
  select * from Employee;
 
 -- 2. Dropping existing column from the created table
 ALTER TABLE Employee drop salary;
 select * from Employee;

-- 3. Modifying the columns data type
ALTER TABLE employee
MODIFY COLUMN location VARCHAR(100);

ALTER TABLE employee
MODIFY COLUMN location CHAR(30);

/*
ALTER TABLE EMPLOYEE
ALTER COLUMN LOCATION VARCHAR(20); 
NEED TO CHECK WHY ERROR
*/

-- DML COMMANDS
-- 1. INSERT
SELECT * FROM Employee;
INSERT INTO EMPLOYEE VALUE(1,'Aaryan','hyd');
insert into employee value(2,'aaryan2', 'hyd2');
select * from employee;

INSERT INTO EMPLOYEE VALUE 
(3,'Aaryan3','HYD3'),
(4, 'Aaryan4', 'Hyd4'),
(5,'Aaryan5','hyd5');
SELECT * FROM Employee;

Insert into employee value (6,"name");
-- it show error bcz the sql is looking for all the value or parameter but location is not given

Insert into employee (e_id,e_name) value (7,"anjali");
insert into employee (e_id,location) value (8,"Hyd");
select * from employee;

-- Update query
UPDATE employee set location="patna" where E_id=7;
Update employee set E_name="Babu" where  e_id=8;

-- DELETE QUERY
DELETE FROM EMPLOYEE WHERE E_ID=3;
SELECT * FROM employee;
DELETE FROM EMPLOYEE WHERE E_id in (4,5);
SELECT * from employee;

-- Truncate Query
Truncate table employee;
SELECT * FROM employee;

-- Drop Query
DROP TABLE employee
SELECT * FROM employee;