DECLARE @chrASCII AS VARCHAR(10) = 'hellothere' 
DECLARE @chrUNICODE AS NVARCHAR(10) = N'hello' 

SELECT @chrASCII AS [ASCIIWord], @chrUNICODE AS [UnicodeWord]
SELECT SUBSTRING(@chrASCII, 3, 2) AS [MiddleLetters]