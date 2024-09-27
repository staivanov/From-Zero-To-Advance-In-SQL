IF OBJECT_ID('NameEmployeesWhile', 'P') IS NOT NULL
DROP PROC [NameEmployeesWithNumberOfRows]
GO

CREATE PROC [NameEmployeesWithNumberOfRows](@EmployeeFrom INT, @EmployeeTo INT, @NumberOfRows INT OUTPUT) AS 
BEGIN
	IF EXISTS (SELECT * 
			   FROM [tblEmployee] 
			   WHERE [EmployeeNumber] BETWEEN @EmployeeFrom AND @EmployeeTo)
	BEGIN
			BEGIN
				SELECT E.[EmployeeNumber], E.[EmployeeFirstName], E.[EmployeeLastName]
				FROM [tblEmployee] AS E
				WHERE [EmployeeNumber] BETWEEN @EmployeeFrom AND @EmployeeTo
				SET @NumberOfRows = @@ROWCOUNT
			END
	END
END
GO

--EXEC [NameEmployeesWithNumberOfRows] 4, 5, @NumberOfRows OUTPUT
DECLARE @NumberOfRows INT 
EXECUTE [NameEmployeesWithNumberOfRows] 223, 227, @NumberOfRows OUTPUT
SELECT @NumberOfRows AS [MyRowCount]