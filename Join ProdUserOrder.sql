Create Database DP6_Joins

Create Table User1 (user_id int primary key,uname varchar(20),email varchar(20))
Insert Into User1 Values(1,'Sakshi','sakshi135@gmail.com')
Insert Into User1 Values(2,'Vinayak','Vins@gmail.com')
Insert Into User1 Values(3,'Amit','Amit@gmail.com')

Create Table Product (Prod_id int Primary Key,Prod_Name varchar(20),Prod_Price int)
Insert Into Product values (101,'Watch',5000)
Insert Into Product Values(102,'HeadPhone',2000)
Insert Into Product Values(103,'Mouse',700)

Select * from Product
select * from User1
select * from Orders

Create Table Orders (Order_id int Primary Key,user_id int,constraint fk_Usid  foreign key (user_id) references User1(user_id),
Prod_id int,Constraint fkprod_id foreign Key (Prod_id) references Product(Prod_id),Quantity int)

Insert Into Orders Values(1111,1,101,56)
Insert Into Orders Values(1112,null,null,65)
Insert Into Orders Values(1113,Null,103,67)
Insert Into Orders Values(1114,3,102,84)
Insert Into Orders Values(1115,3,null,47)
Insert Into Orders Values(1116,2,null,74)
Insert Into Orders Values(1117,2,102,78)
Insert Into Orders Values(1118,1,101,89)

Select * from Orders
Select * from User1

Select o.Order_id,o.Prod_id,o.Quantity,p.Prod_Name,p.Prod_Price from Orders o full join Product p on p.Prod_id=o.Prod_id

select user_id,count(Order_id) from Orders group by user_id


--Select course,count(sid) as 'count' from student group by course
-- select coursename,count(sid) as 'cout' from student  where coursename='c#' group by coursename
--select coursename,count(sid) as 'count' from student group by coursename having count(sid)>10
-- Select coursename,sum(fees) from student group by cousename 
--Select courcname,count(sid) from student group by courscename having count(sid<15) oder by count(sid) desc 

