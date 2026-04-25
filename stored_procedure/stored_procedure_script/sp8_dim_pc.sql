--dim pc

create or alter procedure usp_dim_pc

as 

begin
          truncate table [pc_sales].[dbo].[dim_pc]

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

          from [pc_sales].[dbo].[pc_data]
          
end;
