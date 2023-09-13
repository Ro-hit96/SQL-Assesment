Create Table Movie( movie_id int primary key,M_name varchar(20) not null,r_year varchar(20),B_O_Collection varchar(20) )
Insert Into Movie Values(1,'The Kerala Story',2023,100)
Insert Into Movie Values(2,'Gadar2',2023,150)
Insert Into Movie Values(3,'Subhedar',2023,100)
Insert Into Movie Values(4,'Uri',2019,159)

Create Table Roles(roll_id int primary Key,r_name varchar(20))
insert into Roles Values(101,'Heroien')
insert into Roles Values(102,'Hero')
insert into Roles values(103,'Villan')
insert into Roles values(104,'ArmyMan')

Create Table Celebrity(c_id int Primary Key,Cele_Name Varchar(20),Birth_Date date,Ph_no numeric,Email varchar(20))
insert into Celebrity values(1001,'Adah Sharma','02/09/1998',888883734,'adha@gmail.com')
insert into Celebrity values(1002,'Sunny Deol','12/11/1990',474742,'SunnyD@gmail.com')
insert into Celebrity values(1003,'Makrand','09/12/1988',45678876,'Mak@gmail.com')
insert into Celebrity values(1004,'Vicky Kaushal','12/9/1993',35645666,'viks@gmail.com')

Create Table BolywoodData(Bolu_DId int Primary Key,C_id int,constraint cid foreign key(C_id)references Celebrity(C_id),movie_id int ,constraint mid foreign key(movie_id) references Movie (movie_id),roll_id int,constraint rid foreign key (roll_id) references Roles (roll_id))
select * from BolywoodData
Insert into BolywoodData values (2002,1001,1,101)
Insert into BolywoodData values(2003,1002,2,102)
Insert into BolywoodData values(2004,1003,3,103)
Insert into BolywoodData values(2005,1004,4,104)

select * from BolywoodData
select * from Roles
select * from Movie

