-- Find all products
SELECT * FROM products;
-- Find all products that cost $1400
SELECT * FROM products WHERE Price =1400;
-- Find all products that cost  11.99 or 13.99
SELECT * FROM products WHERE Price = 11.99 or Price =13.99;
-- Find all products that do nOT cost 11.99- using NOT
SELECT * FROM products WHERE Not Price= 11.99; 
-- Find all products and sort them by price from greatest to least (decending order)
SELECT * FROM products ORDER BY Price DESC;
-- Find all employees who do not have a middle initial
SELECT LastName, FirstName FROM employees WHERE MiddleInitial IS NULL;
-- Find distinct product prices
SELECT  DISTINCT Price FROM products;
-- Find all employeess whose first name starts with the letter 'j'
SELECT * FROM employees WHERE FirstName LIKE 'j%';
-- Find all Macbooks
SELECT * FROM products WHERE Name = 'Macbook';
-- Find all products that are on sale
SELECT * FROM products Where OnSale=1;
-- Find the average price of all products
SELECT AVG (Price) FROM products;
-- Find all Geek Squad employees who do not have a middle initial
SELECT LastName, FirstName, Title, MiddleInitial FROM employees WHERE MiddleInitial IS NULL AND Title='Geek Squad';
-- Find all prodcuts from the prodcuts table whose stock level is in the range of 500 to 1200.  Order by Price from least to greatest;
SELECT * FROM products WHERE StockLevel BETWEEN 500 AND 1200 ORDER BY Price ASC;

