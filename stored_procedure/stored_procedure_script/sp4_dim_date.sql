--dim date

create or alter procedure usp_dim_date

as 

begin
          truncate table [pc_sales].[dbo].[dim_date]

--insert data into table

          insert into [pc_sales].[dbo].[dim_date](
          
          Purchase_Date,
          
          Ship_Date
          
          )
          
          select distinct 
          
          Purchase_Date,
          
          Ship_Date
          
          from [pc_sales].[dbo].[pc_data]

end;
