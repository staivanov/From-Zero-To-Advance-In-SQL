SELECT * FROM [Employee]
WHERE [DateOfBirth] BETWEEN '19760101' AND '19861231'

SELECT YEAR(DateOfBirth) AS [DateOfBirth], COUNT(*) AS [NumberBorn]
FROM [dbo].[Employee]
GROUP BY YEAR(DateOfBirth)

SELECT * FROM [dbo].[Employee]
WHERE YEAR(DateOfBirth) = 1985


