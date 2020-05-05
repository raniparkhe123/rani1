select Country,Gender,SUM(Salary) AS TotalSalary
from emp
GROUP BY ROLLUP(Country,Gender)