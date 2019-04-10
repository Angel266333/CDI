use northwindDB
	go 
insert into 
[stageDB].[dbo].[saleTransaction](
Quantity,
discount,
lineTotal,
b_dateKey,
b_productKey,
b_customerKey)
select 
Quantity,
Discount,
[Order Details].UnitPrice * Quantity,
Orders.OrderDate,
Products.ProductID,
Customers.CustomerID
from [Order Details] 
join Orders on Orders.OrderID=[Order Details].OrderID
join Customers on Orders.CustomerID=Customers.CustomerID
join Products on [Order Details].ProductID=Products.ProductID
WHERE 
DATEPART(year, dbo.Orders.OrderDate) = 1996 OR DATEPART(year, dbo.Orders.OrderDate) = 1997;	