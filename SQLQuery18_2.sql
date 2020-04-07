//proc with 2 parameters
CREATE PROC spGetEmpByGenderAndDept
@Gender nvarchar(20),
@DeptId int
AS
BEGIN
	select Name,Gender,DeptId from tblEmp where Gender = @Gender
	and DeptId = @DeptId
END
spGetEmpByGenderAndDept 'Female',1

//for chaning
Alter PROCEDURE spGETEMPLOYEE    
AS
BEGIN
	select ID,Name from tblEmp order by Name
END


