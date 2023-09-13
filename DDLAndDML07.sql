CREATE TABLE Employee(Name varchar(20),Id int primary Key,Mobile_no int,DOB Date)

drop table Employee

CREATE TABLE Dept(Did int primary key,DName varchar(20))

CREATE TABLE Employee(id int,name varchar(20),Constraint Pk_Emp primary key(id),Did int,Constraint fk_Dept foreign key (Did) references Dept(Did))

exec sp_help Employee

Alter Table Employee Add Age int

Alter Table Employee Add Constraint ch_age Check (age>=18)
alter table Employee drop Constraint ch_age 

Create Table Bank(accno int primary Key not null,name varchar(20) not null,email varchar(20) unique,balace int,Constraint ch_bal check(balace<0),Branch varchar(20)default('pune'))

exec sp_help Bank

Alter table Bank Add DepoAmount int
Alter Table Bank Add Constraint ch_DepoAmount check(DepoAmount<500)

alter table Bank Add Branch varchar(20)
alter table Bank Add Constraint De_br default 'Kothrud' for branch;
exec sp_help Bank
drop table bank
drop table Employee

Create Table Employye(id int primary key,ename varchar(20)not null,gmail varchar(20) unique,age int,salary numeric(12,2))
 

 Insert Into Employye Values(101,'Pradeep','Pra@Gmail.com',27,30000.89)
 Alter Table Employye Add Check(age>=18)
 Insert Into Employye Values(102,'Vinyak','Vinayak@gmail.com',23,20000.00)
 Insert Into Employye Values(103,'Aishwarya','Aishwarya@gmail.com',22,35000)
 Insert Into Employye Values(104,'Sakshi','saksh@igmail.com',19,40000)
 Insert Into Employye Values(105,'Surja','Suraj@gmail.com',20,20000)
 Insert Into Employye Values(106,'Hrusikesh','Hrushikesh@Gmail.com',23,30000)
 Insert Into Employye Values(107,'Pradnya','P@gmail.com',22,39494)
Select * from Employye
Insert Into Employye Values(108,'Riya','Riya@gmail.com',24,83838)
Insert Into Employye Values(109,'Sandeesh','Sandy@gmail.com',43,333322)
Insert Into Employye Values(110,'Chidanand','Chidanand@gmail.com',67,87000)
Insert Into Employye Values(111,'Alisha','Alisha@gmail.com',40,50000)
Insert Into Employye Values(112,'Shubham','Shubhan@gmail.com',43,30000)
Insert Into Employye Values(113,'SDalavi','Dalavi@gmail.com',43,8988)
Insert Into Employye Values(114,'Payal','payal@gmail.com',33,44342)
Insert Into Employye Values(115,'Tanuja','Tanuja@gmail.com',43,23234)

Select * from Employye
----Update is used to modify the existing recordWith the update command you can use where clauseWhere  → filter the data / search 

update Employye set salary=50000 where id=101
Select * from Employye
update Employye set age=59 where gmail='Pra@Gmail.com'
Update Employye set age=99,ename='Rohit',salary=99999 where id =102
Alter table Employye add city varchar(20)
update Employye set city='Pune'where id in(101,102,103,104,105,106)
update Employye set city='Kurduwadi'where id in(107,108,109,110)
Select * from Employye
update Employye set city='Mumbai'where id in(111,112,113,114,115)

----------Delete  to remove data from the table

Delete from Employye where id=115
Delete from Employye where ename='rohit'
Delete from Employye Where age<18
Delete from Employye where id in(101,102,103)



--Where,Order by,Having,Group by
--DQL (data query language) select / get / fetch data from the table Select command is used to fetch data from the table Clause 
--& operators can be used with select statement
--Operator:-<, <= , > , >= , <>(not equal to) =,Or , and, Distinct,Null,Not null,Like
--*********************************************************************************************************************
--select * from Employee:- indicates all columns :-select query is to fetch the data:-select name,email from Employee
-- alias to the column & to the table:-select name as 'Employee name', email as 'Email Id' from Employee
--select emp.name as 'Emp name',emp.email,emp.salary from :-Employee emp


--Operator:-
-- distinct  --> it is used to get unique record
Select distinct city from Employye
select distinct age from Employye
Select distinct ename from Employye
select * from Employye

-- and --> all the condtions should be true:- combine all the conditions & fetch matched data
select * from Employye where  age<19 and salary<15000
 --OR  --> either one is true
 Select* from Employye where city='mumbai'or city='kurduwadi'
 --Between and When we want fetch record between renge
 Select*from Employye where salary between 15000 and 60000
 Select * from Employye where age between 29 and 99
 --In Clouse:- Match in multiple Selection
 select * from Employye where id in(101,102,103)
 select * from Employye where city in('mumbai','pune')
--Not In:-Skip the Records:-\
select * from Employye where city not in('mumbai')
select * from Employye where age not in(24,43,99)















