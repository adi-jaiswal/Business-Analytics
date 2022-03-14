
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


/*
Question 1: Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
Ans:
*/
select FIRST_NAME as WORKER_NAME from Worker;


/*
Question 2:  Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
Ans:
*/
select distinct(DEPARTMENT) from Worker; 


/*
Question 3: Write an SQL query to show the last 5 record from a table.
Ans:
*/
select * from Worker
order by WORKER_ID desc
limit 5;