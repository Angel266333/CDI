INSERT INTO northwindDB.dbo.Products (ProductName, SupplierID, CategoryID, QuantityPerUnit,
UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued
) VALUES ('Laptop', '4', '2', '1', '825', '42', '11', '4', '0');
DELETE FROM northwindDB.dbo.Products WHERE ProductID = 76;
UPDATE northwindDB.dbo.Products
SET SupplierID = 22 WHERE ProductID = 73;