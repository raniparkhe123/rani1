
Insert into tblPerson1(ID,Name,Email)Values(3,'Rich','r@r.com')
Insert into tblPerson1(ID,Name,Email)Values(4,'Rachel','r@a.com')
Insert into tblPerson1(ID,Name,Email)Values(5,'phobe','p@p.com')

Insert into tblPerson1(ID,Name,Email,GenderId,Age)Values(3,'Rich','r@r.com',1,-95);
Insert into tblPerson1(ID,Name,Email,GenderId,Age)Values(3,'Rich','r@r.com',1,30);
Insert into tblPerson1(ID,Name,Email,GenderId,Age)Values(3,'sara','s@s.com',1,NULL);


Alter table tblPerson1 
Add Constraint CK_tblPerson1_Age CHECK(Age > 0 AND Age < 150)


Delete from tblPerson1 where Age = -95;

select * from tblPerson1

