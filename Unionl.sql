Create Table Signup(id int primary Key,FN Varchar(20),LN Varchar(20),City Varchar(20) )
Insert Into Signup(id,FN,LN,City)values(1,'Rahul','Gandhi','Pune'),(2,'Amit','Patil','Pune'),(3,'Ritesh','Survase','Mumbai'),(4,'Rahul','Gandhi','Pune'),
(5,'Sakshi','Shinde','Lona'),(6,'Rahul','Patii','Lona')


Create Table Register(id int primary Key,FN Varchar(20),LN Varchar(20),City Varchar(20))
Insert Into Register(id,FN,LN,City) values(1,'Rahul','Gandhi','Pune'),(2,'Amit','Patil','Pune'),(3,'Sandesh','Patil','Pune'),(4,'Rahul','Naikare','Lona'),(5,'Dipesj','Patil','mumbai'),
(6,'Sakshi','Bhpr','lins')

Select * from Signup
Select * from Register

Select fN from Signup union select fn from Register
Select fn,ln,city from Signup union all select fn,ln,city from Register