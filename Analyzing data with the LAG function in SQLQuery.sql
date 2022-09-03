USE AdventureWorks2014;
GO
SELECT TerritoryName, BusinessEntityID, SalesYTD,
		LAG(SalesYTD, 1, 0) OVER(PARTITION BY TerritoryName ORDER BY SalesYTD DESC) AS PrevRepSales
FROM Sales.vSalesPerson
WHERE TerritoryName IN (N'Northwest', N'Canada')
ORDER BY TerritoryName;