select D.DeptName,E.Name,E.Gender,E.Salary
from dept2 D
CROSS APPLY fn_GetEmpByDeptId(D.Id) E
--on D.Id = E.DepartmentId

select D.DeptName,E.Name,E.Gender,E.Salary
from dept2 D
Left Join emp2 E
on D.Id = E.DepartmentId

create function fn_GetEmpByDeptId(@DepartmentId int)
returns table
as 
Return
(
	select * from emp2
	where DepartmentId = @DepartmentId
)

select * from fn_GetEmpByDeptId(1)


 