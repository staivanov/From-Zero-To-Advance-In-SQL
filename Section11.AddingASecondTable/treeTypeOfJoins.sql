SELECT E.[Id], E.[FirstName], E.[LastName], SUM(T.[Amount]) AS [SumOfAmount]
FROM [dbo].[Employee] AS E
RIGHT JOIN [dbo].[Transaction] AS T
ON E.Id = T.EmployeeNumber
GROUP BY E.[Id], E.[FirstName], E.[LastName]

SELECT E.[Id], E.[FirstName], E.[LastName], SUM(T.[Amount]) AS [SumOfAmount]
FROM [dbo].[Employee] AS E
LEFT JOIN [dbo].[Transaction] AS T
ON E.Id = T.EmployeeNumber
GROUP BY E.[Id], E.[FirstName], E.[LastName]

SELECT E.[Id], E.[FirstName], E.[LastName], SUM(T.[Amount]) AS [SumOfAmount]
FROM [dbo].[Employee] AS E
INNER JOIN [dbo].[Transaction] AS T
ON E.Id = T.EmployeeNumber
GROUP BY E.[Id], E.[FirstName], E.[LastName]


