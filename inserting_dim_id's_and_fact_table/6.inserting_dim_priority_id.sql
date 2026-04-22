--1 create if does not exists
drop table  [PC_Salesdb].[dbo].[dim_priority]
create table  [PC_Salesdb].[dbo].[dim_priority](
       [Priority_ID] INT IDENTITY(1,1) PRIMARY KEY,
       [Priority] [nvarchar](250) NOT NULL
)

--insert data in my dim priority table
insert into  [PC_Salesdb].[dbo].[dim_priority](priority)
select distinct priority
from [PC_Salesdb].[dbo].[PC_Data];

