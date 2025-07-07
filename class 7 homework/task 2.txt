CREATE DATABASE taskprocedure1;
use taskprocedure1;

CREATE TABLE SalesPerson (
    BusinessEntityID INT PRIMARY KEY,
    TerritoryID INT,
    SalesYTD FLOAT,
    SalesLastYear FLOAT
);


CREATE TABLE SalesTerritory (
    TerritoryID INT PRIMARY KEY,
    Name VARCHAR(40)
);


INSERT INTO SalesTerritory (TerritoryID, Name) VALUES
(1, 'Northwest'),
(2, 'Southeast');


INSERT INTO SalesPerson (BusinessEntityID, TerritoryID, SalesYTD, SalesLastYear) VALUES
(280, 1, 7887185.7882, 3298694.4938),
(283, 1, 7087186.7882, 3298694.4938),
(284, 1, 7887186.7882, 3298694.4938),
(300, 2, 5000000.1234, 2500000.5678); 


CREATE PROCEDURE uspGetSales
    @territory VARCHAR(40)
AS
SELECT 
    A.BusinessEntityID,
    A.SalesYTD,
    A.SalesLastYear
FROM 
    SalesPerson A
JOIN 
    SalesTerritory B ON A.TerritoryID = B.TerritoryID
WHERE 
    B.Name = @territory;

	EXEC uspGetSales 'Northwest';
