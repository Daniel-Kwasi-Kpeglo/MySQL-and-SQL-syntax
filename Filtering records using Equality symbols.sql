USE AdventureWorks2014;
GO
SELECT *
FROM HumanResources.Employee;
GO

--Use the WHERE clause to return only the record in the Employee table--
--Where the employees are married--

SELECT LoginID, JobTitle, MaritalStatus
FROM HumanResources.Employee
WHERE MaritalStatus = 'M';
GO

SELECT LoginID, JobTitle, OrganizationLevel
FROM HumanResources.Employee
WHERE OrganizationLevel <> 2;
GO

SELECT LoginID, JobTitle, OrganizationLevel
FROM HumanResources.Employee
WHERE OrganizationLevel <= 2;
GO

SELECT LoginID, JobTitle, OrganizationLevel
FROM HumanResources.Employee
WHERE OrganizationLevel >= 2;
GO