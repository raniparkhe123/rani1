select ASCII('a')
select CHAR(65)

Declare @start int
set @start = 65
while(@start <=90)
Begin
	Print CHAR(@start)
	set @start = @start + 1
End

Declare @start int
set @start = 97
while(@start <=122)
Begin
	Print CHAR(@start)
	set @start = @start + 1
End

select * from person2

/*to remote leftside and right side white spaces*/
/*making names in uppercase and lowercase */
select UPPER(LTRIM(FirstName)) as FirstName,LTRIM(MiddletName) as MiddleName,LOWER(LastName),
RTRIM(LTRIM(FirstName)) + ' ' + MiddletName + ' ' + LastName as FullName
from person2


/*rev */
select REVERSE(UPPER(LTRIM(FirstName))) as FirstName,LTRIM(MiddletName) as MiddleName,LOWER(LastName),
RTRIM(LTRIM(FirstName)) + ' ' + MiddletName + ' ' + LastName as FullName
from person2

/*Total no. of characters in string*/
/*It counts white soaces too*/
select FirstName,LEN(FirstName) as [Total Characters] from person2
