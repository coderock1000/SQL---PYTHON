CREATE TABLE IF NOT EXISTS Products (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT,
    Category TEXT,
    Price REAL,
    Stock INTEGER
);
INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Laptop', 'Electronics', 800.00, 50),
(2, 'Smartphone', 'Electronics', 600.00, 100),
(3, 'Desk Chair', 'Furniture', 120.00, 200),
(4, 'Table', 'Furniture', 150.00, 80),
(5, 'Blender', 'Appliances', 75.00, 60),
(6, 'Toaster', 'Appliances', 45.00, 150);

SELECT * FROM Products;
SELECT ProductName, Price 
FROM Products 
WHERE Price = (SELECT MAX(Price) FROM Products);

SELECT ProductName, Stock 
FROM Products 
WHERE Stock = (SELECT MIN(Stock) FROM Products);

SELECT ProductName, Price 
FROM Products 
WHERE Category = 'Electronics';

SELECT ProductName, Price 
FROM Products 
WHERE Price > 100;

SELECT ProductName, Price 
FROM Products 
WHERE Category = 'Furniture' 
ORDER BY Price DESC;

SELECT Category, COUNT(*) AS NumberOfProducts 
FROM Products 
GROUP BY Category;

SELECT AVG(Price) AS AveragePrice 
FROM Products;
