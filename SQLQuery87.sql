create table except1
(
	Id int,
	Name nvarchar(20),
	Gender nvarchar(20)
)

Insert into except1(Id,Name,Gender)values(1,'Mark','Male');
Insert into except1(Id,Name,Gender)values(2,'Mary','Female');
Insert into except1(Id,Name,Gender)values(3,'steve','Male');
Insert into except1(Id,Name,Gender)values(4,'John','Male');
Insert into except1(Id,Name,Gender)values(5,'Sara','Female');

select * from except1;

create table except2
(
	Id int,
	Name nvarchar(20),
	Gender nvarchar(20)
)
Insert into except2(Id,Name,Gender)values(4,'John','Male');
Insert into except2(Id,Name,Gender)values(5,'Sara','Female');
Insert into except2(Id,Name,Gender)values(6,'Pam','Female');
Insert into except2(Id,Name,Gender)values(7,'Rebeka','Female');
Insert into except2(Id,Name,Gender)values(8,'Jorden','Male');

select * from except2;

select Id,Name,Gender from except1
except
select Id,Name,Gender from except2

select Id,Name,Gender from except2
except
select Id,Name,Gender from except1