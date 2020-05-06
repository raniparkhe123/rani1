Create table emp
(
Id int NOT NULL,
name nvarchar(20),
Gender nvarchar(20),
Salary int NOT NULL,
Country nvarchar(20)
)

Insert into emp(Id,name,Gender,Salary,Country)values(1,'Mark','Male',5000,'USA')
Insert into emp(Id,name,Gender,Salary,Country)values(2,'John','Male',4500,'India')
Insert into emp(Id,name,Gender,Salary,Country)values(3,'Pam','Female',5500,'USA')
Insert into emp(Id,name,Gender,Salary,Country)values(4,'Sara','Female',4000,'India')
Insert into emp(Id,name,Gender,Salary,Country)values(5,'Todd','Male',3500,'India')
Insert into emp(Id,name,Gender,Salary,Country)values(6,'Mary','Female',5000,'UK')
Insert into emp(Id,name,Gender,Salary,Country)values(7,'Ben','Female',6500,'UK')

select * from emp

/*Find out total salary by country and gender */
select Country,Gender,SUM(Salary) AS TotalSalary
from emp
GROUP BY Country,Gender

/*Along with it total salary jst by country */

UNION ALL

select Country,NULL,SUM(Salary)AS TotalSalary
from emp
GROUP BY Country

UNION ALL

/*Along with it total salary jst by gender*/
select NULL,Gender,SUM(Salary)AS TotalSalary
from emp
GROUP BY Gender 

UNION ALL

/*Grand Total*/
select NULL,NULL,SUM(Salary)AS TotalSalary
from emp


