IF OBJECT_ID('NewAverageBalance', 'P') IS NOT NULL
DROP PROC [NewAverageBalance]
GO

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
		SELECT ERROR_MESSAGE() AS [ErrorLine],
			   ERROR_NUMBER() AS [ErrorNumber], ERROR_PROCEDURE() AS [ErrorProcedure],
			   ERROR_SEVERITY() AS [ErrorSeverity], ERROR_STATE() AS [ErrorState]
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