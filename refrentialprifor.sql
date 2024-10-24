create database Prime;
use Prime;

create table std1(name varchar(30),rollno int primary key,class varchar(45));

insert into std1 values("Devendra",101,"MCA");
insert into std1(name, rollno, class)values("Rakesh",102,"BCA"),
											("rohan",103,"MBA"),
											("Viresh",104,"BBA"),
                                            ("Shubhum",105,"MCA");
                                            
select * from std1;

desc std1;


-------------------------------------------------------------------------------------------

create table parant(empid int primary key, name varchar(40), city varchar(40));

desc parant;

insert into parant (empid,name, city)
                 values(1,"abhay","Pune"),
                       (2,"Kumar","Delhi"),
                       (3,"Mohan","Kolkata"),
                       (4,"Jay","MumBai");
                       
select * from parant;
				
                
create table chield(did int primary key, depname varchar(40),empid int, 
    constraint emp_id_fk foreign key(empid)references parant(empid));

insert into chield (did,depname,empid)
     values(101,"IT",3),
     (102,"HR",1),
    (103,"admin",2),
     (104,"Sales",4);          
     
select * from chield;

insert into parant values(105,"sales",5);

select * from parant;
insert into chield values(106,"Admin",6);

insert into parant values(106,"Admin",6);

select * from parant;


