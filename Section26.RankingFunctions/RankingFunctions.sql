SELECT A.EmployeeNumber, A.AttendanceMonth, A.NumberAttendance,
	ROW_NUMBER() OVER(PARTITION BY A.EmployeeNumber ORDER BY A.EmployeeNumber, A.AttendanceMonth) AS TheRowNumber,
	RANK() OVER (PARTITION BY A.EmployeeNumber ORDER BY A.EmployeeNumber, A.AttendanceMonth) AS TheRank,
	DENSE_RANK() OVER(PARTITION BY A.EmployeeNumber ORDER BY A.EmployeeNumber, A.AttendanceMonth) AS TheDensRank
FROM tblEmployee AS E JOIN tblAttendance AS A
ON E.EmployeeNumber = A.EmployeeNumber