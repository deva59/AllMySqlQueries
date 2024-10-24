create database alex;
use alex;

create table animal1(name varchar(40)unique,Type varchar(30));
insert into animal1(name,Type)values("Horse","Domestis"),
("Dog","Domesstic"),
("Horse","Junglee");

create table Orders(order_id int not null, amount int Check(amount>0));

insert into Orders(order_id,amount)values(123,100),
(785,150);

select * from Orders;