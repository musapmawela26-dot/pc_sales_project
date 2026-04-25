--dim payment

create or alter procedure usp_dim_payment_method

as 

begin
          truncate table [pc_sales].[dbo].[dim_payment_method]

--insert data in my dim payment method table

          insert into [pc_sales].[dbo].[dim_payment_method](

          Payment_Method
          
          )

          select distinct

          Payment_Method

          from [pc_sales].[dbo].[pc_data]

 end;

