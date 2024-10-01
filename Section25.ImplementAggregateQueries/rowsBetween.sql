SELECT A.[EmployeeNumber], A.[AttendanceMonth], A.[NumberAttendance], SUM(A.[NumberAttendance])
OVER (PARTITION BY A.[EmployeeNumber], YEAR (A.[AttendanceMonth])
	ORDER BY A.[AttendanceMonth], A.[NumberAttendance]
	ROWS BETWEEN 0 PRECEDING AND 1 FOLLOWING) AS [RunningTotal]
FROM [tblEmployee] AS E
JOIN  [70-461].[dbo].[tblAttendance] AS A
ON E.[EmployeeNumber] = A.[EmployeeNumber]