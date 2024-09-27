IF OBJECT_ID('NameEmployees', 'P') IS NOT NULL
DROP PROC [NameEmployeesIf]
GO

CREATE PROC NameEmployeesIf(@EmployeeNumber INT) AS
BEGIN
 IF EXISTS (SELECT * FROM [tblEmployee] WHERE EmployeeNumber = @EmployeeNumber)
 BEGIN
	IF @EmployeeNumber < 300
		BEGIN 
			SELECT E.[EmployeeNumber], E.[EmployeeFirstName], E.[EmployeeLastName]
			FROM [tblEmployee] AS E
			WHERE [EmployeeNumber] = @EmployeeNumber
		END
	ELSE
		BEGIN
		 SELECT E.[EmployeeNumber], E.[EmployeeFirstName], E.[EmployeeLastName], E.[Department]
			FROM [tblEmployee] AS E
			WHERE [EmployeeNumber] = @EmployeeNumber
		 SELECT * FROM [tblTransaction] WHERE [EmployeeNumber] = @EmployeeNumber
		END
  END
END

-- 
EXEC[NameEmployeesIf]  223
EXEC [NameEmployeesIf] 323