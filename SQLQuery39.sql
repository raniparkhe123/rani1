create table tblEm
(
ID int NOT NULL,
Name nvarchar(20)NOT NULL,
Salary int NOT NULL,
Gender nvarchar(20) NOT NULL,
DeptID int NOT NULL
)

Insert into tblEm(ID,Name,Salary,Gender,DeptID)Values(1,'John',5000,'Male',3);
Insert into tblEm(ID,Name,Salary,Gender,DeptID)Values(2,'Mike',3400,'Male',2);
Insert into tblEm(ID,Name,Salary,Gender,DeptID)Values(3,'Pam',6000,'Female',1);
Insert into tblEm(ID,Name,Salary,Gender,DeptID)Values(4,'Todd',4800,'Male',4);
Insert into tblEm(ID,Name,Salary,Gender,DeptID)Values(5,'Sara',3200,'Female',1);
Insert into tblEm(ID,Name,Salary,Gender,DeptID)Values(6,'Ben',4800,'Male',3);

create table tblDept
(
DepartID int NOT NULL,
DeptName nvarchar(20)NOT NULL,
)

Insert into tblDept(DepartID,DeptName)Values(1,'IT');
Insert into tblDept(DepartID,DeptName)Values(2,'Payroll');
Insert into tblDept(DepartID,DeptName)Values(3,'HR');
Insert into tblDept(DepartID,DeptName)Values(4,'Admin');

select * from tblEm
select * from tblDept

//join
select ID,Name,Salary,Gender,DeptID 
from tblEm
join tblDept 
on tblEm.DeptID = tblDept.DepartID

//view
create view vwEmpByDept
AS
select ID,Name,Salary,Gender,DeptID 
from tblEm
join tblDept 
on tblEm.DeptID = tblDept.DepartID

select * from vwEmpByDept

create view vwITEmpByDept
AS
select ID,Name,Salary,Gender,DeptID 
from tblEm
join tblDept 
on tblEm.DeptID = tblDept.DepartID











