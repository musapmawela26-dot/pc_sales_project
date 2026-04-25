--create dim date dimension table

create table [pc_sales].[dbo].[dim_date](
       [Date_ID] int identity(1,1) primary key,
	   [Purchase_Date] [datetime2](7) NOT NULL,
	   [Ship_Date] [nvarchar](50) NOT NULL
       )

--insert data into table

insert into [pc_sales].[dbo].[dim_date](

       Purchase_Date,
       
       Ship_Date
       
       )

       select distinct 

       Purchase_Date,
       
       ship_date
       
       from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_date];

