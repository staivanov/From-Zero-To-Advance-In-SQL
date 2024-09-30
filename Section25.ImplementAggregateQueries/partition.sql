SELECT A.[EmployeeNumber], A.[AttendanceMonth], A.[NumberAttendance],
SUM(A.[NumberAttendance]) OVER (PARTITION BY A.[EmployeeNumber], YEAR(A.AttendanceMonth) ORDER BY A.[AttendanceMonth]) AS [RunningTotal]
FROM [tblEmployee] AS E
JOIN [tblAttendance] AS A
ON E.[EmployeeNumber] = A.[EmployeeNumber]
ORDER BY A.[EmployeeNumber], A.[NumberAttendance]