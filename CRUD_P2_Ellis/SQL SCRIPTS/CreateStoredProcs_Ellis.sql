USE [GourmetShop]
GO

CREATE PROCEDURE InsertCustomerAndOrder_Ellis

@FirstName VARCHAR(40),
@LastName VARCHAR(40),
@City VARCHAR(40),
@Country VARCHAR(40),
@Phone VARCHAR(20),
@OrderDate DATETIME
--@TotalAmount VARCHAR(40)

AS
DECLARE @CustomerId INT
DECLARE @OrderNumber INT
SELECT @OrderNumber = CONVERT (INT, (RAND() * (10000 - 1) + 1))
INSERT INTO Customer (FirstName, LastName, City, Country, Phone)

VALUES (@FirstName, @LastName, @City, @Country, @Phone)
SELECT @CustomerId = SCOPE_IDENTITY()
INSERT INTO "Order"(CustomerId, OrderDate, OrderNumber)
VALUES (@CustomerId, @OrderDate, @OrderNumber)
GO;

CREATE PROCEDURE NewCustomerSummary_Ellis

AS
SELECT TOP(10) o.OrderDate, o.OrderNumber, o.TotalAmount, c.Id, c.FirstName, c.LastName, p.ProductName,
ROW_NUMBER() OVER(ORDER BY OrderDate DESC) OrderHistory
FROM "Order" o
JOIN Customer c on c.Id = o.CustomerId
JOIN OrderItem oi on o.Id = oi.OrderId
Join Product p on p.Id = oi.ProductId
GO;

CREATE PROCEDURE ProductList_Ellis

AS
SELECT * FROM Product WHERE IsDiscontinued = 0
GO;