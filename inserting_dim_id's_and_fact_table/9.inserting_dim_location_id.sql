--create if not exists
drop table [PC_Salesdb].[dbo].[dim_location]
create table [PC_Salesdb].[dbo].[dim_location](
      [Location_ID] INT IDENTITY(1,1) PRIMARY KEY,
      [Continent] [nvarchar](250) NOT NULL,
      [Country_or_State] [nvarchar](250) NOT NULL,
      [Province_or_City] [nvarchar](250) NOT NULL
)

--insert data in my dim location table
insert into [PC_Salesdb].[dbo].[dim_location](Continent,Country_or_State,Province_or_City)
select distinct Continent,Country_or_State,Province_or_City
from [PC_Salesdb].[dbo].[PC_Data];

