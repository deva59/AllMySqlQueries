show databases;
create database mydata;
use mydata;

create table emp(name varchar(30),id int);
desc emp;
alter table emp add city varchar(34);
desc emp;

alter table emp add salary double,add state varchar(30) ;

desc emp;

Alter table emp change column state new_state varchar(20);
desc emp;

