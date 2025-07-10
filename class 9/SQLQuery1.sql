use aptech
select * from std
go
ALTER procedure uptdsalary @studentId int ,@incAmount int
as 
begin
if exists (select id from std where id = @studentId)
begin 
if(@incAmount>0)
begin
 update std set salary = salary + @incAmount where id =@studentId
 select * from std;
 
end
else 
select 'enter positivevalues';
end
else
select 'user not found';
end

EXEC uptdsalary 50,5000;

create procedure deletstudent @studentId int
as
begin 
delete std where id = @studentId

end

EXEC deletstudent  1;


use aptech
select * from std
go
ALTER procedure uptdsalary @studentId int ,@incAmount int
as 
begin
if exists (select id from std where id = @studentId)
begin 
if(@incAmount>0)
begin
 update std set salary = salary + @incAmount where id =@studentId
 select * from std;
 
end
else 
select 'enter positivevalues';
end
else
select 'user not found';
end

EXEC uptdsalary 50,5000;


create procedure deletstudent @studentId int
as
begin 
delete std where id = @studentId

end

EXEC deletstudent  1;


