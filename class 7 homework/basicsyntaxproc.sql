Stored Procedure Banane ka Syntax (SQL Server mein):

CREATE PROCEDURE ProcedureName
AS
BEGIN
    -- SQL statements yahan likho
END



Example:

CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT * FROM Students;
END

Procedure Ko Call Kaise Karte Hain?

EXEC ProcedureName;

Example:

EXEC GetAllStudents;

 Parameter Wali Procedure:

CREATE PROCEDURE GetStudentByID
    @StudentID INT
AS
BEGIN
    SELECT * FROM Students WHERE ID = @StudentID;
END

Call karne ka tarika:


EXEC GetStudentByID @StudentID = 5;

Procedure Update Karna (ALTER):
ALTER PROCEDURE ProcedureName
AS
BEGIN
    -- Updated SQL statements
END


 Procedure Delete Karna:

DROP PROCEDURE ProcedureName;