create proc spGetNameById1
@ID int,
@Name nvarchar(20) output
AS
BEGIN
	select @Name = Name from tblEmp where @ID = ID
END

Declare @EmpName nvarchar(20)
Execute spGetNameById1 1,@EmpName out
print 'Name = ' + @EmpName


//using return
create proc spGetNameById2
@ID int
AS
BEGIN
	return(select Name from tblEmp where ID = @ID)
END

DECLARE @Name nvarchar(20)
EXECUTE @Name = spGetNameById2 1
print 'Name of emp = ' + @Name
