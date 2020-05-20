Create Table tblProduct
(
 ProductId int NOT NULL primary key,
 Name nvarchar(50),
 UnitPrice int,
 QtyAvailable int
)

Insert into tblProduct values(1, 'Laptops', 2340, 100)
Insert into tblProduct values(2, 'Desktops', 3467, 50)

Create Table tblProductSales2
(
 ProductSalesId int primary key,
 ProductId int,
 QuantitySold int
)

Execute spSellProduct 1,10

select * from tblProduct
select * from tblProductSales2

Alter Procedure spSellProduct 
@ProductId int,
@QuantityToSell int
as
Begin	
	--Cehck first stock is available for prod we want to sell
	Declare @StockAvailable int
	select @StockAvailable = QtyAvailable
	from tblProduct where ProductId = @ProductId

	--throw error if enough srk not avail
	if(@StockAvailable < @QuantityToSell)
		Begin
			Raiserror('Not enough stock available',16,1)
		End

		--If stk avail
		Else
		Begin
		Begin Tran

		--First reduce quantity availble 
			Update tblProduct set QtyAvailable = (QtyAvailable - @QuantityToSell)
			where ProductId = @ProductId

			Declare @MaxProductSalesId int

			--Calculate Max ProductSalesId
			select @MaxProductSalesId = Case When
											MAX(ProductSalesId) IS NULL
											Then 0 else MAX(ProductSalesId) end
											from tblProductSales2
		
		--Inc @MAx by 1,so we dont get primary key violation
		set @MaxProductSalesId = @MaxProductSalesId + 1
		Insert into tblProductSales2 values(@MaxProductSalesId,@ProductId,@QuantityToSell)
		If(@@ERROR <> 0)
		Begin
			rollback transaction
			print 'transaction rolled back'
			End
			else
			Begin
				Commit tran
				print 'Transaction Committed'
			End
	End
End

































			







































	






















