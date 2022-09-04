USE AdventureWorks2014;
GO
SELECT *
FROM HumanResources.Employee;


SELECT LoginID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '%manager%';
GO

SELECT *
FROM Person.Person
WHERE FirstName LIKE '_ary';
GO

SELECT *
FROM Person.Person
WHERE FirstName NOT LIKE '_ary';
GO