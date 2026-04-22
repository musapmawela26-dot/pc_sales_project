drop table [PC_Salesdb].[dbo].[dim_location]
drop procedure[dbo].[sp_dim_location]
create procedure sp_dim_location
as begin
create table [PC_Salesdb].[dbo].[dim_location](
	[Location_ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Continent] [nvarchar](250) NOT NULL,
	[Country_or_State] [nvarchar](250) NOT NULL,
	[Province_or_City] [nvarchar](250) NOT NULL
	)
insert into [PC_Salesdb].[dbo].[dim_location](Continent,Country_or_State,Province_or_City)
select distinct Continent,Country_or_State,Province_or_City
from [PC_Salesdb].[dbo].[PC_Data]
end;