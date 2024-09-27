DECLARE @myOption AS VARCHAR(10) = 'Option A'

SELECT CASE WHEN @myOption = 'Option A' THEN 'First option'
			WHEN @myOption = 'Option B' THEN 'Second option'
			ELSE 'No option' END AS [MyOption]

SELECT CASE @myOption WHEN 'Option A' THEN 'First option'
					  WHEN 'Option B' THEN 'Second option'
					  ELSE 'No Option' END AS [MyOption]
GO