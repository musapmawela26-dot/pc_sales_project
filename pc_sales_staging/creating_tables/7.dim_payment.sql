--create dim payment method dimension table
create table [pc_sales].[dbo].[dim_payment_method](
       [Payment_ID] int identity(1,1) primary key,
       [Payment_Method] [nvarchar](250) NOT NULL
       )

--insert data in my dim payment method table

insert into [pc_sales].[dbo].[dim_payment_method](
       
       Payment_Method
       
       )

       select distinct 
       
       Payment_Method

       from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_payment_method];

