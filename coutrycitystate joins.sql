Create table Country(c_id Int Primary Key,C_name Varchar(20)) 
Insert Into Country values (1,'India'),(2,'United State'),(3,'England'),(4,'Austrelia')

Create table  States (S_id int Primary Key,S_name varchar(20),c_id int,constraint fk_cid foreign key (c_id) references Country(c_id))
Insert Into States Values (101,'Maharastra',1),(102,'WashigtonDC',2),(103,'Wales',3),(104,'Victoria',4)
Insert Into States Values(105,'Punjab',1)(106,'Floredia'2),(4,'')
Create table City(City_id int Primary Key,City_name varchar(20),s_id int,constraint fk_sid foreign key (s_id) references States(S_id))
Insert Into City Values(1111,'Pune',101),(1112,'Bellingham',102),(1113,'Scotland',103),(1115,'Willam',104)

select * from Country
select * from States
select * from City

Select s.S_name from city c inner join states s on s.S_id=c.s_id where c.City_name='pune'

Select c.c_id,s.c_id,s.S_id,c.C_name from States s inner join Country c on s.c_id=c.c_id where c.C_name='India'

Select * from Country c inner join States s on s.c_id=c.c_id inner join City ci on ci.s_id=s.S_id where s.S_name='maharastra' and ci.City_name='pune'

