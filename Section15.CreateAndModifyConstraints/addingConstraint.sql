ALTER TABLE [dbo].[Transaction]
ADD CONSTRAINT uniqeTransaction UNIQUE (Amount, DateOfTransaction, EmployeeNumber)

INSERT INTO [dbo].[Transaction]
VALUES(1, '2015-01-01', 131)
--Secont operation return 
--Msg 2627, Level 14, State 1, Line 7
--Violation of UNIQUE KEY constraint 'uniqeTransaction'. Cannot insert duplicate key in object 'dbo.Transaction'.
--The duplicate key value is (1.00, Jan  1 2015 12:00AM, 131).
--The statement has been terminated.
INSERT INTO [dbo].[Transaction]
VALUES(1, '2015-01-01', 131)

--Dropping the constraint
ALTER TABLE  [dbo].[Transaction]
DROP CONSTRAINT [uniqeTransaction]