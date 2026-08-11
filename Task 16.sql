Create database task16
use task16

create table students
(Student_ID int primary key,Student_Name varchar(50),Course varchar(30),Marks int)

insert into Students values

(1,'Akhil','Python',85),
(2,'Bhavana','Java',78),   
(3,'Charan','Python',92),
(4,'Divya','SQL',88),   
(5,'Esha','Java',81),
(6,'Farhan','SQL',75),
(7,'Gopi','Python',69),
(8,'Harsha','Java',95),
(9,'Indu','SQL',84),
(10,'Jyothi','Python',90),
(11,'Kiran','Java',72),
(12,'Lavanya','SQL',89),
(13,'Madhu','Python',77),
(14,'Nikhil','Java',86),
(15,'Oviya','SQL',80),
(16,'Prasad','Python',94),
(17,'Qadir','Java',68),
(18,'Rani','SQL',91),
(19,'Suresh','Python',83),
(20,'Teja','Java',79);

select * from students

create function FNTotalMarkss
(@Course varchar(30))
returns int
as begin
declare @Total int;
select @Total = sum(Marks) from Students
where Course = @Course;
return @Total;
end;
go

select dbo.FNTotalMarkss('Python') as TotalMarks


create function FN_AvgMarkss
(@Course varchar(30))
returns int
as
begin
declare @AvgMarks int;
select @AvgMarks = avg(Marks)
from Students
where Course = @Course;
return isnull (@AvgMarks, 0);
end;
go

select dbo.FN_AvgMarkss('Python') AS AverageMarks;

create function Fn_Highmarks
(@course varchar(30))
returns int
as begin
declare @Highmarks int
select @Highmarks = max(marks)
from students
where course = @course
return (@Highmarks)
end
go

select dbo.FN_Highmarks ('Java') as Highmarks

create function FN_GetStudentName
(@StudentID int)
returns varchar(50)
as begin
declare @Name varchar(50);
select @Name = Student_Name
from Students
where Student_ID = @StudentID;
return @Name;
end;
go

select dbo.FN_GetstudentName(6) as student_name


create function FN_Grade
(@StudentID int)
returns varchar(50)
as
begin 
declare @Marks int;
select @Marks = Marks
from Students
where Student_ID = @StudentID;
return
(CASE
WHEN @Marks >= 90 THEN 'A'
WHEN @Marks >= 75 THEN 'B'
WHEN @Marks >= 60 THEN 'C'
ELSE 'D'
END)
END
GO

SELECT dbo.FN_Grade(1) AS Grade;

select * from students

create function FN_getStudentname
(@Student_ID int)
Returns varchar (50)
as begin
declare @Name varchar (50)
select @name= student_name
from students
where student_ID = @student_ID
returns @name
end
go


create table Employees
(EmpID int, Empname varchar(50), DeptID int, salary int)
insert into employees values
(1,'Ram', 101, 30000),
(2, 'Ravi', 102, 40000),
(3, 'Sita', 102, 32000),
(4, 'Mahesh', 103, 43000)

select * from employees;

create function FN_Deptsalary
(@DeptID int)
Returns int 
as begin
Declare @totalsalary int
select @totalsalary = sum(salary) from employees
where deptID = @deptID
return @totalsalary 
end

select dbo.FN_Deptsalary (102) as ttls




