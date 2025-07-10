use aptech
select * from std
alter table std add h_pay int ,y_pay int
go
create trigger salary_info
ON std 
after update 
as 
begin
update std set y_pay = h_pay*1920;
end
update std set h_pay = 500 where id = 6;

/* create trigger _insert
ON std 
before insert 
as 
begin
insert;
end
*/

/*
CREATE TABLE Stock (
    id INT PRIMARY KEY,
    name varchar(50),
	qty int 
);
*/
CREATE TABLE Stocks (
    id INT PRIMARY KEY,
    name varchar(50),
	qty int 
);


INSERT INTO Stocks (id,name,qty) VALUES
(1,'pen',50 ),
(2,'watch',2 ),
(3,'bottle', 10);

select * from Stocks

CREATE TABLE Sales (
    id INT PRIMARY KEY identity (1,1),
	p_id int,
    p_qty int
);
drop table Sales






go
create procedure insert_product @p_id int,@p_qty int
as
begin 
if(@p_qty>0)
begin
if exists (select id from Stocks where id = @p_id)
begin
 insert into Sales (p_id, p_qty) values (@p_id , @p_qty);
	update Stocks set qty = qty - @p_qty where id = @p_id;
	select * from Sales;
end;
else
select 'user not found';
end
else 
select 'enter positivevalues';
end

EXEC insert_product 2 ,10
select * from Stocks
