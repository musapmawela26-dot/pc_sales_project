--create if not exists      
drop table [PC_Salesdb].[dbo].[dim_pc]
create table [PC_Salesdb].[dbo].[dim_pc](
      [PC_ID] INT IDENTITY(1,1) PRIMARY KEY,
      [PC_Make] [nvarchar](250) NOT NULL,
      [PC_Model] [nvarchar](250) NOT NULL,
      [Storage_Type] [nvarchar](250) NOT NULL,
      [Storage_Capacity] [nvarchar](250) NOT NULL,
      [Ram] [nvarchar](250) NOT NULL
)

--insert data in my dim pc
insert into [PC_Salesdb].[dbo].[dim_pc](PC_Make,PC_Model,Storage_Type,Storage_Capacity,Ram)
select distinct PC_Make,PC_Model,Storage_Type,Storage_Capacity,Ram
from [PC_Salesdb].[dbo].[PC_Data];
