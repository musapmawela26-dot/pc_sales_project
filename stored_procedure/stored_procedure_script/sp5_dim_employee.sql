--dim employee 

create or alter procedure usp_dim_employee

as

begin
          truncate table [pc_sales].[dbo].[dim_employee] 

--insert data into table

          insert into [pc_sales].[dbo].[dim_employee](
          
          Sales_Person_Name,

          Sales_Person_Department
          
          )

          select distinct 
          
          Sales_Person_Name,
          
          Sales_Person_Department
          
          from [pc_sales].[dbo].[pc_data]

end;

