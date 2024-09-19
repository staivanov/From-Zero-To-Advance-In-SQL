SELECT Department
FROM
(SELECT Department, COUNT(*) AS [NumberOfDepartments]
FROM [dbo].[Employee]
GROUP BY Department) AS [NewTable]

SELECT DISTINCT [Department], [Employee].[GovermentId]
FROM [dbo].[Employee]

