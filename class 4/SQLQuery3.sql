use aptech
create table faculty(
id int primary key identity(1,1),
name varchar(200),
salary int 
)
insert into faculty values('Talib',95000),('Aqsa',100000),('Talib',75000)
select * from faculty 
create table std(
id int primary key identity(1,1),
name varchar(200),
salary int,
department varchar(200),
city varchar(20),
f_id int ,
foreign key(f_id) references faculty(id)
)
select * from std
insert into std (name,salary,department,city)values
('Hafsa',40000,'SE','Lahore'),
('Amna',40000,'CS','Quetta')

SELECT 
    std.id, 
    std.name AS studentName, 
    std.salary, 
    std.department, 
    faculty.name AS facultyName 
FROM 
    std
INNER JOIN 
    faculty 
ON 
    std.f_id = faculty.id;



