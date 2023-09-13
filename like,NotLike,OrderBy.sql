select * from Employye

--Like Clause 
--> search the term for varchar / string data type
-- % is used for not known letters or count
 
 --start with s end with any letters
 select * from Employye where ename like '%p'
 --start with any letters end with a
 select * from Employye where ename like 'a%'
 --start and end with any letter, name contains a
 select * from Employye where ename like '%a%'
 -- match with multiple letters i.e.in or 
-- name end with k or p or i 

select * from Employye where ename like '%[kpi]'
select * from Employye where ename like '%[ya]%'
select * from Employye where ename like '[ia]%'

-- underscore is used to define specific letters
-- match the exact count of letters
select * from Employye where ename like 'v_____'
select * from Employye where ename like '__k___'
select * from Employye where ename like '_____i'
select * from Employye

--Not Like Clause

Select * from Employye where ename not like '%i'
select * from Employye where ename not like 'v%'
select * from Employye where ename not like '%h%'

select * from Employye where ename not like '%[pv]'
select * from Employye where ename not like '%[de]%'
select * from Employye where ename not like '[iak]%'

-- order by --> to sort the data based on col specified

select * from Employye order by ename
select * from Employye order by gmail desc
select * from Employye order by ename,id 
select * from Employye order by age desc

Insert into Employye values (105,'Amit','Amit@gmail.com',34,98000)
Insert into Employye Values(106,'sandy','sandy@gmaul.com',45,98000)
Insert into Employye values(107,'Saurabh','saurabh@gmail.com',36,39000)
Insert into Employye Values(108,'Rupesh','Rupe@gmail.com',50,98000

Select * from Employye

--limiting the records in SQL using TOP, Offset & Fetch
-- first 5 records
select top 5 * from Employye order by id
-- display 3 emp with highest to lowest salary
select top 3 * from Employye order by salary desc
-- display emp who have highest in the table
select top 1 * from Employye order by salary desc
--display emp who have lowest in the table
select top 1 * from Employye order by salary
-- last 5 records
select top 5 * from Employye order by id desc
-- percentage
select * from Employye order by salary desc

select max (salary) as 'max salary' from Employye 
select min (salary) as 'Min Salary' from Employye
select avg (salary) as 'avg Salary' from Employye
select  sum (salary) as 'sum slary' from Employye
select count (id )as 'count' from Employye
select count (ename) as 'count' from Employye 

Select * from Employye


Create table Department(deptid int primary Key,dname varchar(20))

insert into Department values(1111,'HR'),(1112,'Admin'),(1113,'Devlopment'),(1114,'Testing'),(1115,'Sales')
drop table Department
 alter table Employye add deptid int 
 alter table Employye add constraint pkfk foreign Key (deptid) references Department(deptid)
 alter table employye drop column did
update Employye set deptid=1111 where id in (101,102)
update Employye set deptid=1112 where id in (108)
update Employye set deptid=1113 where id in (107,105)
update Employye set deptid=1114 where id in(106)
update Employye set deptid =1115 where id in (103,104)

select * from Department



select e.* ,d.dname from Employye e inner join Department d on d.deptid=e.id









