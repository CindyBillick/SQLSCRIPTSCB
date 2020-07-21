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
-- Joins
SELECT  SalesID, sales.ProductID, Quantity, products.ProductID, name, Price FROM sales
INNER JOIN products 
ON sales.ProductID = products.ProductID;