GO
CREATE VIEW [ViewByDepartment] AS 
SELECT D.Department, E.Id, T.DateOfTransaction, T.Amount AS [TotalAmount]
FROM [dbo].tblDepartment AS D
LEFT JOIN [dbo].[Employee] AS E
ON D.Department = E.Department
LEFT JOIN [Transaction] AS T
ON E.Id = T.EmployeeNumber
WHERE T.EmployeeNumber  BETWEEN 120 AND 139
--ORDER BY D.Department, T.EmployeeNumber
GO

IF EXISTS (SELECT * FROM sys.views WHERE [Name]= 'ViewByDepartment')
	DROP VIEW [dbo].[ViewByDepartment]
GO

CREATE VIEW [ViewSummary] AS 
SELECT D.Department, T.EmployeeNumber, SUM(T.Amount) AS [TotalAmount]
FROM [dbo].tblDepartment AS D
LEFT JOIN [dbo].[Employee] AS E
ON D.Department = E.Department
LEFT JOIN tblTransaction AS T
ON E.Id = T.EmployeeNumber
GROUP BY D.Department, T.EmployeeNumber
--ORDER BY D.Department, T.EmployeeNumber
GO

SELECT * FROM [ViewSummary]