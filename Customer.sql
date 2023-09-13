Create Table Customer(Cust_id int Primary Key,City varchar (20) not null, Country varchar(20),Product_Name varchar(20),Price int,Postal_Code int)
Insert Into Customer Values(1,'London','United Kingdon','Iphone15',140000,121110)
Insert Into Customer Values(2,'Berling','United Kingdom','I Phone14',120000,411022)
Insert Into Customer Values(3,'Akurdi','India','Headphone',4999,411035)
Insert Into Customer Values(4,'Berlin','Germany','Laptop',70000,101156,30)
Insert Into Customer Values(5,'Berlin','Germany','Book',100,101156,30)
Insert Into Customer Values(21,'NewYork','America','TenisBall',200,99950,+1)
Insert Into Customer Values(6,'Berlin','Germany','Mobile',35000,121110,30)
Insert Into Customer Values(7,'Pune','Maharastra','ChikenThali',450,' ',93)
Insert Into Customer(Cust_id,city,Country,Product_Name,Price) Values(8,'Solapur','Maharastra','WineShop',750)
Insert Into Customer Values(9,'norway','America','KingFisher Beer',380,999503,1)
Insert Into Customer Values(10,'norway','America','Clasburg Beer',500,999503,1)
Insert Into Customer Values(11,'Akola','Maharatra','Shevpuri',70,444311,91)
Select * from Customer
--1.write a statement that will select the City column from the Customers table
Select city from Customer--Select Perticular Column
--2.Select all the different values from the Country column in the Customers table.
Select Country from Customer
Alter table Customer add Country_code int
update Customer set Country_code=91 where Cust_id=1
Update Customer set Country_Code=92 where Cust_id=2
Update Customer set Country_Code=91 where Cust_id=3

Select * from Customer 
Select distinct Country from Customer--Show Unique Data from Colom
--3.Select all records where the City column has the value "London
Select city from Customer where city='London'--Show Perticular data from customer
--4.Use the NOT keyword to select all records where City is NOT "Berlin".
Select * from Customer Where not city='Berlin'--Use Not Keyword
--5.Select all records where the CustomerID column has the value 23.
Select * from Customer where Cust_id=21
--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
Select * from Customer where City='Berlin' and Postal_Code=121110
--7.Select all records where the City column has the value 'Berlin' or 'London'.
Select * from Customer where city='Berlin' or city='london'
--8.Select all records from the Customers table, sort the result alphabetically by the column City.
select * from Customer order by City asc
--9.Select all records from the Customers table, sort the result reversed alphabetically by the column City.
Select * from Customer order by city desc 
--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from Customer order by Country,City asc

--11.	Select all records from the Customers where the PostalCode column is empty.***
select Postal_Code  from Customer where Postal_Code is null
--12.	Select all records from the Customers where the PostalCode column is NOT empty.***
select Postal_Code from Customer where Postal_Code is Not Null 
--13.	Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
Update Customer set City='Oslo' where City='norway'
--14.	Delete all the records from the Customers table where the Country value is 'Norway'.
delete from Customer where City='Norway'
Select * from Customer
--15.	Use the MIN function to select the record with the smallest value of the Price column.
Select Min (price) as 'P Price' from Customer
Select Min (price) as 'A Price'from Customer
--16.Use an SQL function to select the record with the highest value of the Price column.
Select MAX (Price) as 'A Price' from Customer
--17.Use the correct function to return the number of records that have the Price value set to 20
Select * from Customer Where Price=140000
--1.Use an SQL function to calculate the average price of all products.
Select avg (Price) as 'Average' from Customer
--19.	Use an SQL function to calculate the sum of all the Price column values in the Products table
Select SUM (Price) as 'sumof'from Customer
--20.	Select all records where the value of the City column starts with the letter "a".
select * from Customer where City like 'a%'
--21.	Select all records where the value of the City column ends with the letter "a".
select * from Customer where city like '%a'
Select * from Customer
--22.	Select all records where the value of the City column contains the letter "a".
Select * from Customer where city like '[a-b]'


