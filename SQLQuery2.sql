Create Table Bank (BankID Int Primary Key,Bank_Name Varchar(20),B_Address Varchar(20),City Varchar(20),B_State Varchar(20))
Insert Into Bank Values (1,'State Bank of India','Akurdi','Pune','Maharashtra')
Insert Into Bank Values(2,'Panjab Bank','Nigadi','PimpriChinchwad','Maharashtra')
Insert Into Bank Values(3,'Union Bank','Kurduwadi','Solapur','Karnatak')
----------------------------------------------------------------------------------------------------------------------------------------
Create Table Customers (Cust_id Int Primary Key,BankID Int,Constraint BankIDFK Foreign Key (BankID) references Bank (BankID))
Insert Into Customers Values(101,1),(102,2),(103,3),(104,2),(105,2)
----------------------------------------------------------------------------------------------------------------------------------------
Create Table Accounts(Acc_No int Primary Key,Cust_id Int,constraint CustidFK Foreign Key (Cust_id) references Customers (Cust_id),
acctype_id int,Constraint AccTypeFK Foreign Key (acctype_id) references Account_Type (acctype_id), Balance int)

Insert Into Accounts Values(70071,101,222,2000000),(70072,102,333,38393484),(70073,103,333,6578833),(70074,104,222,74894764),
(70075,105,222,6088333),(70076,102,333,73673),(70078,103,222,6000)

-------------------------------------------------------------------------------------------------------------------------------------------
Create Table Account_Type(acctype_id int Primary Key,Acc_type Varchar(20))
Insert Into Account_Type Values(222,'Debit'),(333,'Credit')

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Create Table Transactions(transaction_id int Primary key,Acc_no int,constraint Acc_noFK Foreign Key (Acc_no) references Accounts(Acc_no),Amount Int,
 Transaction_Type Varchar(20),Dates Date)
Insert Into Transactions Values(901,70071,40000,'Credit','2023-06-07'),(902,70072,50000,'Debit','2023-03-05'),(903,70073,100000,'Credit','2023-01-02'),
(904,70074,200000,'Debit','2023-04-08'),(905,70075,60000,'Credit','2023-11-05'),(906,70076,3000,'Credit','2033-06-09')

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 Create Table Customer_Master(Cust_id int,constraint CustFK foreign Key (Cust_id) references Customers,
 CName Varchar(20),Contact bigint,Age Int,Pan_No Varchar(20))
 Insert Into Customer_Master Values(101,'Rohit Survase',8329682341,26,'JYLPS8377G'),
 (102,'Anata Wlke',8888554422,25,'LPSDD1122M'),(103,'Puja Doali',8836633098,22,'AMNSS7788K'),
 (104,'Saurabh Bansode',9890502766,25,'LKSDS8877M'),(105,'Sandes',8485861132,27,'KLPSS8877L')
 ------------------------------------------------------------------------------------------------------------------------------------------------------ 
 Select * from Bank
 Select * from Customers
 Select * from Accounts
 Select * from Account_Type
 Select * from Transactions
 Select * from Customer_Master
 ----------------------------------------------------------------------------------------------------------------------------------------------------
 --1.	Find the no of accounts in saving account
 Select * from 
