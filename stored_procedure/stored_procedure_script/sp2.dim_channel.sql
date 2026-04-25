--dim channel

create or alter procedure usp_dim_channel

as 

begin
          truncate table [pc_sales].[dbo].[dim_channel];

--insert data into table 

          insert into [pc_sales].[dbo].[dim_channel](
          
          Channel
          
          )
          
          select distinct
          
          Channel
          
          from [pc_sales].[dbo].[pc_data]

end;
