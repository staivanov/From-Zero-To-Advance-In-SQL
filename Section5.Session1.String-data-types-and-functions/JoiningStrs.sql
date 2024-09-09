DECLARE @firstName AS NVARCHAR(30)
DECLARE @middleName AS NVARCHAR(30)
DECLARE @lastName AS NVARCHAR(30)

SET @firstName = 'Jax'
SET @middleName = 'Bill'
SET @lastName = 'Sparrow'

SELECT @firstName + iif(@middleName is null, ' ', ' ' + @middleName) + ' ' + @lastName
SELECT CONCAT(@firstName, ' ', + @middleName, ' ', @lastName) AS [FullName]