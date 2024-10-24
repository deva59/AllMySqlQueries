create database Thur0310;
use Thur0310;


Create table tblDepartment
(
     ID int primary key,
     DepartmentName varchar(50),
     Location varchar(50),
     DepartmentHead varchar(50)
);

Insert into tblDepartment (ID,DepartmentName,Location,DepartmentHead)
                    values (1, 'IT', 'London', 'Rick'),
                           (2, 'Payroll', 'Delhi', 'Ron'),
                           (3, 'HR', 'New York', 'Christie'),
                          (4, 'Other Department', 'Sydney', 'Cindrella');
                          
select * from tblDepartment;
                          
                          
Create table tblEmployee
(
     ID int primary key,
     Name varchar(50),
     Gender varchar(50),
     Salary int,
     DepartmentId int ,
  CONSTRAINT fk_employee foreign key(DepartmentId) references tblDepartment(Id)
);


Insert into tblEmployee (ID,Name,Gender,Salary,DepartmentId)
                  values (1, 'Tom', 'Male', 4000, 1),
                         (2, 'Pam', 'Female', 3000, 3),
                         (3, 'John', 'Male', 3500, 1),
                         (4, 'Sam', 'Male', 4500, 2),
                         (5, 'Todd', 'Male', 2800, 2),
                         (6, 'Ben', 'Male', 7000, 1),
                         (7, 'Sara', 'Female', 4800, 3),
                         (8, 'Valarie', 'Female', 5500, 1),
                         (9, 'James', 'Male', 6500, NULL),
                         (10, 'Russell', 'Male', 8800, NULL);

select * from tblEmployee;

-- INNER JOIN-- 
select tblEmployee.Name,tblEmployee.Salary,tblDepartment.DepartmentName,tblDepartment.Location from tblEmployee inner join tblDepartment on tblEmployee.DepartmentId = tblDepartment.ID;

-- OUTER JOIN(LEFT OUTER JOIN)-- 
select tblEmployee.Name,tblEmployee.Salary,tblDepartment.DepartmentName,tblDepartment.Location from tblEmployee left join tblDepartment on tblEmployee.DepartmentId = tblDepartment.ID;

-- USING WHERE CLAUSE FILTER-- 
select tblEmployee.Name,tblEmployee.Salary,tblDepartment.DepartmentName,tblDepartment.Location from tblEmployee left join tblDepartment on tblEmployee.DepartmentId = tblDepartment.ID where Location="London";

-- OUTER JOIN(RIGHT OUTER JOIN)--
select tblEmployee.Name,tblEmployee.Salary,tblDepartment.DepartmentName,tblDepartment.Location from tblEmployee right join tblDepartment on tblEmployee.DepartmentId = tblDepartment.ID;
