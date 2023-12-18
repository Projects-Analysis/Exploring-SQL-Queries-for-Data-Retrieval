#  Exploring SQL Queries for Data Retrieval: A Comprehensive Guide

## INTRODUCTION 
In the world of relational databases, SQL (Structured Query Language) is a powerful tool that allows users to interact with and retrieve information from their datasets. This article aims to provide a comprehensive guide to writing SQL scripts for data retrieval, focusing on practical examples. We will explore five SQL queries, each designed to address a specific data retrieval task. The examples are based on a hypothetical database schema containing tables such as categories, customers, suppliers, orders,products and so on.

### 1. Displaying Category Information
#### Question:Write a script to display CategoryName and Description from the categories table, sorted by CategoryName.


#### Comment:
This script retrieves and displays the CategoryName and Description columns from the categories table. The ORDER BY clause is used to sort the output alphabetically by CategoryName. This can be useful when you want to quickly browse and understand the different product categories within your database. 


### 2. Displaying Customer Contact Information
#### Question: Write a script to display ContactName, CompanyName, ContactTitle, and Phone number from the customers table, sorted by Phone.


#### Comment: 
Here, we extract the ContactName, CompanyName, ContactTitle, and Phone columns from the customers table. The ORDER BY clause is utilized to sort the result set based on the Phone column. This script is valuable when you need to have a well-organized list of customer contacts sorted by their phone numbers.


### 3. Unique Customer Information Across Tables
#### Question: Write a script to output a unique list of customers across customers and suppliers tables. Display Customername, Contactname, and City. Sort your outcome by Customername Desc.


#### Comment: 
This script combines and displays a unique list of customers from both the customers and suppliers tables. It retrieves columns such as CustomerName, ContactName, and City, and orders the result set in descending order based on CustomerName. This query is useful for creating a consolidated list of contacts regardless of whether they are customers or suppliers.


### 4. Freight Statistics by Ship Country
#### Question: Write a script to output Total, Average, Min, and Max Freight by ShipCountry, ordered by Maximum freight descending.


#### Comment: 
In this script, we calculate total, average, minimum, and maximum freight values for each ShipCountry from the orders table. The results are grouped by ShipCountry and ordered in descending order based on the maximum freight. This query is beneficial for gaining insights into shipping trends across different countries.


### 5. Total Sales Amount per Product
#### Question: For each product, display the Total sales amount (including discount), ordered by the highest sales amount.


#### Comment: 
This script computes the total sales amount (including discount) for each product by multiplying the quantity with the price difference. The result is grouped by ProductID and ProductName, and ordered in descending order based on the total sales amount. This query is useful for identifying the most lucrative products in terms of sales.



### SUMMARY AND CONCLUSION 
In this article, we explored five SQL scripts designed for data retrieval tasks commonly encountered in database management. These queries showcase the versatility of SQL in extracting meaningful insights from complex datasets. Whether you are dealing with product categories, customer contacts, or sales statistics, SQL provides a powerful and efficient means of managing and analyzing your data. By understanding and adapting these scripts to your specific database schema, you can enhance your ability to extract valuable information for decision-making and analysis.
