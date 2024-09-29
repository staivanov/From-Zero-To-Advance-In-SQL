SELECT * 
FROM [tblTransaction] AS T
WHERE [EmployeeNumber] IN
	(SELECT EmployeeNumber FROM [tblEmployee] WHERE [EmployeeLastName] NOT LIKE 'Y%')
ORDER BY [EmployeeNumber]
	-- INNER JOIN


SELECT * 
FROM [tblTransaction] AS T
WHERE [EmployeeNumber] NOT IN
	(SELECT EmployeeNumber FROM [tblEmployee] WHERE [EmployeeLastName] NOT LIKE 'Y%')
ORDER BY [EmployeeNumber]
	 -- LEFT JOIN


