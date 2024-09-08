SELECT TRY_CONVERT(TINYINT,(system_type_id * 2)) AS [Number], column_id AS [Divider], ROUND((system_type_id / column_id),1) AS [Calculation]
FROM [sys].[all_columns]

--1. Have a look at the Calculation column. What is wrong with it? Please correct it.

--2. Please round the fractions in the Calculation column down to the next whole number (so 4.153 would round down to 4).

--3. Please round the fractions up (so 4.153 would round up to 5).

--4. Please round the fractions to the nearest one decimal place (so 4.153 would round up to 4.2).
--5. Multiply the first field, system_type_id, by 2, and then convert it to a tiniyint. If it doesn't work, instead of converting it 
--using CONVERT or CAST, use the functions TRY_CONVERT or TRY_CAST instead - these give a NULL if the conversion doesn't work properly.

--SOLUTIONS
--We use functions FLOOR(), CEILING(), ROUND() for 2,3 and 4 tasks.

--Task 5
--If i use TINYINT there is error who says:
--Msg 220, Level 16, State 2, Line 1
--Arithmetic overflow error for data type tinyint, value = 330.
