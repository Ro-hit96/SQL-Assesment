
Create Table Author(Author_id int Primary Key,Author_Name Varchar(20),Ph_no int ,Email Varchar(20),Address Varchar(20),City Varchar(20))

Create Table Book(Bookid int Primary Key,Book_Name varchar(20),author_id int,constraint fk FOREIGN KEY (Author_id) references Author(Author_id),price int)

Select * from Author
drop table Book

Create Table Award(Award_id int Primary Key, award_type_id int ,author_id int,constraint Fok FOREIGN KEY (Author_id)references Author (Author_id),Bookid int,constraint bk foreign key(Bookid)references Book(Bookid),Year int)

Create Table AwardMaster(Award_type_id int Primary Key,Award_name varchar(20),Award_type int)
Select * from AwardMaster

--------------------------------------------------------------------------------------------------------------------------------------------------


