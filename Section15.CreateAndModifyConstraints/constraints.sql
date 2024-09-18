ALTER TABLE [dbo].[Transaction]
ADD CONSTRAINT chkAmount CHECK (Amount > - 1000 AND Amount < 1000)


--Return: Msg 547, Level 16, State 0, Line 4
--The INSERT statement conflicted with the CHECK constraint "chkAmount". 
--The conflict occurred in database "70-461", table "dbo.Transaction", column 'Amount'.
-- The statement has been terminated.
INSERT INTO [dbo].[Transaction]
VALUES(1010, '2014-01-01', 1)

ALTER TABLE [dbo].[Employee] WITH NOCHECK
ADD CONSTRAINT chkMiddleName CHECK
(REPLACE(MiddleName,'.','') = MiddleName or MiddleName IS NULL)

ALTER TABLE [dbo].[Employee] WITH NOCHECK
ADD CONSTRAINT chkDateOfBirth CHECK (DateOfBirth BETWEEN '1900-01-01' AND GETDATE())

CREATE TABLE [Employee2]
(MiddleName NVARCHAR(30) NULL CHECK 
(REPLACE(MiddleName, '.','') = MiddleName OR MiddleName IS NULL))

SET IDENTITY_INSERT [dbo].[Employee] ON

BEGIN TRAN
	INSERT INTO [dbo].[Employee](Id, FirstName, MiddleName, LastName, GovermentId, DateOfBirth, Department)
	VALUES(203, 'A', 'B', 'C','D', '1915.01.01', 'Accounts')
	SELECT *
	FROM [dbo].[Employee] 
	WHERE [Id] = 1
ROLLBACK TRAN

-- Remove PK for table Empployee
ALTER TABLE [dbo].[Employee]
DROP CONSTRAINT PK_Employee

-- Add PK for table Emoployee
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT PK_Employee PRIMARY KEY(Id)


ALTER TABLE [dbo].[Transaction] WITH NOCHECK
ADD CONSTRAINT FK_Transaction_EmployeeNumber FOREIGN KEY (EmployeeNumber)
REFERENCES Employee(Id)