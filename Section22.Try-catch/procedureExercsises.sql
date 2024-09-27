SELECT *
FROM [tblTransaction]
WHERE [EmployeeNumber] BETWEEN 3 AND 11
ORDER BY [EmployeeNumber]
GO

SELECT SUM(Amount) AS [TotalAmountFromToEmployees]
FROM [tblTransaction]
WHERE [EmployeeNumber] BETWEEN 3 AND 11
GO

CREATE PROC [AverageBalance](@EmployeeNumberFrom INT, @EmployeeNumberTo INT, @AverageBalance INT OUTPUT) AS 
BEGIN
	SELECT SUM(Amount) FROM [tblTransaction] AS T
	WHERE EmployeeNumber BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo
	SELECT COUNT(DISTINCT EmployeeNumber) FROM [tblTransaction] AS T
	WHERE EmployeeNumber BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo
END
GO 

DECLARE @AvgBalance INT, @ReturnStatus INT
EXEC @ReturnStatus = AverageBalance 4, 5, @AvgBalance OUTPUT
SELECT @AvgBalance AS MyRowCount, @ReturnStatus AS [ReturnStatus]
GO