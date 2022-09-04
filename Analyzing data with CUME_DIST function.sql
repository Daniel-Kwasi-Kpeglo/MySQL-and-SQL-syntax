USE AdventureWorks2014;
GO
SELECT Department, LastName, Rate,
		CUME_DIST() OVER (PARTITION BY Department ORDER BY Rate) AS CumeDist,
		PERCENT_RANK() OVER (PARTITION BY Department ORDER BY Rate) AS PctRank
FROM HumanResources.vEmployeeDepartmentHistory AS edh
		INNER JOIN HumanResources.EmployeepayHistory AS e
		ON e.BusinessEntityID = edh.BusinessEntityID
WHERE Department iN (N'Information Services', N'Document Control')
ORDER BY Department, RATE DESC;