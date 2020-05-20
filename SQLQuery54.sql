create table tblProductSales
(
	SalesAgent nvarchar(20),
	SalesCountry nvarchar(20),
	SalesAmount int
)

Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('Tom','UK',200);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('John','US',180);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('John','UK',260);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('David','India',450);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('Tom','India',350);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('David','US',200);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('Tom','US',130);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('John','India',540);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('John','UK',120);
Insert into tblProductSales(SalesAgent,SalesCountry,SalesAmount)values('David','UK',220);

select * from tblProductSales

--Group By Query
select SalesCountry,SalesAgent,SUM(SalesAmount) AS Total
from tblProductSales
GROUP BY SalesCountry,SalesAgent
ORDER BY SalesCountry,SalesAgent


--using pivot operator
--provides cross tab format
select SalesAgent,India,US,UK 
from
(
	select SalesAgent, SalesCountry,SalesAmount
	from tblProductSales
) as SourceTable
pivot 
(
SUM(SalesAmount) for SalesCountry in ([India],[US],[UK])
)
AS pivotTable





















