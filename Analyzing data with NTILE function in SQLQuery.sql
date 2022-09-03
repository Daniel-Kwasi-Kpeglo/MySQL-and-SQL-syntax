USE AdventureWorks2014;
GO
SELECT p.FirstName, p.LastName
	,NTILE(4) OVER(ORDER BY SalesYTD DESC) AS Quartile
	,CONVERT(nvarchar(20), s.SalesYTD, 1) AS SalesYTD
	,a.PostalCode
FROM Sales.SalesPerson AS s
INNER JOIN Person.Person AS p
	ON s.BusinessEntityID = p.BusinessEntityID
INNER JOIN Person.Address AS a
	ON a.AddressID = p.BusinessEntityID
WHERE TerritoryID IS NOT NULL
	AND SalesYTD <> 0;
GO