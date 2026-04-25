--create dim employee dimension table

create table [pc_sales].[dbo].[dim_employee](
       [Employee_ID] int identity(1,1) primary key,
       [Sales_Person_Name] [nvarchar](250) NOT NULL,
       [Sales_Person_Department] [nvarchar](250) NOT NULL
       )

--insert data into table

insert into [pc_sales].[dbo].[dim_employee](
       
       Sales_Person_Name,
       
       Sales_Person_Department
       
       )

       select distinct 
       
       Sales_Person_Name,
       
       Sales_Person_Department

       from [pc_sales].[dbo].[pc_data];

--validate the insert
select * 

from [pc_sales].[dbo].[dim_employee];