--create dim shop dimension table
create table [pc_sales].[dbo].[dim_shop](
       [Shop_ID] int identity(1,1) primary key,
       [Shop_Name] [nvarchar](250) NOT NULL,
       [Shop_Age] [nvarchar](250) NOT NULL
       )

--insert data into table

insert into [pc_sales].[dbo].[dim_shop](

            Shop_Name,
            
            Shop_Age
            
            )

            select distinct 
            
            Shop_Name,
            
            Shop_Age

            from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_shop];