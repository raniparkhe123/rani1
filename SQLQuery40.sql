create view vwEmpDataExceptSal
AS
select ID,Name,Gender,DeptID from tblEm

select * from vwEmpDataExceptSal

Update vwEmpDataExceptSal
set Name = 'Mikey' where ID = 2