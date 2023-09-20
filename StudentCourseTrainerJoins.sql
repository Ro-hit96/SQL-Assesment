Create Table Course(Course_id int Primary Key, Course_name Varchar(20),Duration varchar(20),trainers_id int,
constraint TrainerIdFK foreign key (trainers_id) references Trainers (trainers_id),total_fees int)


Create table Student(Stud_id int Primary Key,sName varchar(20),degree varchar(20),BirthDate date,Course_id int constraint CourseIdFK 
foreign key (Course_id) references Course (Course_id),)



Create Table Trainers(trainers_id int Primary Key, trainer_name varchar(20),Join_date date,email_ids varchar(40),experiens int)


select name from sys.databases
select name from sys.tables
