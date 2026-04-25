--dim priority

create or alter procedure usp_dim_priority

as 

begin
          truncate table [pc_sales].[dbo].[dim_priority]

--insert data into table

          insert into  [pc_sales].[dbo].[dim_priority](
          
          priority
          
          )
          
          select distinct 
          
          priority
          
          from [pc_sales].[dbo].[pc_data]

end;

