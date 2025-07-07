use taskprocedure1;
CREATE PROCEDURE uspGetTotalSales
    @territory VARCHAR(40),
    @sum INT OUTPUT
AS
SELECT @sum = SUM(A.SalesYTD)
FROM SalesPerson A
JOIN SalesTerritory B 
    ON A.TerritoryID = B.TerritoryID
WHERE B.Name = @territory;


DECLARE @sumsales MONEY;

EXEC uspGetTotalSales 'Northwest', @sumsales OUTPUT;

PRINT 'The year-to-date sales figure for this territory is ' 
    + CONVERT(VARCHAR(100), @sumsales);
