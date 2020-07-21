-- Find all products
SELECT * FROM products;
-- Find all prods that cost 1400
SELECT * FROM products WHERE Price =1400;
-- Find all products that cost 11.99 or 13.99
SELECT * FROM products WHERE Price = 11.99 or Price = 13.99; 
-- Find all prodcuts that do NOT cost 11.99 using NOT
SELECT * FROM products WHERE NOT Price= 11.99;
-- Find all products and sort them by price from greatest to least (decending order)
SELECT * FROM products ORDER BY Price DESC;
-- Find all employees who do not have a middle initial
SELECT LastName,FirstName FROM employees Where MiddleInitial IS NULL; 
-- Find Distinct product prices
SELECT DISTINCT Price FROM products;
-- Find all employees whose first name starts with the letter 'j'
  SELECT * FROM employees WHERE FirstName LIKE 'j%';
-- Find all Macbooks
SELECT * FROM products WHERE Name = 'Macbook';   
-- Find all prodcuts that are on sales
SELECT * FROM products WHERE OnSale=1;
-- Find the average price of all products
SELECT AVG (Price) FROM products;
-- Find all Geek Squad employees who do not have a middle initial
SELECT * FROM employees WHERE MiddleInitial IS NULL AND Title = 'Geek Squad';
-- Find all products from the products table whose stock level is in the arrange of 500 to 1200.  Order by Price from least to greatest
SELECT * FROM products WHERE StockLevel BETWEEN 500 and 1200 ORDER BY Price ASC;


-- Inner Join
SELECT  SalesID, sales.ProductID, Quantity, products.ProductID, name, Price FROM sales
INNER JOIN products 
ON sales.ProductID = products.ProductID;

-- Left Join
SELECT  SalesID, sales.ProductID, Quantity, products.ProductID, name, Price FROM sales 
 LEFT JOIN products 
ON sales.ProductID = products.ProductID;

-- Right Join
SELECT  SalesID, sales.ProductID AS 'Sales Prod ID', Quantity, products.ProductID, name, Price FROM sales 
Right JOIN products 
ON sales.ProductID = products.ProductID;

-- Inner Join-Task 1
SELECt products.name,categories.name FROM products
Inner Join Categories
ON Products.CategoryID= Categories.CategoryID
WHERE Categories.Name='Computers';

-- Task 2
SELECT products.name, products.price,reviews.rating FROM products
Inner Join Reviews
ON Products.ProductID=Reviews.ProductID
WHERE Reviews.Rating=5;

-- Task 3
SELECT Employees.FirstName, sum(Sales.Quantity) as total from employees
Inner Join Sales
On sales.EmployeeID=employees.EmployeeID
Group by employees.EmployeeID
order by total desc;

-- Task 4
SELECT Departments.Name, Categories.Name FROM Departments
Inner Join Categories
On Departments.DepartmentID=Categories.DepartmentID
WHERE Categories.Name='Appliances' or Categories.Name='Games';

-- Task 5
SELECT products.Name, sum(sales.Quantity), sum(sales.Quantity * sales.PricePerUnit) FROM products
Inner Join sales
On products.ProductID=sales.ProductID
Where products.Name Like '%Hotel California%';
-- 
SELECT Products.Name,Reviews.Reviewer,Reviews.Rating, Reviews.Comment
FROM products
Inner Join Reviews
ON Products.ProductID=Reviews.ProductID
WHERE Reviews.Rating=1 AND Products.Name='Visio TV';

SELECT employees.EmployeeID, employees.FirstName, Employees.LastName, products.Name,sum(sales.Quantity) as total from sales
inner join employees
on sales.EmployeeID=employees.EmployeeID
inner join products
on products.productID=sales.ProductID
group by Employees.EmployeeID,Products.ProductID 
order by total desc;


