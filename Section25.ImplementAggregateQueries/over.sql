SELECT A.[EmployeeNumber], A.[AttendanceMonth], A.[NumberAttendance], 
SUM(A.[NumberAttendance]) OVER() AS [TotalAttendance],
CONVERT(decimal(18,7), A.[NumberAttendance]) / SUM(A.[NumberAttendance]) OVER() * 100 AS [PercentageAttendance]
FROM [tblEmployee] AS E
JOIN [tblAttendance] AS A
ON E.[EmployeeNumber] = A.[EmployeeNumber]