use aptech
CREATE TABLE course (
    id INT PRIMARY KEY identity(1,1),
    name VARCHAR(20)
);

insert into course values('automata'),('CA'),('ML'),('DL');

select * from course;

alter table std drop column c_id;

alter table std add c_id int, constraint f_k foreign key (c_id) references course(id);

alter table std drop column c_id;

update std set c_id = 3 where std.id IN(2,5);

SELECT 
    std.id AS student_id,
    std.name AS student_name,
    std.city,
    faculty.name AS faculty_name,
    faculty.salary,
    course.name AS course_name
FROM 
    std
    INNER JOIN faculty ON std.f_id = faculty.id
    INNER JOIN course ON std.c_id = course.id;





	SELECT 
    std.id AS student_id,
    std.name AS student_name,
    std.city,
    faculty.name AS faculty_name,
    faculty.salary,
    course.name AS course_name
FROM 
    std
    LEFT JOIN 
        faculty ON std.f_id = faculty.id
    LEFT JOIN 
        course ON std.c_id = course.id;


	SELECT 
    std.id AS student_id,
    std.name AS student_name,
    std.city,
    faculty.name AS faculty_name,
    faculty.salary,
    course.name AS course_name
FROM 
    std
    RIGHT JOIN 
        faculty ON std.f_id = faculty.id
    RIGHT JOIN 
        course ON std.c_id = course.id;