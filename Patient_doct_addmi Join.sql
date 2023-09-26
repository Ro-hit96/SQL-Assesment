Create Table Provincee_names(Province_id char(2),Province_name Varchar(20))
Insert Into Provincee_names values('RJ','Rajastan'),('Mh','Maharashtra'),('PN','Panjab'),('UP','UttarPradesh')

Create Table Doctorr(Doctor_id int primary Key,First_name Varchar(30),Last_Name varchar(30),Specialty Varchar(25))
Insert Into Doctorr Values(1,'Dr.Sandesh','Survse','Cardilogist'),(2,'Dr.Puja','Dolai','Pediatrician'),(3,'Dr.Saurabh','Bansode','Orthopedic Surgeon')

Create Table Patientt(Patient_id int Primary Key,First_name Varchar(30),Last_Name Varchar(30),Gender Varchar(1),Birth_Date Date,
city varchar(30),Province_id char(2),allergies varchar(80),Height decimal(3,0),Weights decimal(4,0))

Insert Into Patientt(Patient_id,First_name,Last_Name,Gender,Birth_Date,city,Province_id,allergies,Height,Weights)
Values(101,'Rupesh','Veer','m','2023-03-08','Akurdi','mh','penicillin',5.8,87),
(102,'Chentan','Shinde','M','1998-03-23','Latur','PN',null,5.3,90),
(103,'Snehal','Barve','F','1997-03-07','Beed','UP','Gluten',4.5,45),
(104,'Prajkta','Zende','F','1996-04-13','Saswad','RJ','Lactose',4,56)


Create Table Addmissionn(addminsion_id int Primary Key,Patient_id int,constraint PatientidFKk foreign key (Patient_id) references Patientt(Patient_id),
Addmissoin_Date date,Discharge_Date Date,Diagnosis varchar(50),Attending_doct_id int,)
Insert Into Addmissionn (addminsion_id,Patient_id,Addmissoin_Date,Discharge_Date,Diagnosis,Attending_doct_id) Values
(1111,101,'2023-9-13','2023-09-18','Heart Disease',1),(1112,102,'2023-08-02','2023-08-10','brain scanning',2),
(1113,103,'2023-07-15','2023-08-23','lung ventilation',3),(1114,104,'2023-06-23','2023-07-03','back pain',3)
----------------------------------------------------------------------------------------------------------------------------------------------
alter table Addmissionn drop column Attending_doct_id 
alter table Addmissionn add  Attending_doct_id int
alter table Addmissionn add foreign key (Attending_doct_id) references Doctorr(Doctor_id)
-------------------------------------------------------------------------------------------------------------------------------------------------
Select * from Addmissionn
Select * from Patientt
Select * from Doctorr
Select * from Provincee_names
--------------------------------------------------------------------------------------------------------------------------------------------------
--Show the first name, last name and gender of patients who’s gender is ‘M’
Select First_name,Last_Name,Gender from Patientt where Gender='M'
---------------------------------------------------------------------------------------------------------------------------------------------------
--2.	Show the first name & last name of patients who does not have any allergies
Select First_name,Last_Name,allergies  from Patientt where allergies is null
------------------------------------------------------------------------------------------------------------------------------------------------------------
--3.	Show the patients details that start with letter ‘C’
Select * from Patientt where First_name like 'C%'
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--4.	Show the patients details that height range 4 to 6
Select * from Patientt where Height between 4 and 5
------------------------------------------------------------------------------------------------------------------------------------------------------------------
--5.	Update the patient table for the allergies column. Replace ‘NKA’ where allergies is null
update  patientt set allergies='NKS' where allergies is null
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
--6.Show how many patients have birth year is 1998
Select count(Patient_id) as 'count' from Patientt where year(Birth_Date)='1998' 
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--7.	Show the patients details who have greatest height
select * from Patientt where height=(select max(Height) from Patientt)
------------------------------------------------------------------------------------------------------------------------------------------------------
--8.	Show the total amount of male patients and the total amount of female patients in the patients table.
select gender,COUNT(*) as counts from Patientt group by Gender
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--9.	Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'.
--Show results ordered ascending by allergies then by first_name then by last_name
Select First_name,Last_Name from Patientt where allergies in('nks','gluten')order by First_name asc,Last_Name asc
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--10.	Show first_name, last_name, and the total number of admissions attended for each doctor.
--Every admission has been attended by a doctor.
Select concat(d.First_name,d.Last_Name) as Doctor_Name,count(a.Patient_id) as totalAddmisson from Addmissionn a  join Doctorr d on a.Attending_doct_id=d.Doctor_id group by d.Doctor_id,d.First_name,d.Last_Name  
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--11.	For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
Select CONCAT( p.First_name,' ' ,p.Last_Name)as Patient_Name,a.Diagnosis as admission_dignosis ,concat(d.First_name,' ',d.Last_Name)as 
Doctor_Name from Addmissionn a join Patientt p on a.Patient_id=p.Patient_id join Doctorr d on d.Doctor_id=a.Attending_doct_id