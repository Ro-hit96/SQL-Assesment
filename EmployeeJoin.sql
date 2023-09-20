Create Table Depart(did int Primary Key, d_name varchar(20),d_location varchar(20))
Insert Into Depart Values(1,'HR','Pune')
Insert Into Depart Values(2,'Sales','Mumbai')
Insert Into Depart Values(3,'Development','NalStop')
Insert Into Depart Values(4,'Testing','Akurdi')
Insert Into Depart Values(5,'Coading','Chimchwad')

Create Table Employes(emp_id int primary Key,ename varchar(20),salary int,did int,constraint did_fk foreign key (did) references Depart(did))
Insert Into Employes values(101,'Vinayak',40000,null)
Insert into Employes(emp_id,ename,salary)values(102,'Aishwarkya',60000)
Insert Into Employes values(103,'Puja',4000,1)
Insert Into Employes values(104,'Suraj',10000,2)
Insert Into Employes Values (105,'Ashish',15000,4)
Insert Into Employes Values(106,'Payal',48000,3)
Insert Into Employes Values(107,'Sakhi',56000,null)
Insert Into Employes Values (108,'Riya',20000,null)
Insert Into Employes values(109,'Shubham',24000,null)
Insert Into Employes Values(110,'Sandy',3000,2)
Select * from Depart



Select * from Employes

Select * from Employes e inner join Depart d on e.did=d.did

select d.d_name,e.ename from Employes e join Depart d on e.did=d.did where e.ename='Puja'

Select * from Employes e join Depart d on e.did=d.did where d.d_name='Hr'
select e.ename from Employes e ,Depart d where e.did=d.did and d.d_name='sales'
select * from Employes e ,Depart d where e.did=d.did and d.d_name='sales'

select name from sys.databases 
use DP6_Joins
select name from sys.tables
exec sp_help employes

Select * from Employes e join Depart d on e.did=d.did
Select e.did,d.did,e.ename,e.salary,d.d_location,d.d_name from Employes e inner join Depart d on e.did=d.did	--inner Join
select e.did,d.did,e.ename,e.salary,d.d_location,d.d_name from Employes e left join Depart d on e.did=d.did		--left join
select e.did,d.did,e.ename,e.salary,d.d_location,d.d_name from Employes e right join Depart d on e.did=d.did	--right join
select e.did,d.did,e.ename,e.salary,d.d_location,d.d_name from Employes e full join depart d on e.did=d.did		--full join
select e.did,d.did,e.ename,e.salary,d.d_location,d.d_name from Employes e full outer join depart d on e.did=d.did --outer join

Update Employes set did=3 where emp_id=102
update Employes set did=4 where emp_id=107
update Employes set did=1 where emp_id=108
Select * from Employes
Select * from Depart

select * from Employes cross join Depart

Select e1.ename as 'High salary',e1.salary,e2.ename as 'Low Salary',e2.salary from Employes e1,Employes e2 where e1.salary>e2.salary

alter table Employes add Manager_id int
update Employes set manager_id=105 where emp_id in(102,104,103)
update Employes set manager_id=110 where emp_id in(106,107,108,109)

Select e3.ename as 'Employee',e4.ename as 'Manager' from Employes e3,Employes e4 where e3.manager_id=e4.emp_id

select e1.ename as 'employee',e2.ename as 'manager' from Employes e1,Employes e2 where e1.Manager_id=e2.emp_id

Select ename,salary from Employes where salary>25000
Select * from Employes
select top 1 ename,salary from  Employes order by salary desc

Select e.salary from Employes e join Depart d on e.did=d.did where d.d_name='testing'

Select * from Employes

select * from Depart

select * from Employes e join Depart d on  e.did=d.did where d.d_location='akurdi' and salary>25000 

Select * from Employes e left join Depart d on e.did=d.did where d.d_name is null

----------------------------------------------Having Clouse---------------------
select did,count(emp_id) as 'EmpCount' from Employes group by did
select did,sum (salary) from Employes group by did
select did,avg (salary) from Employes group by did

----------------------------------------------Sub Query----------------------------
--find the max salary in employee table

select max (salary) as  'MaxSal' from Employes
-- display the emp details who has max salary in emp table
--outer query                            inner/ subquery
select * from Employes where salary=(select max (salary) as  'MaxSal' from Employes)
-- display emp details who work in HR dept
select * from Employes where did=(
select did from Depart where d_name='Hr')
-- display emp details who has less salary than Rahul
select * from Employes where salary<(
select salary from Employes where ename='puja')
-- display the emp details who has less salary than the avg salary of all emps
select * from Employes where salary<(
select AVG(salary) from Employes)
--display the emp from dev dept who has less salary then the 
--avg salary of admin dept
select * from Employes where salary=(
select AVG(salary) from Employes where did=(select did from Depart where d_name='hr') and did=(select did from Depart where d_name='testing'))
-- display the emp details who has 2nd highest salary
select * from Employes where salary=(
select MAX(salary) from Employes where salary<>(select max (salary)from Employes ))

------------------------------------Update -------------
-- update the salary by 2000rs for emp who work in hr dept
update Employes set salary=salary+2000 where did in(
select did from Depart where d_name='hr')
Select * from Employes
select * from Depart
--------------------------& Delete---------------------------------
-- delete the emp who work in sale dept
delete from Employes where did in(
select did from Depart where d_name='sales')
