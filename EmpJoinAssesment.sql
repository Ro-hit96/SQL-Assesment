Create table EmployeeInfo (EmpID int Primary Key,EmpFName varchar(20),EmpLName varchar(20),DepartMent Varchar(20),Project varchar(20),
EAddress Varchar(20),EDOB date,EGender varchar(20))

Insert into EmployeeInfo values(1,'Rohit','Gupta','Admin','P1','Delhi','02/12/1979','Male')
Insert into EmployeeInfo values(2,'Rahul','Mahajan','Admin','P1','Mumnai','10/10/1986','Male')
Insert into EmployeeInfo values(3,'Sonia','Banerjee','HR','P3','Pune','05/06/1983','Female')
Insert into EmployeeInfo values (4,'Ankita','Kappor','Hr','P4','Chennai','04/03/2002','Female')
Insert into EmployeeInfo values(5,'Swati','Garg','HR','P5','Delhi','06/04/1991','Female')

Create table EmployeePosition(EmpID int,constraint EmpIDFK foreign key (EmpID) references EmployeeInfo(EmpID),EmpPosition varchar(20),
Date_of_joining date,esalary int)
Insert Into EmployeePosition Values(1,'Executive','01/04/2020',75000)
Insert Into EmployeePosition Values(2,'Manager','03/04/2020',500000)
Insert Into EmployeePosition Values(3,'Manager','02/04/2020',150000)
Insert Into EmployeePosition Values(4,'Officer','02/04/2020',90000)
Insert Into EmployeePosition Values(1,'Manager','03/04/2020',300000)

Select* from EmployeeInfo
Select* from EmployeePosition
--Create a query to generate the first records from the EmployeeInfo table.
Select top 1* from EmployeeInfo 
--Create a query to generate the last records from the EmployeeInfo table.
select top 1* from EmployeeInfo order by empid DESC
--Create a query to fetch the third-highest salary from the EmpPosition table.
select * from EmployeeInfo e inner join EmployeePosition s on e.EmpID=s.EmpID order by s.esalary desc offset 2 rows fetch next 1 rows only 
--Write a query to find duplicate records from a table.
select EmpID,COUNT (EmpId) as 'count' from EmployeePosition group by EmpID having COUNT(EmpID)>1
-- Create an SQL query to fetch EmpPostion and the total salary paid for each employee position.
select EmpPosition,sum(esalary) from EmployeePosition group by EmpPosition
--6. find the employee who has max salary
select top 1 e.*,s.esalary from EmployeeInfo e inner join EmployeePosition s on e.EmpID=s.EmpID order by s.esalary desc 
--7 find the employee who has max salary from HR department
select top 1 e.*,s.esalary from EmployeeInfo e inner join EmployeePosition s on e.EmpID=s.EmpID where s.EmpPosition='manager' order by s.esalary desc 
--8 find the age of each employee
select *,year(cast(GETDATE()as date ))-year (cast(EDOB as date ))as 'age' from EmployeeInfo 
--9 display only female employee details
select * from EmployeeInfo where EGender='Female'
----10 display employee whos position is executive
select e.*,s.EmpPosition,s.esalary from EmployeeInfo e inner join EmployeePosition s on e.EmpID=s.EmpID where EmpPosition='executive'
--11 display count of employee in each city
select EAddress ,COUNT(EmpId) as count from EmployeeInfo group by EAddress