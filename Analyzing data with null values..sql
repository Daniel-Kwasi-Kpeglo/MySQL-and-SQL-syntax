USE AdventureWorks2014;
GO
SELECT Name, Color
FROM Production.Product
WHERE Size IS NULL;
GO


USE AdventureWorks2014;
GO
SELECT Name, Color
FROM Production.Product
WHERE Size IS NOT NULL;
GO