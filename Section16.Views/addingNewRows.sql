BEGIN TRAN
INSERT INTO ViewSummary(Department, EmployeeNumber, TotalAmount)
VALUES('HR', 159, 555)

SELECT * 
FROM [ViewSummary]
ORDER BY [Department]

ROLLBACK TRAN