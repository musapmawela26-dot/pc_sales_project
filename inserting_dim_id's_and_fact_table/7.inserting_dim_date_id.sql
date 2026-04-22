--create if not exists
drop table [PC_Salesdb].[dbo].[dim_date]
create table [PC_Salesdb].[dbo].[dim_date](
    [Date_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](250) NOT NULL
)

--insert data in my dim date table
insert into [PC_Salesdb].[dbo].[dim_date](Purchase_Date,Ship_Date)
select distinct Purchase_Date,Ship_Date
from [PC_Salesdb].[dbo].[PC_Data];

