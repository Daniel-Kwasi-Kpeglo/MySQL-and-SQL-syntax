USE AdventureWorks2014;
GO
SELECT TOP(10) BusinessEntityID, Rate,
	DENSE_RANK() OVER (ORDER BY Rate DESC) AS RankBySalary
FROM HumanResources.EmployeePayHistory;
GO
