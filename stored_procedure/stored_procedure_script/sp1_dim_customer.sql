--dim customer

create or alter procedure usp_dim_customer
as 

begin
          truncate table [pc_sales].[dbo].[dim_customer]

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
          
          from [pc_sales].[dbo].[pc_data]

end;

