---insert & update for changed Products---
use northwindDB
go

--DROP TABLE changed_product

--We create a temporary table blueprint.
CREATE TABLE changed_product (
productKey INT NOT NULL,
productName VARCHAR(255),
category VARCHAR(255), 	
unitPrice MONEY NOT NULL
);
--We make a data insert into the temporary table with values from northwindDB for dates between 1997 - 1998.
Insert into
northwindDB.dbo.changed_product(
[productKey],
[productName],
[category],
[unitPrice]
)
(---today
select
[ProductID],
[ProductName],
[CategoryName],
[UnitPrice]
from Products
join Categories on Products.CategoryID = Categories.CategoryID
join Suppliers on Products.SupplierID = Suppliers.SupplierID)

--Select all products EXCEPT the next statement (those that do not have an ID).
EXCEPT
(---yesterday
select
[productKey],
[ProductName],
[UnitPrice],
[category]
from stageDB.dbo.product)

--Select all products that DO NOT have an ID.
EXCEPT
(select
[ProductID],
[ProductName],
[UnitPrice],
[CategoryName]
from Products
join Categories on Products.CategoryID = Categories.CategoryID

where ProductID NOT IN (SELECT ProductID FROM northwindDB.dbo.Products))
