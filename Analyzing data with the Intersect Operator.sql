USE AdventureWorks2014;
GO
SELECT ProductID
FROM Production.Product;


USE AdventureWorks2014;
GO
SELECT ProductID
FROM Production.Product
INTERSECT
SELECT ProductID
FROM Production.WorkOrder;
