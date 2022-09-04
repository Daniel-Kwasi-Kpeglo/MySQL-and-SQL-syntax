USE AdventureWorks2014;
GO
IF OBJECT_ID ('dbo.Gloves', 'U') IS NOT NULL
DROP TABLE dbo.Gloves;
GO

 --Creat the Gloves tabel--
 SELECT ProductModelId, Name
 INTO dbo.Gloves
 FROM Production.ProductModel
 WHERE ProductModelID IN (3,4)
 GO

 --Here is the simple Union--

 USE AdventureWorks2014;
 GO
 SELECT ProductModelID, Name
 FROM Production.ProductModel
 WHERE ProductModelID NOT IN (3,4)
 UNION
 SELECT ProductModelID, Name
 FROM dbo.Gloves
 ORDER By Name;
 GO