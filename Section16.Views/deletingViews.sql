--Return: Msg 4405, Level 16, State 1, Line 2
--View or function 'ViewByDepartment' is not updatable because the modification affects multiple base tables.
SELECT * FROM [ViewByDepartment]
DELETE FROM [ViewByDepartment]
WHERE Id = 132
GO

CREATE VIEW [SimpleView]
	AS 
	SELECT * FROM [Transaction]
GO

BEGIN TRAN
	DELETE FROM [SimpleView]
	WHERE EmployeeNumber = 132
	SELECT * FROM [SimpleView]
ROLLBACK TRAN
