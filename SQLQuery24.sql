select * from tblperson2

/*replicate*/
select Name,SUBSTRING(Email,0,1) + REPLICATE('*',2) +
            SUBSTRING(Email,CHARINDEX('@',Email),LEN(Email) - CHARINDEX('@',Email) + 1) as Email
from tblperson2

select * from person2

select (LTRIM(FirstName)) + space(5) + Lastname as FullName
from person2
