select * from tblPerson2


/*Returns left 3 characters*/
select LEFT('ABCDEF',3)

/*Returns right 3 characters*/
select RIGHT('ABCDEF',3)

/*Returns index of specified character*/
select CHARINDEX('@','abc@gmail.com')

select SUBSTRING('abc@gmail.com',4,12)

/*To avoid hardcoding*/
select SUBSTRING('abc@gmail.com',CHARINDEX('@','abc@gmail.com') + 1,
LEN('abc@gmail.com') - CHARINDEX('@','abc@gmail.com'))

/*using table*/
select SUBSTRING(Email,CHARINDEX('@',Email) + 1,
LEN(Email) - CHARINDEX('@',Email)) as EmailDomain,
COUNT(Email) as Total
from tblPerson2
Group By SUBSTRING(Email,CHARINDEX('@',Email) + 1,
LEN(Email) - CHARINDEX('@',Email)) 
