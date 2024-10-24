 create database employee;
 use employee;
 
 CREATE TABLE employee (
    empno decimal(4,0) NOT NULL,
	ename varchar(10) default NULL,
    job varchar(9) default NULL,
    mgr decimal(4,0) default NULL,
    hiredate date default NULL,
    sal decimal(7,2) default NULL,
    comm decimal(7,2) default NULL,
    deptno decimal(2,0) default NULL);
    
    INSERT INTO employee(empno,ename,job,mgr,hiredate,sal,comm,deptno) VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20'),
    ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30'),
    ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30'),
    ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20'),
    ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30'),
    ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30'),
    ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10'),
    ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20'),
    ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10'),
    ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30'),
    ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20'),
    ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30'),
    ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20'),
    ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
    
;

    select * from employee;
    
    select empno,ename,sal from employee;
    
    select ename as EmployeeName, sal as salary, job as Designation from employee;  
    select * from employee;
    
    -- Equal-to operator it is Arithmatic-- 
    select ename, job, sal from employee where job="SALESMAN";
    
    select ename, job, sal from employee where job="CLERK";

	-- Not Equal-to operator it is Arithmatic--  
    select ename, job, sal from employee where job!="CLERK";
    
    -- Same as Not Equal-to operator it is Arithmatic-- 
     select ename, job, sal from employee where job<>"CLERK";
     
      -- Greaterthan operator-- 
     select ename, job, sal from employee where sal>2000;
     
     -- NULL= it represents  missing or unknown data-- 
     -- is null:  This is used to select only the records with null valus in the column;-- 
     select ename, job, sal, comm from employee where comm is null;
     
      -- Is not null-- 
    select ename, job, sal, comm from employee where comm is not null;
    
    -- Cond AND--  
    select ename, job, sal from employee where job="SALESMAN" and sal<1500;
    
    select ename, job, sal from employee where job="SALESMAN" and sal>1500;
    
    select ename, job, sal from employee where job="PRESIDENT" and mgr is null;
    
    -- Cond OR--
    select ename, job, sal from employee where job="PRESIDENT" or mgr is not null;
    
    --  in :  to specify multiple possible from a column.--
    select ename, job, sal from employee where job in ("SALESMAN");
    
    select ename, job, sal from employee where job in("SALESMAN","MANAGER");
    
	select ename, job, sal from employee where job in("SALESMAN","MANAGER","CLERK");
    
    
    
    