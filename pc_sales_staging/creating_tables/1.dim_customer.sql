--create dim customer dimension table

create table [pc_sales].[dbo].[dim_customer](
       [Customer_ID] int identity(1,1) primary key,
       [Customer_Name] [nvarchar](250) NOT NULL,
       [Customer_Surname] [nvarchar](250) NOT NULL,
       [Customer_Contact_Number] [nvarchar](250) NOT NULL,
       [Customer_Email_Address] [nvarchar](250) NOT NULL
       )

--insert data into table

insert into [pc_sales].[dbo].[dim_customer](

            Customer_Name,

			Customer_Surname,

			Customer_Contact_Number,

			Customer_Email_Address
			)

            select distinct 
			
			Customer_Name,
			
			Customer_Surname,
			
			Customer_Contact_Number,
			
			Customer_Email_Address
            
			from [pc_sales].[dbo].[pc_data];

--validate the insert

select *

from [pc_sales].[dbo].[dim_customer];