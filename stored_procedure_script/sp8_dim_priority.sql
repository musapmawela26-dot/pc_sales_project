drop table [PC_Salesdb].[dbo].[dim_priority]
drop procedure [dbo].[sp_dim_priority]

create procedure sp_dim_priority
as begin
create table [PC_Salesdb].[dbo].[dim_priority](
	[Priority_ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Priority] [nvarchar](250) NOT NULL
	)
insert into [PC_Salesdb].[dbo].[dim_priority](Priority)
select distinct Priority
from [PC_Salesdb].[dbo].[PC_Data]
end;