/*Grouping sets easy way*/

select Country,Gender,SUM(Salary) AS TotaSalary
from emp
GROUP BY
 GROUPING SETS
 (
	(Country,Gender),
	(Country),
	(Gender),
	()
 )
 ORDER BY GROUPING(Country),GROUPING(Gender),Gender
















