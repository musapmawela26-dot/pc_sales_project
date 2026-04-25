--create dim channel dimension table

create table [pc_sales].[dbo].[dim_channel](
       [Channel_ID] int identity(1,1) primary key,
	   [Channel] [nvarchar](250) NOT NULL
       )

--insert data into table 

insert into [pc_sales].[dbo].[dim_channel](

       Channel

       )

       select distinct 
       
       Channel

       from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_channel];

