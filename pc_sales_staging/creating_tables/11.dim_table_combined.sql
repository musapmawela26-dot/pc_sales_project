--creating dimensional tables

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

--create dim channel dimension table

create table [pc_sales].[dbo].[dim_channel](
       [Channel_ID] int identity(1,1) primary key,
	   [Channel] [nvarchar](250) NOT NULL
       )

--insert data into table 

insert into [pc_sales].[dbo].[dim_channel](

       Channel

       )

       select distinct 
       
       Channel

       from [pc_sales].[dbo].[pc_data];

--create dim priority dimension table

create table [pc_sales].[dbo].[dim_priority](
       [Priority_ID] int identity(1,1) primary key,
       [Priority] [nvarchar](250) NOT NULL
       )

--insert data into table

insert into  [pc_sales].[dbo].[dim_priority](

       priority
       
       )

       select distinct 
       
       priority

       from [pc_sales].[dbo].[pc_data];

--create dim date dimension table

create table [pc_sales].[dbo].[dim_date](
       [Date_ID] int identity(1,1) primary key,
	   [Purchase_Date] [datetime2](7) NOT NULL,
	   [Ship_Date] [date] NULL
       )

--insert data into table

insert into [pc_sales].[dbo].[dim_date](

       Purchase_Date,
       
       Ship_Date
       
       )

       select distinct 
       Purchase_Date,
       
       try_cast(ship_date as date)
       
       from [pc_sales].[dbo].[pc_data];

--create dim employee dimension table

create table [pc_sales].[dbo].[dim_employee](
       [Employee_ID] int identity(1,1) primary key,
       [Sales_Person_Name] [nvarchar](250) NOT NULL,
       [Sales_Person_Department] [nvarchar](250) NOT NULL
       )

--insert data into table

insert into [pc_sales].[dbo].[dim_employee](
       
       Sales_Person_Name,
       
       Sales_Person_Department
       
       )

       select distinct 
       
       Sales_Person_Name,
       
       Sales_Person_Department

       from [pc_sales].[dbo].[pc_data];

--create dim location dimension table
create table [pc_sales].[dbo].[dim_location](
       [Location_ID] int identity(1,1) primary key,
       [Continent] [nvarchar](250) NOT NULL,
       [Country_or_State] [nvarchar](250) NOT NULL,
       [Province_or_City] [nvarchar](250) NOT NULL
       )

--insert data in my dim location table

insert into [pc_sales].[dbo].[dim_location](
       
       Continent,
       
       Country_or_State,
       
       Province_or_City
       
       )

       select distinct 
       
       Continent,
       
       Country_or_State,
       
       Province_or_City

       from [pc_sales].[dbo].[pc_data];

--create dim payment method dimension table
create table [pc_sales].[dbo].[dim_payment_method](
       [Payment_ID] int identity(1,1) primary key,
       [Payment_Method] [nvarchar](250) NOT NULL
       )

--insert data in my dim payment method table

insert into [pc_sales].[dbo].[dim_payment_method](
       
       Payment_Method
       
       )

       select distinct 
       
       Payment_Method

       from [pc_sales].[dbo].[pc_data];

--create dim pc dimension table
create table [pc_sales].[dbo].[dim_pc](
       [PC_ID] int identity(1,1) primary key,
       [PC_Make] [nvarchar](250) NOT NULL,
       [PC_Model] [nvarchar](250) NOT NULL,
       [Storage_Type] [nvarchar](250) NOT NULL,
       [Storage_Capacity] [nvarchar](250) NOT NULL,
       [Ram] [nvarchar](250) NOT NULL
       )

--insert data in my dim pc

insert into [pc_sales].[dbo].[dim_pc](

       PC_Make,
       
       PC_Model,
       
       Storage_Type,
       
       Storage_Capacity,
       
       Ram
       
       )

       select distinct 
       
       PC_Make,
       
       PC_Model,
       
       Storage_Type,
       
       Storage_Capacity,
       
       Ram

       from [pc_sales].[dbo].[pc_data];

--create dim shop dimension table
create table [pc_sales].[dbo].[dim_shop](
       [Shop_ID] int identity(1,1) primary key,
       [Shop_Name] [nvarchar](250) NOT NULL,
       [Shop_Age] [nvarchar](250) NOT NULL
       )

--insert data into table

insert into [pc_sales].[dbo].[dim_shop](

            Shop_Name,
            
            Shop_Age
            
            )

            select distinct 
            
            Shop_Name,
            
            Shop_Age

            from [pc_sales].[dbo].[pc_data];

--create dim fact sales dimension table

create table [pc_sales].[dbo].[dim_fact_sales](
       [Sale_ID] int identity(1,1) primary key,
       [Customer_ID] int,
       [Channel_ID] int,
       [Priority_ID] int,
       [Date_ID] int,
       [Employee_ID] int,
       [Location_ID] int,
       [Payment_ID] int,
       [PC_ID] int,
       [Shop_ID] int,
       [Credit_Score] int NOT NULL, 
       [Cost_Of_Repairs] [nvarchar](250) NOT NULL,
       [Cost_Price] int NOT NULL,
       [Discount_Amount] int NOT NULL,
       [Finance_Amount] [nvarchar](250) NOT NULL,
       [PC_Market_Price] int NOT NULL,
       [Sale_Price] int NOT NULL,
       [Total_Sales_Per_Employee] int NOT NULL,
       constraint fk_Customer_id
                  foreign key (Customer_id) 
                  references [pc_sales].[dbo].[dim_customer](Customer_id),
       constraint fk_Channel_id
                  foreign key (Channel_id)
                  references [pc_sales].[dbo].[dim_channel](Channel_id),
       constraint fk_Priority_id
                  foreign key (Priority_id)
                  references [pc_sales].[dbo].[dim_priority](Priority_id),
       constraint fk_Date_id
                  foreign key (Date_id)
                  references [pc_sales].[dbo].[dim_date](Date_id),
       constraint fk_Employee_id
                  foreign key (Employee_id)
                  references [pc_sales].[dbo].[dim_employee](Employee_id),
       constraint fk_Location_id
                  foreign key (Location_id)
                  references [pc_sales].[dbo].[dim_location](Location_id),
       constraint fk_Payment_Method_id
                  foreign key (Payment_id)
                  references [pc_sales].[dbo].[dim_payment_method](Payment_id),
       constraint fk_PC_id
                  foreign key (PC_id)
                  references [pc_sales].[dbo].[dim_pc](PC_ID),
       constraint fk_Shop_id
                  foreign key (Shop_id)
                  references [pc_sales].[dbo].[dim_shop](Shop_id),
                  )

--insert data into table

  insert into [pc_sales].[dbo].[dim_fact_sales](

         [Credit_Score], 

         [Cost_Of_Repairs],

         [Cost_Price],

         [Discount_Amount],

         [Finance_Amount],

         [PC_Market_Price],

         [Sale_Price],

         [Total_Sales_Per_Employee]

         )

         select distinct

         [Credit_Score],
         
         [Cost_Of_Repairs],

         [Cost_Price],

         [Discount_Amount],

         [Finance_Amount],

         [PC_Market_Price],

         [Sale_Price],

         [Total_Sales_Per_Employee]

         from [pc_sales].[dbo].[pc_data];











