
create table dim_customer
(   [Customer_Name] [nvarchar](250) NOT NULL,
	[Customer_Surname] [nvarchar](250) NOT NULL,
	[Customer_Contact_Number] [nvarchar](250) NOT NULL,
	[Customer_Email_Address] [nvarchar](250) NOT NULL,
	)

create table dim_location
(   [Continent] [nvarchar](250) NOT NULL,
	[Country_or_State] [nvarchar](250) NOT NULL,
	[Province_or_City] [nvarchar](250) NOT NULL,
	);

create table dim_shop
(   [Shop_Name] [nvarchar](250) NOT NULL,
	[Shop_Age] [nvarchar](250) NOT NULL,
	);

create table dim_pc
(   [PC_Make] [nvarchar](250) NOT NULL,
	[PC_Model] [nvarchar](250) NOT NULL,
	[Storage_Type] [nvarchar](250) NOT NULL,
	[Storage_Capacity] [nvarchar](250) NOT NULL,
	[RAM] [nvarchar](250) NOT NULL
	);

create table dim_date
(   [Purchase_Date] [datetime2](7) NOT NULL,
	[Ship_Date] [nvarchar](50) NOT NULL,
	);

create table dim_employee
(   [Sales_Person_Name] [nvarchar](250) NOT NULL,
	[Sales_Person_Department] [nvarchar](250) NOT NULL,
	);

create table dim_payment_method
(   [Payment_Method] [nvarchar](250) NOT NULL,
    );

create table dim_channel
(   [Channel] [nvarchar](250) NOT NULL,
    );

create table dim_priority
(   [Priority] [nvarchar](250) NOT NULL,
    );

create table dim_fact_sales
(   [Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Finance_Amount] [nvarchar](250) NOT NULL,
	[Cost_of_Repairs] [nvarchar](250) NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	);
