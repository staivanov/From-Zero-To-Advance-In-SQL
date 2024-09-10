SELECT * FROM [dbo].[Employee]

SET IDENTITY_INSERT [dbo].[Employee] ON

INSERT INTO [dbo].[Employee](Id, FirstName, MiddleName, LastName, GovermentId, DateOfBirth, Department)
VALUES (1, 'Jax', 'A', 'Sparrow', 'HN513777D', '1991-10-11', 'Customer Relationship')

ALTER TABLE [Employee]
DROP COLUMN Department

ALTER TABLE [Employee]
ADD Department VARCHAR(30)