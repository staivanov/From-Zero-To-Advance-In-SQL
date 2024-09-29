SELECT MIN(E.[EmployeeNumber]) AS [MinNumber], MAX(E.EmployeeNumber) AS [MaxNumber]
FROM [tblEmployee] AS E

SELECT * 
FROM [tblTransaction] AS T
WHERE T.[EmployeeNumber] NOT IN
	(SELECT [EmployeeNumber] FROM [tblEmployee] WHERE EmployeeLastName LIKE 'Y%')
ORDER BY [EmployeeNumber]