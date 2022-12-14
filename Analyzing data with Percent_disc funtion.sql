USE AdventureWorks2014;
GO
SELECT DISTINCT Name AS DepartmentName
		,PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY ph.Rate)
							  OVER (PARTITION BY Name) AS MedianCont
		,PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY ph.Rate)
							  OVER (PARTITION BY Name) AS MedianDisc
FROM HumanResources.Department AS d
INNER JOIN HumanResources.EmployeeDepartmentHistory AS dh
		ON dh.DepartmentID = d.DepartmentID
INNER JOIN HumanResources.EmployeePayHistory AS ph
		ON ph.BusinessEntityID = dh.BusinessEntityID
WHERE dh.EndDate IS NULL;