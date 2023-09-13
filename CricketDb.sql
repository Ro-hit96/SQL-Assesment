Create Table Countries(Cout_ID int primary key, C_Name varchar(20))
Insert Into Countries Values(1,'India')
Insert Into Countries Values(2,'Austrelia')
Insert Into Countries Values(3,'Pakistan')
Insert Into Countries Values(4,'England')

Create Table Format(F_id int primary key,F_Name varchar(20)not null)
Insert Into Format Values(101,'T20')
Insert Into Format Values(102,'ODI')
Insert Into Format values(103,'Test')
drop table Countries

Create Table Batsman(P_id int primary key,p_name varchar(20),age int,Cout_ID int,constraint coid foreign key (Cout_ID) references Countries(Cout_ID),T_run int,T50_s int,T100_s int,P_Grade varchar(20))
Insert into Batsman values(121,'Virat',37,1,9800,49,70,'A+')
Insert Into Batsman values(122,'Steav Smith',40,2,8000,40,30,'A+')
Insert Into Batsman values(123,'Shoeb Mailk',23,3,6000,20,60,'B+')
Insert Into Batsman Values(124,'Peterson',44,4,8044,33,13,'A+')
select * from Batsman

Create Table B_F_Mapping (BF_id int primary key, P_id int,Constraint pkid foreign key (P_id) references Batsman(P_id),F_id int,constraint fkid foreign key (F_id) references Format(F_id))
Insert into B_F_Mapping values(1111,121,101)
Insert into B_F_Mapping values(1121,122,102)
insert into B_F_Mapping values(1131,123,103)
insert into B_F_Mapping values(1141,124,102)

select * from Batsman
select * from Countries
select * from Format
select * from B_F_Mapping


