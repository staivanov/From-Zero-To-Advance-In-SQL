SELECT *  FROM (SELECT E.[Id]  AS [Id], E.[FirstName], E.[LastName], 
		T.[EmployeeNumber] AS [TNumber], 
		SUM(T.Amount) AS [TotalAmount]
FROM [dbo].[Employee] AS E
	    LEFT JOIN [Transaction] AS T
ON   E.[Id] = T.[EmployeeNumber]
GROUP BY E.[Id], T.[EmployeeNumber], E.[FirstName], E.[LastName]) AS [NewTable]
ORDER BY [Id], [FirstName], [LastName]