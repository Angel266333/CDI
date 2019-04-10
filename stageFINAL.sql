CREATE TABLE customer(
customerKey integer IDENTITY(1,1),
b_customerKey nchar(5),
postalCode nchar(10),
contatName VARCHAR(255),
country VARCHAR(255)
);

CREATE TABLE dateTable(
dateKey int IDENTITY(1,1),
b_dateKey datetime,
dayOf INTEGER,
monthOf INTEGER,
YearOf INTEGER,
hourOf INTEGER,
minOf INTEGER
);

CREATE TABLE product(
productKey int IDENTITY(1,1),
b_product int,
category VARCHAR(255),
unitPrice integer,
productName VARCHAR(255)
);
CREATE TABLE saleTransaction(  
dateKey int,
b_dateKey datetime, 
productKey INTEGER,
b_productKey INTEGER,
customerKey INTEGER,
b_customerKey nchar(5),
Quantity INTEGER,
discount INTEGER,
lineTotal INTEGER,
);

