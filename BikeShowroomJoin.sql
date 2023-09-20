Create Table Model(Model_id int Primary Key,M_Name varchar(20),Cost int)
Insert Into Model values (1,'Hyundai',800000)
Insert Into Model values(2,'MarutiSuzuki',100000)
Insert Into Model Values(3,'Tata',150000)

Create Table Customer(Cust_id int primary Key,First_Name Varchar(20),Last_Name Varchar(20),Mobile_No int,Gender Int,Email varchar(20))
Insert Into Customer Values (101,'Rohit','Survase',832988444,'Male','rohitsurvase4363@gmail.com')
Insert Into Customer Values(102,'Amit','Chougule',72762212,'Male','Amitchougule@gmail.com')
Insert Into Customer Values(103,'Pooja','Dolai',74784634,'Female','PujaDolai@gmail.com')
Insert Into Customer Values(104,'Snehal','Barve',63773733,'Female','Snehal@gmail.com')
insert Into Customer Values(105,'Shivani','Survase',45694678,'Female','Shivani@gmail.com')
Insert Into Customer Values(106,'Sandesh','Survase',94484842,'Male','snade@gmail.com')
alter table  customer alter column Gender varchar(20)
alter table customer alter column Email Varchar(50)

Create Table Purchase (Pur_id int Primary Key,Cust_id int,constraint Cust_idFK foreign key (Cust_id) references Customer(Cust_id),
Model_id int,constraint Model_idFk foreign key (Model_id) references model(Model_id),booking_amt int,Payment_id int,constraint Paym_IDFK foreign key (Payment_id) references Payment_model(Payment_id),
Purchase_Date int,Rating_id int,constraint Rating_idFK foreign key (Rating_id) references FeedBack_Rating(Rating_id))

Insert Into Purchase Values(3333,101,2,60000,22,'09/02/2024',5)
Insert Into Purchase values(3332,102,3,50000,44,'03/08/2023',4)
Insert Into Purchase Values(3334,104,1,90900,44,'01/3/2023',2)
Insert Into Purchase Values(3335,103,3,20000,22,'08/04/2023',1)
Insert Into Purchase Values(3336,105,2,800000,22,'05/06/2023',3)
Insert Into Purchase(Pur_id,Cust_id,Model_id,booking_amt,Payment_id,Purchase_Date) Values(3337,106,3,54000,22,'03/11/2022')

alter table Purchase alter column Purchase_Date Date



Create Table Payment_model(Payment_id int Primary Key,Payment_type varchar(20))
Insert Into Payment_model Values(11,'Online')
Insert Into Payment_model values(22,'Cash')
Insert Into Payment_model Values(44,'Cheque')



Create Table FeedBack_Rating(Rating_id int Primary Key,Rating varchar(20))
Insert Into FeedBack_Rating Values (5,'excellent')
Insert Into FeedBack_Rating Values(4,'good'),(3,'average'),(2,'bad'),(1,'complaint')

Select * from Model
select * from Customer
select * from Purchase
select * from Payment_model
select * from FeedBack_Rating

--1.	WAQ to get the booking amount for customers who made cash payment 
select (m.Cost-p.booking_amt) as balance,c.First_Name,c.Last_Name,c.Mobile_No,p.Purchase_Date,p.booking_amt,m.Cost from model m join Purchase p on m.Model_id=p.Model_id join Customer c on c.cust_id=p.cust_id join Payment_model pt on pt.Payment_id=p.Payment_id where pt.Payment_type='cash'

--2.2.Delete all the records of customer who have paid complete amount as that of bike cost.

delete from Customer where Cust_id in(select p.Cust_id from Purchase p inner join model m on p.Model_id=m.Model_id where (m.Cost-p.booking_amt)=0 )
update Purchase set booking_amt=150000 where Pur_id=3335

--3.Create an index to have faster retrival of data on the basis of booking_amount.
create index booK_amtIndex on purchase(booking_amt) 

--4.WAQ to change payment mode to cash for ‘TATA’ purchased by customer with id 11. 
update purchase set payment_id=22 where Pur_id=3332


--6 Create a stored procedure to get the full name of customer whose cust_id is provided as input.

--7.	WAQ to get the number of complaints registered for model activa 5G.
select rating_id,COUNT(Pur_id)as Complain_count from purchase group by rating_id having count(Pur_id)>1

--8.WAQ to get all customer names who haven’t given ratings yet. 
select * from Purchase where Rating_id is null

--9.	Delete all complaint records from purchase. 
delete from Purchase where Rating_id=1
--10.	Update ratings given by Mr Amit from good to excellent.
update Purchase set Rating_id=5 where Pur_id=3332
--11.	Reduce cost of all bikes for which rating is bad by 10%. 

--12.	Write a to display highest selling model along with name and count 
--select M_name ,COUNT(model_id) as a 'Model_Count'from purchase group by Model_id order by Model_Count desc limit=5
Select * from model m join Purchase p on m.Model_id=p.Model_id 

Create database D6_joinAsses

