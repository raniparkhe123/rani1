create table tblEmp
(
ID int NOT NULL,
Name nchar(10) NOT NULL,
Gender nchar(10) NOT NULL,
DeptId int NOT NULL
)

Insert into tblEmp(ID,Name,Gender,DeptId)Values(1,'Rich','Female',1)
Insert into tblEmp(ID,Name,Gender,DeptId)Values(2,'John','male',2)
Insert into tblEmp(ID,Name,Gender,DeptId)Values(3,'Rob','male',1)
Insert into tblEmp(ID,Name,Gender,DeptId)Values(4,'Sara','Female',3)
Insert into tblEmp(ID,Name,Gender,DeptId)Values(5,'pen','male',2)

select * from tblEmp

select ID,Name from tblEmp

//sp is prefix
CREATE PROCEDURE spGETEMPLOYEE    
AS
BEGIN
select ID,Name from tblEmp
END

//FOR EXCE
spGETEMPLOYEE //1st way 
EXECUTE spGETEMPLOYEE  //2nd way

//proc with 2 parameters
CREATE PROC spGetEmpByGenderAndDept
@Gender nvarchar(20),
@DeptId int
AS
BEGIN
	select Name,Gender,DeptId from tblEmp where Gender = @Gender
	and DeptId = @DeptId
END

