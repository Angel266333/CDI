
use northwindDB
 go
INSERT INTO
stageDB.dbo.customer(
b_customerKey,
postalCode,
contatName,
country)
select CustomerID,
PostalCode,
ContactName,
Country
from Customers

use northwindDB
 go
INSERT INTO
stageDb.dbo.dateTable(
b_dateKey,
dayOf,
monthOf,
YearOf,
hourOf,
minOf)
select orders.OrderID,
DAY(orders.OrderDate),
MONTH(orders.OrderDate),
YEAR(orders.OrderDate),
DATEPART(hour, Orders.OrderDate),
DATEPART(minute, orders.OrderDate)
from Orders;

use northwindDB
 go
INSERT INTO
stageDb.dbo.product(
b_product,
category,
unitPrice,
productName)
select products.ProductID,
products.CategoryID,
products.UnitPrice,
products.ProductName
from Products

