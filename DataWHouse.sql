CREATE TABLE customer(
customerKey integer,
postalCode nchar(10),
contatName VARCHAR(255),
country VARCHAR(255)
);

CREATE TABLE date(
dateKey int,
dayOf INTEGER,
monthOf INTEGER,
YearOf INTEGER,
hourOf INTEGER,
minOf INTEGER
);

CREATE TABLE product(
productKey int,
category VARCHAR(255),
unitPrice integer,
productName VARCHAR(255)
);
CREATE TABLE saleTransaction(  
dateKey datetime,
productKey INTEGER,
customerKey INTEGER,
Quantity INTEGER,
discount INTEGER,
lineTotal INTEGER,
);

