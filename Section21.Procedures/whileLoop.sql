IF OBJECT_ID('NameEmployeesWhile', 'P') IS NOT NULL
DROP PROC [NameEmployeesWhile]
GO

CREATE PROC [NameEmployeesWhile](@EmployeeFrom INT, @EmployeeTo INT) AS 
BEGIN
	IF EXISTS (SELECT * 
			   FROM [tblEmployee] 
			   WHERE [EmployeeNumber] BETWEEN @EmployeeFrom AND @EmployeeTo)
	BEGIN
		DECLARE @EmployeeNumber INT = @EmployeeFrom

		WHILE @EmployeeNumber <= @EmployeeTo
			BEGIN
				SELECT E.[EmployeeNumber], E.[EmployeeFirstName], E.[EmployeeLastName]
				FROM [tblEmployee] AS E
				WHERE [EmployeeNumber] = @EmployeeNumber
				SET @EmployeeNumber += 1
			END
	END
END


EXEC [NameEmployeesWhile] 1, 130