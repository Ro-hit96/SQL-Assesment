Create Table Product(pid int Primary Key not null,PName varchar(20) not null,Price int,CompanyName varchar(20))
Insert Into Product Values(1,'Watch',5000,'Noise')
Insert Into Product Values(2,'HeadPhone',2000,'OnePlus')
Insert Into Product Values(3,'Laptop',40000,'Lenovo')
Insert Into Product Values(4,'NoteBook',100,'ClassMate')
Insert Into Product Values(5,'Watch',5500,'Noise')
Insert Into Product Values(6,'Mobile',45000,'Apple')
Insert Into Product Values(7,'Pen',50,'Trimax')
Insert Into Product Values(8,'Pencil',30,'Lexi')
Insert Into Product Values(9,'Earbuds',2500,'Boat')
Insert Into Product Values(10,'Charger',800,'Apple')
Insert Into Product Values(11,'heADPHONE',900,'Boat')

Select * from Product
Select * from Product where price<2000
Select * from Product where PName='Watch'
Select * from Product where Price between 2000 and 5000
select distinct CompanyName from Product
Select * from Product where PName in('watch','mobile') 
Select * from Product
Select * from Product Where Pid=1 or Price=4000


alter table Product Drop Constraint PName
Select * from Product
---------------------------------------------------------------
