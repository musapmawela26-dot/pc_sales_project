drop table [PC_Salesdb].[dbo].[dim_channel]
drop procedure [dbo].[sp_dim_channel]
create procedure sp_dim_channel
as begin
create table [PC_Salesdb].[dbo].[dim_channel](
	[Channel_ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Channel] [nvarchar](250) NOT NULL
	)
insert into [PC_Salesdb].[dbo].[dim_channel](Channel)
select distinct Channel
from [PC_Salesdb].[dbo].[PC_Data]
end;