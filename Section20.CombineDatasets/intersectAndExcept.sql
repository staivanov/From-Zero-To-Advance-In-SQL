SELECT *, ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 3 AS [ShouldBeDeleted]
FROM [tblTransaction]