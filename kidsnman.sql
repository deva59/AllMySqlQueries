create database Prime1;
use Prime1;

create table Kids(name varchar(40)primary key,age int not null);
insert into Kids(name,age)values("Joy",10),
("monty",12),
("sunny",14);
select * from kids;

create table man(salary int not null,city varchar(30),name varchar(35)references kids(name));
insert into man(salary,city,name)values(2000,"nsk","sunny"),
(2000,"ndm","Joy"),
(2000,"snk","monty");

select * from man;

Alter table man add primary key(city);
select * from man;	
desc man;

delete from man where salary = 2000;
alter table man drop primary key;

alter table man add primary key(salary,city,name);

desc man;

