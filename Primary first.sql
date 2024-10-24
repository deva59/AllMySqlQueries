create database constrain;
use constrain;
-- Not Null Constraint-- 
create table temp3(name varchar(30),id int, salary int);

insert into temp2 values(not null,not null,not null);

insert into temp2 values(null,null,null);

insert into temp1 values(null,121,null);

-- Check Constarint-- 
create table emp4(age int check(age>=18) not null, name varchar(30) not null);

insert into emp4 values(20,"Devendra");

select * from emp4;

drop table emp4;

-- Not Null + Unique = Primary Key-- 
create table empp(id int primary key,name varchar(30) not null,city varchar(40));

insert into empp values(12,"Devendra","Pune");

insert into empp values(12,"Devendra","Pune");

select * from empp;

show databases;


desc temp1;

alter table temp3 add primary key(id);

select * from temp3;