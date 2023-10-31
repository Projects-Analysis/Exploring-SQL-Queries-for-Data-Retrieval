



-- Display Category Name and Description from the categories table, sort your output by
-- Category Name


SELECT CategoryName, Description 
FROM categories 
ORDER BY CategoryName;



-- Display Contact Name, Company Name, Contact Title and Phone number from the
-- customers table, sort your output by Phone.

SELECT ContactName, CompanyName, ContactTitle, Phone 
FROM customers 
ORDER BY Phone; 


-- Output a unique list of customers across customers and suppliers tables. Display
-- Company's name, Contact name and City. Sort your outcome by Company name in Descending order

SELECT CompanyName, ContactName, City 
FROM customers
UNION
SELECT CompanyName as CustomerName, ContactName, City 
FROM suppliers
ORDER BY CompanyName DESC;

 
-- Output Total, Average, Min and Max Freight by ShipCountry, order by Maximum freight in descending order

 SELECT ShipCountry,
       SUM(Freight) as TotalFreight,
       AVG(Freight) as AvgFreight,
       MIN(Freight) as MinFreight,
       MAX(Freight) as MaxFreight
FROM orders
GROUP BY ShipCountry
ORDER BY MaxFreight DESC; 


-- For each product, display the Total sales amount (including discount), order by the highest sales amount.

SELECT 
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity * (od.UnitPrice + od.Discount)) AS TotalSalesAmount
FROM 
    products p
JOIN 
    [Order Details] od ON p.ProductID = od.ProductID
JOIN 
    orders o ON od.OrderID = o.OrderID
GROUP BY 
    p.ProductID, p.ProductName
ORDER BY 
    TotalSalesAmount DESC;



-- Display the names of all employees

SELECT FirstName, LastName FROM employees;



-- Display the product names and their corresponding categories

SELECT p.ProductName, c.CategoryName
FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID;



-- Calculate the total number of orders placed by each customer

SELECT CustomerID, COUNT(OrderID) as TotalOrders
FROM orders
GROUP BY CustomerID;



-- Display the names of all employees along with their hire dates

SELECT FirstName, LastName, HireDate FROM employees;



-- Display the names of all customers who have placed more than 10 orders

SELECT c.CompanyName
FROM customers c
JOIN (
    SELECT CustomerID, COUNT(OrderID) as TotalOrders
    FROM orders
    GROUP BY CustomerID
) as OrderCounts ON c.CustomerID = OrderCounts.CustomerID
WHERE OrderCounts.TotalOrders > 10;



-- Display the names of all products that have been discontinued

SELECT ProductName
FROM products
WHERE Discontinued = 1;



-- Display the names of all customers who have not placed any orders

SELECT CompanyName
FROM customers
WHERE CustomerID NOT IN (SELECT DISTINCT CustomerID FROM orders);



-- Total number of products in each category

SELECT c.CategoryName, COUNT(p.ProductID) as TotalProducts
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;



-- Product names and the number of units in stock for products with low stock (e.g., less than 10 units)

SELECT ProductName, UnitsInStock
FROM products
WHERE UnitsInStock < 10;




-- First names of all employees and their corresponding managers

SELECT e.FirstName as Employee, m.FirstName as Manager
FROM employees e
LEFT JOIN employees m ON e.ReportsTo = m.EmployeeID;




-- Product names and the average price for products in each category

SELECT c.CategoryName, AVG(p.UnitPrice) as AvgPrice
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName; 



