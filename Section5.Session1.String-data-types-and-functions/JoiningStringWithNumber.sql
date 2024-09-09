SELECT 'My number is ' + CONVERT(NVARCHAR(4),4567)
SELECT 'My second number is ' + CAST(88888 AS NVARCHAR(5))

SELECT 'My salary is ' + FORMAT(99999, 'C', 'BG') 