update stageDB.dbo.saleTransaction
set dateKey=(
select dateKey from stageDB.dbo.dateTable
where stageDB.dbo.stage_dim_date.dateKey=stageDB.dbo.saleTransaction.b_dateKey)

update stageDB.dbo.saleTransaction
set customerKey=(
select customerKey from stageDB.dbo.customer
where stageDB.dbo.customer.b_customerKey=stageDB.dbo.saleTransaction.b_customerKey)

update stageDB.dbo.saleTransaction
set productKey=(
select productKey from stageDB.dbo.product
where stageDB.dbo.product.b_product=stageDB.dbo.saleTransaction.b_productKey)