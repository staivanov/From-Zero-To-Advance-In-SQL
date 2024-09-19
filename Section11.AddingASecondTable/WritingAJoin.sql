SELECT E.[Id], E.[FirstName], E.[LastName], SUM(T.[Amount]) AS [SumOfAmount]
FROM [dbo].[Employee] AS E
JOIN [dbo].[Transaction] AS T
ON E.Id = T.EmployeeNumber
GROUP BY E.[Id], E.[FirstName], E.[LastName]

