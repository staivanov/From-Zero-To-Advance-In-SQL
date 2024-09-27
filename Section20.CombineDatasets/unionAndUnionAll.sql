SELECT * FROM [Inserted]
UNION
SELECT * FROM [Deleted]

SELECT CONVERT(char(5), 'hi')
UNION
SELECT CONVERT(char(11), 'Hello there') 
UNION
SELECT CONVERT(char(11), 'bonjour')
UNION ALL --Dont remove dublication
SELECT CONVERT(char(11), 'hi')


SELECT CONVERT(TINYINT, 45) AS [MyColumn]
UNION
SELECT CONVERT(BIGINT, 456) 