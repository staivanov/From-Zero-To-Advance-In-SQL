CREATE PROC NewAverageBalance(@EmployeeNumberFrom INT, @EmployeeNumberTo INT, @AverageBalance INT OUTPUT) AS
BEGIN
	DECLARE @TotalAmount MONEY
	DECLARE @NumberOfEmployee INT
	BEGIN TRY 
	  SELECT @TotalAmount = SUM(Amount) FROM [tblTransaction]
	  WHERE [EmployeeNumber] BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo
	  SELECT @NumberOfEmployee = COUNT(DISTINCT [EmployeeNumber]) FROM [tblEmployee]
	  WHERE [EmployeeNumber] BETWEEN @EmployeeNumberFrom AND @EmployeeNumberTo
	  SET @AverageBalance = @TotalAmount / @NumberOfEmployee
	  RETURN 0
	END TRY
	BEGIN CATCH
		SET @AverageBalance = 0
		RETURN 1
	END CATCH
END
GO

DECLARE @AvgBalance INT, @ReturnStatus INT
EXEC @ReturnStatus = NewAverageBalance 4, 5, @AvgBalance OUTPUT
SELECT @AvgBalance AS [Average_Balance], @ReturnStatus AS [Return_Status]
GO

DECLARE @AvgBalance INT, @ReturnStatus INT
EXEC @ReturnStatus = NewAverageBalance 223, 227, @AvgBalance OUTPUT
SELECT @AvgBalance AS [Average_Balance], @ReturnStatus AS [Return_Status]
GO