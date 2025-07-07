ALTER PROCEDURE procedure_name
    @parameter datatype
AS
    SQL query

	ALTER PROCEDURE uspGetTotals
    @territory VARCHAR(40)
AS
BEGIN
    SELECT 
        A.BusinessEntityID,
        B.SalesYTD,
        B.CostYTD,
        B.SalesLastYear
    FROM 
        Sales.SalesPerson A
    INNER JOIN 
        Sales.SalesTerritory B
    ON 
        A.TerritoryID = B.TerritoryID
    WHERE 
        B.Name = @territory;
END;



drop procedure uspGetTotals