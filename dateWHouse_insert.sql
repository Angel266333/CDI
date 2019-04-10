insert into dataWHouse.dbo.customer
select 
customerKey,
postalCode,
contatName,
country
from stageDB.dbo.customer;

insert into dataWHouse.dbo.saleTransaction
select
dateKey,
productKey,
customerKey,
Quantity,
discount,
lineTotal
from stageDB.dbo.saleTransaction;



