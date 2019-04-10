---insert & update for changed Products---
use NorthWindDB
go

--We create a temporary table blueprint.
CREATE TABLE changed_product (
productKey INT NOT NULL,
b_product INT NOT NULL,
category VARCHAR(255), 	
unitPrice INT NOT NULL,
productName VARCHAR(255),
supplierName VARCHAR(255)
);
--We make a data insert into the temporary table with values from northwindDB for dates between 1997 - 1998.
Insert into
northwindDB.dbo.changed_product(
[ProductKey],
[ProductName],
[UnitPrice],
[category],
supplierName)
(---today
select
[ProductID],
[ProductName],
[UnitPrice],
[CategoryName],
CompanyName from Products
join Categories on Products.CategoryID = Categories.CategoryID
join Suppliers on Products.SupplierID = Suppliers.SupplierID)

--Select all products EXCEPT the next statement (those that do not have an ID).
EXCEPT
(---yesterday
select
[ProductID],
[ProductName],
[UnitPrice],
[CategoryID],
[SupplierID] from northwindDB.dbo.Products)

--Select all products that DO NOT have an ID.
EXCEPT
(select
[ProductID],
[ProductName],
[UnitPrice],
[CategoryName],
CompanyName from Products
join Categories on Products.CategoryID = Categories.CategoryID
join Suppliers on Products.SupplierID = Suppliers.SupplierID
where ProductID NOT IN (SELECT ProductID FROM northwindDB.dbo.Products))
