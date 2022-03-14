
create database assignment;

use assignment;

create table Worker (WORKER_ID int, FIRST_NAME varchar(255), LAST_NAME varchar(255), SALARY float, DEPARTMENT varchar(255));

insert into Worker values (101, 'Raj', 'Kumar', 10200, 'Compliance');
insert into Worker values (102, 'Sheldon', 'Cooper', 20230.10, 'Operations');
insert into Worker values (103, 'Howard', 'Sisken', 30424.20, 'Analytics');
insert into Worker values (104, 'Leonard', 'Hofstader', 72636.23, 'Operations');
insert into Worker values (105, 'Emily', 'Hawketts', 11203.34, 'HR');
insert into Worker values (106, 'Penny', 'Harnandez', 10173.21, 'Analytics');
insert into Worker values (107, 'Sam', 'Glick', 19020.32, 'Compliance');
insert into Worker values (108, 'Rajesh', 'Koothrapalli', 21005.21, 'HR');
insert into Worker values (109, 'Joey', 'Tribbiani', 31009.31, 'Compliance');
insert into Worker values (110, 'Ross', 'Taylor', 12389.18, 'Operations');
insert into Worker values (111, 'Amitabh', 'Bhattacharya', 11989.12, 'Analytics');


/*
Question 1: Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
Ans:
*/
select substr(FIRST_NAME, 1, 3) as FIRST_THREE_CHAR from Worker;


/*
Question 2: Write a SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
Ans:
*/
select position('a' in FIRST_NAME) as Position_a from Worker
where FIRST_NAME = 'Amitabh';


/*
Question 3: Write an SQL query to print the name of employees having the highest salary in each department.
Ans:
*/
select * from Worker a
where SALARY = (select max(SALARY) from Worker where DEPARTMENT = a.DEPARTMENT);