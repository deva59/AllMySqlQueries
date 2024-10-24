create database nine;
use nine;

create table numbers(num int);

desc numbers;

insert into numbers(num)values(10),(12),(14),(22),(17),(32),(40),(92),(70),(62),(16),(18),(41),(74),(50);

select * from numbers;

-- sum()-return the total number of a numerical column-- 
select sum(num) from numbers;

-- MIN()-return the smallest value within the selected column-- 
select min(num) from numbers;

-- MAX()-return the Largest value within the selected column-- 
select max(num) from numbers;

-- COUNT()-returns the number of rows in a set-- 
select count(num) from numbers;

-- AVG()-returns the average value of a numerical cloumn-- 
select avg(num) from numbers;

-------------------------------------------------------------------------------------------













