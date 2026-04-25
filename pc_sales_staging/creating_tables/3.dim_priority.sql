--create dim priority dimension table

create table [pc_sales].[dbo].[dim_priority](
       [Priority_ID] int identity(1,1) primary key,
       [Priority] [nvarchar](250) NOT NULL
       )

--insert data into table

insert into  [pc_sales].[dbo].[dim_priority](

       priority
       
       )

       select distinct 
       
       priority

       from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_priority];

