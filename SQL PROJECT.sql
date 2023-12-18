


                        ( 1 ) 
-- Display Category Name and Description from the categories table, sort your output by
-- Category Name


SELECT CategoryName, Description 
FROM categories 
ORDER BY CategoryName;


                            ( 2 ) 
-- Display Contact Name, Company Name, Contact Title and Phone number from the
-- customers table, sort your output by Phone.

SELECT ContactName, CompanyName, ContactTitle, Phone 
FROM customers 
ORDER BY Phone; 


                        ( 3 ) 
-- Output a unique list of customers across customers and suppliers tables. Display
-- Company's name, Contact name and City. Sort your outcome by Company name in Descending order

SELECT CompanyName, ContactName, City 
FROM customers
UNION
SELECT CustomerName, ContactName, City 
FROM suppliers
ORDER BY CompanyName DESC;



                               ( 4 ) 
-- Output Total, Average, Min and Max Freight by ShipCountry, order by Maximum freight in descending order

 SELECT ShipCountry,
       SUM(Freight) as TotalFreight,
       AVG(Freight) as AvgFreight,
       MIN(Freight) as MinFreight,
       MAX(Freight) as MaxFreight
FROM orders
GROUP BY ShipCountry
ORDER BY MaxFreight DESC; 




                            ( 5 ) 
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







