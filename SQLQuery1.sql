Create table tblGender1
(
Id int NOT NULL Primary Key,
gender nvarchar(50) NOT NULL
)

Insert into tblGender1(ID,gender)Values(1,'Male')
Insert into tblGender1(ID,gender)Values(2,'Female')
Insert into tblGender1(ID,gender)Values(3,'Unknown')

select * from tblGender1