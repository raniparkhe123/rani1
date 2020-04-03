Create table tblPerson2
(
ID int NOT NULL Primary Key,
Name nvarchar(50) NOT NULL,
Email nvarchar(50) NOT NULL,
GenderID int NULL
)

Insert into tblPerson2(ID,Name,Email)Values(3,'Rich','r@r.com')
Insert into tblPerson2(ID,Name,Email)Values(4,'Rachel','r@a.com')
Insert into tblPerson2(ID,Name,Email)Values(5,'phobe','p@p.com')
Insert into tblPerson2(ID,Name,Email,GenderID)Values(6,'joey','j@j.com',3)
Insert into tblPerson2(ID,Name,Email,GenderID)Values(7,'ana','a@a.com',NULL)



select * from tblPerson2

Alter Table tblPerson2 add constraint tblPerson_GenderId_FK
Foreign Key (GenderId) references tblGender1(ID)

Alter table tblPerson2 
ADD CONSTRAINT DF_tblPerson2_GenderId  
DEFAULT 3 FOR GenderId