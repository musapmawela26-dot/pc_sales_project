--create if not exists
drop table [PC_Salesdb].[dbo].[dim_payment_method]
create table [PC_Salesdb].[dbo].[dim_payment_method](
       [Payment_ID] INT IDENTITY(1,1) PRIMARY KEY,
       [Payment_Method] [nvarchar](250) NOT NULL
)

--insert data in my dim payment method table
insert into [PC_Salesdb].[dbo].[dim_payment_method](Payment_Method)
select distinct Payment_Method
from [PC_Salesdb].[dbo].[PC_Data];

