drop table [PC_Salesdb].[dbo].[dim_shop]
drop procedure [dbo].[sp_dim_shop]

create procedure sp_dim_shop
as begin 
create table [PC_Salesdb].[dbo].[dim_shop](
	[Shop_ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Shop_Name] [nvarchar](250) NOT NULL,
	[Shop_Age] [nvarchar](250) NOT NULL
	)
insert into [PC_Salesdb].[dbo].[dim_shop](Shop_Name,Shop_Age)
select distinct Shop_Name,Shop_Age
from [PC_Salesdb].[dbo].[PC_Data]
end;