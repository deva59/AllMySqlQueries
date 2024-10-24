create database PF;
use PF;

create table PriFor1(name varchar(20)Not Null,Id Int primary key,Class varchar(30),city varchar(30));
desc PriFor1;
Insert into PriFor1(name,Id,Class,city)values("Devendra",101,"MCA","Sindkheda"),
											 ("Shubhum",102,"BCA","Amalner"),
                                             ("Rakesh",103,"BCS","Nandurbar"),
                                             ("Rohan",104,"MCA","Amalner"),
                                             ("Viresh",105,"BCA","Dhule");
select * from PriFor1;

create table PriFor2(EName varchar(30),Eid int primary key,Salary int,city varchar(30),
				    Id int, constraint Id_fk foreign key(Id)references PriFor1(Id));
                    
insert into PriFor2(Ename,Eid,Salary,City,ID)values("Ganesh",01,20000,"Pune",105),
													("Akhilesh",02,20215,"Kannad",103),
                                                    ("Prashant",03,20013,"Goa",101),
                                                    ("Gaurav",04,20122,"Raygad",102),
                                                    ("Kunal",05,20011,"Mumbai",104);
select * from PriFor2;
insert into PriFor2 values("Raja",06,"Latur",106);
select * from PriFor2;