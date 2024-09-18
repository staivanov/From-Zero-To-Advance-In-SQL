ALTER TABLE [dbo].[Transaction]
ADD CONSTRAINT chkAmount CHECK (Amount > - 1000 AND Amount < 1000)
