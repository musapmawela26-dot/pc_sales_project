--create if not exists
drop table [PC_Salesdb].[dbo].[dim_employee]
create table [PC_Salesdb].[dbo].[dim_employee](
       [Employee_ID] INT IDENTITY(1,1) PRIMARY KEY,
       [Sales_Person_Name] [nvarchar](250) NOT NULL,
       [Sales_Person_Department] [nvarchar](250) NOT NULL
)

--insert data in my dim employee table
insert into [PC_Salesdb].[dbo].[dim_employee](Sales_Person_Name,Sales_Person_Department)
select distinct Sales_Person_Name,Sales_Person_Department
from [PC_Salesdb].[dbo].[PC_Data];
select * from [PC_Salesdb].[dbo].[dim_employee];