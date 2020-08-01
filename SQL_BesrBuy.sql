-- joins: select all the computers from the products table:
 -- using the products table and the categories table, return the product name and the category name
 
 SELECT p.Name, c.Name
 FROM bestbuy.products AS p
 LEFT JOIN bestbuy.categories AS c
 ON p.CategoryID = c.CategoryID
 WHERE c.CategoryID = 1;
 
 
 -- joins: find all product names, product prices, and products ratings that have a rating of 5
 
 SELECT p.Name, p.Price, r.Rating 
 FROM bestbuy.reviews AS r
 LEFT JOIN bestbuy.products AS p
 ON r.ProductID = p.ProductID
 WHERE r.Rating = 5;
 
 
 -- joins: find the employee with the most total quantity sold.  use the sum() function and group bySELECT e.FirstName, e.LastName, SUM(s.Quantity) AS Total
 
FROM bestbuy.sales AS s
INNER JOIN bestbuy.employees AS e 
ON e.EmployeeID = s.EmployeeID
GROUP BY e.FirstName, e.LastName
ORDER BY Total DESC
LIMIT 2;


-- joins: find the name of the department, and the name of the category for Appliances and Games

SELECT d.Name AS Department, c.Name AS 'Category'
FROM departments AS d
INNER JOIN categories AS c 
ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Games' OR c.Name = 'appliances';


-- joins: find the product name, total # sold, and total price sold,
-- for Eagles: Hotel California --You may need to use SUM()
SELECT p.Name, SUM(s.Quantity) AS TotalSold, SUM(s.Quantity * s.PricePerUnit) AS Total
FROM products AS p
INNER JOIN sales AS s 
ON s.ProductID = p.ProductID
WHERE p.ProductID = 97;


-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)

SELECT p.Name AS 'Product Name', r.Reviewer, r.Rating, r.Comment
FROM Reviews AS r
INNER JOIN products AS p 
ON p.ProductID = r.ProductID
WHERE p.ProductID = 857 AND r.Rating = 1;


/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, 
the name of each product, how many of that product they sold */

-- Grouped by date
SELECT e.EmployeeID, e.FirstName, e.LastName, p.ProductID, p.Name, SUM(s.Quantity) AS Quantity, s.Date
FROM sales AS s
INNER JOIN employees AS e
ON e.EmployeeID = s.EmployeeID
INNER JOIN products AS p
ON p.ProductID = s.ProductID
GROUP BY e.EmployeeID, e.FirstName, e.LastName,p.ProductID,p.Name,s.Date;

-- Grouped by product
SELECT e.EmployeeID, e.FirstName, e.LastName, p.ProductID, p.Name, SUM(s.Quantity) AS 'Total Sold' 
FROM sales AS s
INNER JOIN employees AS e
ON e.EmployeeID = s.EmployeeID
INNER JOIN products AS p
ON p.ProductID = s.ProductID
GROUP BY e.EmployeeID, p.ProductID;