-- Exercise 1 --
use Northwind

-- 1.1 -- List all Customers in either Paris/London. Include all address fields
--SELECT CustomerID, CompanyName, Address, City, Region, PostalCode, Country
--FROM Customers
--WHERE City = 'Paris' OR City = 'London';


-- 1.2 -- List all products stored in bottles
--SELECT *
--FROM Products
--WHERE QuantityPerUnit LIKE '%bottles%'


-- 1.3 -- List all products store in bottles(Add supplier name & country)
--SELECT Products.*, Suppliers.CompanyName, Suppliers.Country
--FROM Suppliers
--INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
--WHERE QuantityPerUnit LIKE '%bottles%'


-- 1.4 -- Show how many products are in each category( Include ategory name and highest number first)
--SELECT CategoryName, COUNT(Categories.CategoryID) AS 'Number of Products'
--FROM Categories
--JOIN Products ON Products.CategoryID = Categories.CategoryID
--GROUP BY (CategoryName)
--ORDER BY 'Number of Products' DESC


-- 1.5 -- List all UK employees (Use comcatenation to joing Title + First name + Last name)
--SELECT TitleOfCourtesy + ' ' + FirstName + ' ' + LastName AS 'FullName', City
--FROM Employees


-- 1.6 -- List sales totals for all sales regions above 1,000,000
--SELECT ROUND(SUM(UnitPrice * Quantity * (1- Discount)) , 3) AS 'Total Sales', 
--RegionDescription AS 'Region Description' 

--FROM [Order Details] OD 
--JOIN Orders ON OD.OrderID = Orders.OrderID

--JOIN EmployeeTerritories ET ON ET.EmployeeID = Orders.EmployeeID

--JOIN Territories ON Territories.TerritoryID = ET.TerritoryID

--JOIN Region ON Region.RegionID = Territories.RegionID


--GROUP BY RegionDescription
--HAVING ROUND(SUM(UnitPrice * Quantity * (1-Discount)),3) > 1000000

-- 1.7 -- Count how many order have frieight above 100.00 in either USA/UK
--SELECT COUNT(*)
--FROM Orders
--WHERE Freight > 100.0 AND 
--( ShipCountry = 'UK' OR ShipCountry = 'USA')


-- 1.8 --Find the order number of order with highest discount
SELECT  MAX(Discount) AS 'Max Discount' 
FROM Orders
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID





