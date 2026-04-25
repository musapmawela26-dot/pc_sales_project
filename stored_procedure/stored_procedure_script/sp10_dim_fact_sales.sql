--dim fact table

create or alter procedure usp_dim_fact_table

as 

begin
          truncate table [pc_sales].[dbo].[dim_fact_sales]

--insert data into table

          insert into [pc_sales].[dbo].[dim_fact_sales](
          
          Credit_Score, 
       
          Cost_Of_Repairs,
         
          Cost_Price,
        
          Discount_Amount,

          Finance_Amount,

          PC_Market_Price,

          Sale_Price,

          Total_Sales_Per_Employee

          )

          select distinct

          Credit_Score, 

          Cost_Of_Repairs,

          Cost_Price,

          Discount_Amount,

          Finance_Amount,

          PC_Market_Price,

          Sale_Price,

          Total_Sales_Per_Employee

          from [pc_sales].[dbo].[pc_data]

end;
