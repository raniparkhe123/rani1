select * from tblEmp

CREATE PROC spGetEmpCountByGender
@Gender nvarchar(10),
@EmpCount int output
AS 
BEGIN
	select @EmpCount = COUNT(ID)from tblEmp where Gender = @Gender
END

//counts the total emp by gender
Declare @EmpTotal int
Execute spGetEmpCountByGender 'Female',@EmpTotal output
Print @EmpTotal

