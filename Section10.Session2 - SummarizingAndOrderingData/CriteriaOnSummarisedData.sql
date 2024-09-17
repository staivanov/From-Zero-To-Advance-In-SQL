SELECT LEFT(LastName,1) AS [Initial], COUNT(*) AS [CountOfInitial]
FROM [dbo].[Employee]
GROUP BY LEFT(LastName,1)
ORDER BY COUNT(*) DESC 


SELECT TOP(1)LEFT(LastName,1) AS [Initial], COUNT(*) AS [CountOfInitial]
FROM [dbo].[Employee]
GROUP BY LEFT(LastName,1)
ORDER BY COUNT(*) DESC 
