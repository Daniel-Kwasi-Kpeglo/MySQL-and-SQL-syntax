USE AdventureWorks2014;
GO
SELECT TerritoryName, BusinessEntityID, SalesYTD,
	LEAD (SalesYTD, 1, 0) OVER (PARTITION BY TerritoryName ORDER BY SalesYTD) AS NextRepSales
FROM Sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada')
ORDER BY TerritoryName