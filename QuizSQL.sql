--1. Academy databazasını yaradın - 2 bala
Create database Academy

Use Academy
--2. Groups(İd,Name) ve Students(İd,Name,Surname,Groupİd) table-ları yaradın(one-to-many), təkrar qrup adı əlavə etmək olmasın - 5 bal
Create Table Groups
(
	Id int identity Primary Key, 
 	Name nvarchar(15) Unique Not Null,
)

Create Table Students
(
Id int, 
	Name nvarchar(15)Not Null,
	SurName nvarchar(20)Not Null,
)

Alter Table Students
Add GroupId int Not Null Foreign Key References Groups(Id)

--3. Students table-na Grade (int) kalonunu əlavə etmək - 3 bal
	Alter table Student 
	Add Grade int


--4. Groups table-na 3 data(P133,P229,P221), Students table-na 4 data əlavə edin(1 tələbə P229 qrupna, 3 tələbə P133   qrupuna aid olsun) - 5 bal
	Insert Into Groups(Id,Name) 
Values
(1,'p133'),
(2,'P229'),
(3,'p233')

	Insert Into Students(Id,Name,GroupID) 
Values
(1,'Huseyn',1),
(2,'Nurlan',2),
(3,'Aqil',2),
(4,'Semed',2)


--5. P133 qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal
	
	select * from Students where GroupId = (Select GroupID = 1)


--6. Her qrupda neçə tələbə olduğunu göstərən siyahı çıxarmaq - 15 bal
	
	select * from Students where GroupID =(Select Name Len)


--7. View yaratmaq - tələbə adını, qrupun adını-qrup kimi , tələbə soyadını, tələbənin balını göstərməli - 20 bal
		Create View StudentInfo
		(	
			
		)
--8. Procedure yazmalı - göndərilən baldan yüksək bal alan tələbələrin siyahısını göstərməlidir - 20 bal

	Create Procedure GradeStudents
		(	
			
		)

--9. Funksiya yazmalı - göndərilən qrup adina uyğun neçə tələbə olduğunu göstərməlidir - 20 bal



