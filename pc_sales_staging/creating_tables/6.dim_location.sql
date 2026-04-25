--create dim location dimension table
create table [pc_sales].[dbo].[dim_location](
       [Location_ID] int identity(1,1) primary key,
       [Continent] [nvarchar](250) NOT NULL,
       [Country_or_State] [nvarchar](250) NOT NULL,
       [Province_or_City] [nvarchar](250) NOT NULL
       )

--insert data in my dim location table

insert into [pc_sales].[dbo].[dim_location](
       
       Continent,
       
       Country_or_State,
       
       Province_or_City
       
       )

       select distinct 
       
       Continent,
       
       Country_or_State,
       
       Province_or_City

       from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_location];

