drop table [PC_Salesdb].[dbo].[dim_employee]
drop procedure[dbo].[sp_dim_employee]
create procedure sp_dim_employee
as begin
create table [PC_Salesdb].[dbo].[dim_employee](
	[Employee_ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Sales_Person_Name] [nvarchar](250) NOT NULL,
	[Sales_Person_Department] [nvarchar](250) NOT NULL
	)
insert into [PC_Salesdb].[dbo].[dim_employee](Sales_Person_Name,Sales_Person_Department)
select distinct Sales_Person_Name,Sales_Person_Department
from [PC_Salesdb].[dbo].[PC_Data]
end;