--create if not exists
drop table [PC_Salesdb].[dbo].[dim_shop]
create table [PC_Salesdb].[dbo].[dim_shop](
       [Shop_ID] INT IDENTITY(1,1) PRIMARY KEY,
       [Shop_Name] [nvarchar](250) NOT NULL,
       [Shop_Age] [nvarchar](250) NOT NULL
)

--insert data in my dim shop table
insert into [PC_Salesdb].[dbo].[dim_shop](Shop_Name,Shop_Age)
select distinct Shop_Name,Shop_Age
from [PC_Salesdb].[dbo].[PC_Data];

select * from [PC_Salesdb].[dbo].[dim_shop]