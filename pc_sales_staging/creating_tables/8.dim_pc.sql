--create dim pc dimension table
create table [pc_sales].[dbo].[dim_pc](
       [PC_ID] int identity(1,1) primary key,
       [PC_Make] [nvarchar](250) NOT NULL,
       [PC_Model] [nvarchar](250) NOT NULL,
       [Storage_Type] [nvarchar](250) NOT NULL,
       [Storage_Capacity] [nvarchar](250) NOT NULL,
       [Ram] [nvarchar](250) NOT NULL
       )

--insert data in my dim pc

insert into [pc_sales].[dbo].[dim_pc](

       PC_Make,
       
       PC_Model,
       
       Storage_Type,
       
       Storage_Capacity,
       
       Ram
       
       )

       select distinct 
       
       PC_Make,
       
       PC_Model,
       
       Storage_Type,
       
       Storage_Capacity,
       
       Ram

       from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_pc];
