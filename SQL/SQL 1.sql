show databases;
use adi;
show tables;
select * from glassdata;

use adi
SET SQL_SAFE_UPDATES = 0;

create table dep (
 dep_id int not null,
 dep_name varchar(100),
 dep_add varchar(255),
 primary key (dep_id)
);
select * from dep;

create table emp (
 emp_id int not null,
 emp_name varchar(100),
 emp_add varchar(255),
 dep_id int,
 primary key (emp_id),
 foreign key (dep_id) references dep(dep_id)
);
select * from emp;

create table cust_details(
cust_name varchar(25),
cust_id int,
gender varchar(1),
geography varchar(15),
churn int
)
select * from cust_details where gender = "F"

insert into cust_details values("Jayam", 201, "M", "Jharkhand", 0);
insert into cust_details values("Anuj", 202, "M", "Baliya", 1);
insert into cust_details values("Aditya", 203, "M", "Kanpur", 1);
insert into cust_details values("Shivam", 204, "M", "Moradabad", 0);
insert into cust_details values("Kashika", 205, "F", "Faridabad", 0);
insert into cust_details values("Dhatri", 206, "F", "Kanpur", 1);
insert into cust_details values("Ruchi", 207, "F", "Delhi", 0);
insert into cust_details values("Tuktuk", 208, "F", "Garh", 1);
insert into cust_details values("Priya", 209, "F", "Karnataka", 0);
insert into cust_details values("Kapil", 210, "M", "Hapur", 1);
insert into cust_details values("Bijender", 211, "M", "Banglore", 0);

create table cust_details_pk(
cust_name varchar(25),
cust_id int not null,
gender varchar(1),
geography varchar(15),
churn int,
primary key (cust_id)
)

insert into cust_details_pk values("Jayam", 201, "M", "Jharkhand", 0);
insert into cust_details_pk values("Anuj", 202, "M", "Baliya", 1);
insert into cust_details_pk values("Aditya", 203, "M", "Kanpur", 1);
insert into cust_details_pk values("Shivam", 204, "M", "Moradabad", 0);
insert into cust_details_pk values("Kashika", 205, "F", "Faridabad", 0);
insert into cust_details_pk values("Dhatri", 206, "F", "Kanpur", 1);
insert into cust_details_pk values("Ruchi", 207, "F", "Delhi", 0);
insert into cust_details_pk values("xyz", 206, "F", "Kanpur", 1);
insert into cust_details_pk values("jkl", 207, "F", "Delhi", 0);

select * from cust_details_pk;

select * from dep;
select * from emp;

insert into dep values(1, 'CSE', "x");
insert into dep values(2, 'Mech', "x");
insert into dep values(3, 'Civil', "x");
insert into dep values(4, 'Tech', "x");
insert into dep values(5, 'CSE', "x");

insert into emp values(123, "Jayam", "JH", 1);
insert into emp values(124, "Anuj", "JH", 2);

select * from cust_details where geography = "Jharkhand";

select * from cust_details where cust_id > 3;

select * from cust_details where cust_id > 204 and gender = "F";

select * from cust_details where cust_name like "a%";

select * from cust_details where cust_name like "%i%";

select * from cust_details where cust_name like "a%a";

select * from cust_details where gender = "F" and geography = "Kanpur";

drop table empinfo;

create table empinfo(
first_name varchar(10),
last_name varchar(10),
id int not null,
age int,
city varchar(15),
state varchar(15),
primary key (id)
);
select * from empinfo;

insert into empinfo values("John", "Kumar", 99881, 45, "Kanpur", "UP");
insert into empinfo values("Surbhi", "Kumari", 99882, 32, "Mumbai", "MH");
insert into empinfo values("Dhatri", "Jaiswal", 99883, 16, "Kolkata", "WB");
insert into empinfo values("Jayam", "Abhishek", 99884, 27, "Ranchi", "JH");
insert into empinfo values("Anuj", "Chaurasia", 99885, 24, "Baliya", "UP");
insert into empinfo values("Navneet", "Yadav", 99886, 31, "Lucknow", "UP");
insert into empinfo values("Umer", "John", 99887, 29, "Kashmir", "JK");
insert into empinfo values("Umang", "Bhardwaj", 99888, 35, "Ambala", "PB");
insert into empinfo values("Manish", "Jaiswal", 99889, 53, "Patna", "BH");
insert into empinfo values("Siddharth", "Kumar", 99890, 45, "Indore", "MP");
insert into empinfo values("Rounak", "Chabara", 99891, 13, "Alwar", "RJ");
insert into empinfo values("Ruchi", "Tyagi", 99892, 39, "Jamnagar", "GJ");

select * from empinfo;

select first_name, last_name, age from empinfo where age > 30;

select * from empinfo where first_name like "r%";

select count(*) as Count from empinfo where last_name like "j%";

show databases;
use adi;
show tables;
select * from cust_details;
select * from cust_details_pk;
select * from cust_details where churn = 1 and gender = 'M';

use adi;
alter table cust_details
add age int;

alter table cust_details
drop column Age;

update cust_details set age = 30 where gender ='M';
update cust_details set age = 34 where gender = 'F';

select * from student;

select * from cust_details;

select gender, count(*) as Count from cust_details
group by gender;

select max(cust_id) from cust_details;

select gender, geography, count(*) as Count from cust_details
group by gender, geography
order by gender asc
limit 5;

select gender, geography, count(*) as Count from cust_details
group by gender, geography
having count(cust_id) < 2;

select concat(cust_name, ' ', geography) as data1 from cust_details;

select substr(cust_name, 3, 2) as sub, cust_name from cust_details;

CREATE table transaction_details(
prod_name varchar(50),
prod_id int NOT NULL,  
order_date datetime,
amount int);

select * from transaction_details;

INSERT INTO transaction_details VALUES ('Motorola', 1, '2020-01-01', 10000);
INSERT INTO transaction_details VALUES ('Canon Camera', 2, '2020-02-01', 60000);
INSERT INTO transaction_details VALUES ('Mousepad', 3, '2020-03-01', 2000);
INSERT INTO transaction_details VALUES ('Razer', 4, '2020-04-01', 3000);
INSERT INTO transaction_details VALUES ('ABC', 5, '2020-05-01', 1200);
INSERT INTO transaction_details VALUES ('DEF', 6, '2020-06-01', 2500);
INSERT INTO transaction_details VALUES ('XYZ', 7, '2020-07-01', 90000);
INSERT INTO transaction_details VALUES ('ABBBB', 8, '2020-08-01', 123100);
INSERT INTO transaction_details VALUES ('ASADASD', 9, '2020-09-01', 1500);
INSERT INTO transaction_details VALUES ('Pencil', 10, '2020-10-01', 10);

select datediff(sysdate(), order_date) as date_diff, prod_name, prod_id from transaction_details;

select date_format(order_date, "%m") as month1 from transaction_details;

select * from cust_details where cust_name like 'a%';

select * from cust_details where cust_name regexp '^a';

select * from cust_details where cust_name regexp "[iy]";

select * from student;

select substr(name, 1, 1) as First_Initial, name, id, dob  from student
where dcode = "YMT";

select left(name, 1) as First_Initial, name, id, dob  from student
where dcode = "YMT";

select character_length(name) from student;

select substr(name, 1, character_length(name)-1) without_last_char from student;

select mid(name, 1, character_length(name)-1) without_last_char from student;

select right(name, 2) from student;

select mid(name, -1, 3) from student;

select upper(name) from student;

select * from student
where name like "%e%";

use adi;

show tables;

select * from cust_details;

select avg(cust_id) as Average from cust_details;

select * from cust_details
where cust_id > (select avg(cust_id) as Average from cust_details);

select cust_id from cust_details where cust_id = "207";

select count(*) from cust_details
where cust_id > (select cust_id from cust_details where cust_id = "207");

create database fun;

use fun;

create table players 
(
player_id int,
player_name varchar(25),
country varchar(25),
goals int
);

select * from players;

INSERT INTO players values (901, 'Sunil', 'India', 5);
INSERT INTO players values (902, 'Daniel', 'England', 12);
INSERT INTO players values (903, 'Christiano', 'Portugal', 15);
INSERT INTO players values (904, 'Zlatan', 'Sweden', 12);
INSERT INTO players values (905, 'Rodriguez', 'Columbia', 11);
INSERT INTO players values (906, 'Henry', 'England', 10);
INSERT INTO players values (907, 'Nani', 'Portugal', 2);
INSERT INTO players values (908, 'Neymar', 'Brazil', 14);
INSERT INTO players values (909, 'Jindal', 'Iran', 5);
INSERT INTO players values (910, 'Martial', 'France', 9);

select * from players where goals > 6;

delimiter &&
create procedure top_players()
begin 
select player_name, country, goals from players where goals > 6;
end &&
delimiter ;

call top_players();

delimiter //
create procedure top_players_sort_by_goals(IN var int)
begin 
select player_name, country, goals from players order by goals desc limit var;
end //
delimiter ;

call top_players_sort_by_goals(3);



