
--creating channel dimensional table 
drop table if exists dim_channel;
select distinct 
       [channel]
into dim_channel
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_channel

--creating customer dimensional table
drop table if exists dim_customer
select distinct
       [Customer_Name],
       [Customer_Surname],
       [Customer_Contact_Number],
       [Customer_Email_Address]
into dim_customer
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_customer


--creating location dimensional table
drop table if exists dim_location
select distinct
       [Continent],
       [Country_or_State],
       [Province_or_City]
into dim_location
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_location

--creating shop dimensional table
drop table if exists dim_shop
select distinct
       [Shop_Name],
       [Shop_Age]
into dim_shop
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_shop

--creating PC dimensional table
drop table if exists dim_pc
select distinct
       [PC_Make],
       [PC_Model],
       [Storage_Type],
       [Storage_Capacity],
       [Ram]
into dim_pc
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_pc

--creating date dimensional table
drop table if exists dim_date
select distinct
       [Purchase_Date],
       [Ship_Date]
into dim_date
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_date

--creating employee dimensional table
drop table if exists dim_employee
select distinct
       [Sales_Person_Name],
       [Sales_Person_Department]
into dim_employee
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_employee

--creating payment dimensional table
drop table if exists dim_payment_method
select distinct
       [Payment_Method]
into dim_payment_method
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_payment_method

--creating priority dimensional table
drop table if exists dim_priority
select distinct
       [Priority]
into dim_priority
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_priority

--creating fact dimensional table
drop table if exists dim_fact_sales
select distinct
       [Credit_Score],
       [Cost_Of_Repairs],
       [Cost_Price],
       [Discount_Amount],
       [Finance_Amount],
       [PC_Market_Price],
       [Sale_Price],
       [Total_Sales_Per_Employee]
into dim_fact_sales
from [PC_Salesdb].[dbo].[PC_Data];

select * from dim_fact_sales

       






