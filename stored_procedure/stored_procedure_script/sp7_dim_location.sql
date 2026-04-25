--dim_location

create or alter procedure usp_dim_location

as 

begin
          truncate table [pc_sales].[dbo].[dim_location]

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

          from [pc_sales].[dbo].[pc_data]

end;