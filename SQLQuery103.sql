select Country,Gender,SUM(Salary)AS TotalSalary
from emp
GrOUP BY CUBE(Country,Gender)

/*Another way w/o cube*/
select Country,Gender,SUM(Salary)AS TotalSalary
from emp
GROUP BY 
	GROUPING SETS
	(
		(Country,Gender),
		(Country),
		(Gender),
		()
	)

select Country,Gender,SUM(Salary)AS TotalSalary
from emp
GROUP BY Country,Gender

UNION ALL

select Country,NULL,SUM(Salary)AS TotalSalary
from emp
GROUP BY Country

UNION ALL

select NULL,Gender,SUM(Salary)AS TotalSalary
from emp
GROUP BY Gender

UNION ALL
 select NULL,NULL,SUM(Salary)AS TotalSalary
from emp








