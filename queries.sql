-- Display all records
SELECT * FROM Orders;

-- Display only Phone orders
SELECT *
FROM Orders
WHERE Product = 'Phone';

-- Sort orders by TotalPrice
SELECT OrderID, Product, TotalPrice
FROM Orders
ORDER BY TotalPrice DESC;

-- Count total orders
SELECT COUNT(*) AS TotalOrders
FROM Orders;

-- Count orders by product
SELECT Product, COUNT(*) AS OrderCount
FROM Orders
GROUP BY Product;

-- Calculate average order value
SELECT AVG(CAST(TotalPrice AS REAL)) AS AverageOrderValue
FROM Orders;

-- Calculate total revenue
SELECT SUM(CAST(TotalPrice AS REAL)) AS TotalRevenue
FROM Orders;