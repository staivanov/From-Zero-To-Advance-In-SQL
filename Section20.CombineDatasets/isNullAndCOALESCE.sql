SELECT * FROM [tblEmployee]
WHERE [EmployeeMiddleName] IS NULL

DECLARE @myOption AS VARCHAR(10) = 'Option B'
SELECT ISNULL(@myOption, 'No options') AS [MyOptions]
GO

DECLARE @myFirstOption AS VARCHAR(10) = 'Option A'
DECLARE @mySecondOption AS VARCHAR(10) = 'Option B'

--Return: Msg 137, Level 15, State 2, Line 11
--Must declare the scalar variable "@myFirstOption".
SELECT COALESCE(@myFirstOption, @mySecondOption, 'No option') AS [MyOptions]
GO

--Return: Msg 245, Level 16, State 1, Line 17
--Conversion failed when converting the varchar value 'ABC' to data type int.
SELECT ISNULL('ABC', 1) AS [MyAnswer]
SELECT COALESCE('ABC', 1) AS [MyOtherAnswer]
GO

