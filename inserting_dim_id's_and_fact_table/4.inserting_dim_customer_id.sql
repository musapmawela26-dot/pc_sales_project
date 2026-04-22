--1 create if not exists
drop table [PC_Salesdb].[dbo].[dim_customer]
create table [PC_Salesdb].[dbo].[dim_customer](
    [Customer_ID] INT Identity(1,1) PRIMARY KEY,
	[Customer_Name] [nvarchar](250) NOT NULL,
	[Customer_Surname] [nvarchar](250) NOT NULL,
	[Customer_Contact_Number] [nvarchar](250) NOT NULL,
	[Customer_Email_Address] [nvarchar](250) NOT NULL
)

--2 inserting data in my dim customer table
insert into [PC_Salesdb].[dbo].[dim_customer](Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address)
select distinct Customer_Name,Customer_Surname,Customer_Contact_Number,Customer_Email_Address
from [PC_Salesdb].[dbo].[PC_Data];

