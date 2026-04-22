--1 create if not exists
drop table [PC_Salesdb].[dbo].[dim_channel]
create table [PC_Salesdb].[dbo].[dim_channel](
    [Channel_ID] INT IDENTITY (1,1) PRIMARY KEY,
	[Channel] [nvarchar](250) NOT NULL
)

insert into [PC_Salesdb].[dbo].[dim_channel](Channel)
select distinct Channel
from [PC_Salesdb].[dbo].[PC_Data];

