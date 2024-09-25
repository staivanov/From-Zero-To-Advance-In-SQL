--CREATE PROC [NameEmployees] AS 
--BEGIN 
--	SELECT Id ,FirstName, LastName
--    FROM [dbo].[Employee]
--END
--GO

---- Executing newly created view.
--EXEC [NameEmployees]
--GO

---- Delete this proc.
--DROP PROC [NameEmployees]
--GO


IF OBJECT_ID('NameEmployees', 'p') IS NOT NULL
DROP PROC [NameEmployees]
GO

CREATE PROC NameEmployees(@EmployeeNumber INT) AS 
BEGIN 
	IF EXISTS (SELECT * FROM [tblEmployee] WHERE EmployeeNumber = @EmployeeNumber)
		SELECT EmployeeNumber, EmployeeFirstName, EmployeeLastName
		FROM [tblEmployee]
		WHERE EmployeeNumber = @EmployeeNumber
END
GO


EXECUTE [NameEmployees] 4