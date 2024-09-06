DECLARE @myVar AS NUMERIC (7,2) = 3

SELECT POWER(@myVar, 2) AS [PoweredNumber]
SELECT SQUARE(@myVar) AS [SquareNumber]

GO 

DECLARE @mySecondVar AS NUMERIC (7,2) = 3.532

SELECT FLOOR(@mySecondVar) AS [NumberOnFloor]
SELECT CEILING(@mySecondVar) AS [NumberOnCeiling]
SELECT ROUND(@mySecondVar,1) AS[NumberIsRounder]
GO

SELECT PI() AS [MyPI]
SELECT EXP (1) AS [E]