Create proc spGetTotalCount2
as 
Begin
	return (select COUNT(Id) from tblEmp)
END

Declare @TotalEmp int
Execute @TotalEmp = spGetTotalCount2
print @TotalEmp 