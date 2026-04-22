drop table [PC_Salesdb].[dbo].[dim_fact_sales]
drop procedure [dbo].[sp_dim_fact_table]

create procedure sp_dim_fact_table
as begin
create table [PC_Salesdb].[dbo].[dim_fact_sales](
       [Sale_ID] INT IDENTITY(1,1) PRIMARY KEY,
       [Customer_ID] INT,
       [Channel_ID] INT,
       [Priority_ID] INT,
       [Date_ID] INT,
       [Employee_ID] INT,
       [Location_ID] INT,
       [Payment_ID] INT,
       [PC_ID] INT,
       [Shop_ID] INT,
       [Credit_Score] [int] not null, 
       [Cost_Of_Repairs] [nvarchar](250) not null,
       [Cost_Price] [INT] not null,
       [Discount_Amount] [INT] not null,
       [Finance_Amount] [nvarchar](250) not null,
       [PC_Market_Price] [INT] not null,
       [Sale_Price] [INT] not null,
       [Total_Sales_Per_Employee] [INT] not null,
       constraint fk_Customer_id
                  foreign key (Customer_id) 
                  references [PC_Salesdb].[dbo].[dim_customer](Customer_id),
       constraint fk_Channel_id
                  foreign key (Channel_id)
                  references [PC_Salesdb].[dbo].[dim_channel](Channel_id),
       constraint fk_Priority_id
                  foreign key (Priority_id)
                  references [PC_Salesdb].[dbo].[dim_priority](Priority_id),
       constraint fk_Date_id
                  foreign key (Date_id)
                  references [PC_Salesdb].[dbo].[dim_date](Date_id),
       constraint fk_Employee_id
                  foreign key (Employee_id)
                  references [PC_Salesdb].[dbo].[dim_employee](Employee_id),
       constraint fk_Location_id
                  foreign key (Location_id)
                  references [PC_Salesdb].[dbo].[dim_location](Location_id),
       constraint fk_Payment_Method_id
                  foreign key (Payment_id)
                  references [PC_Salesdb].[dbo].[dim_payment_method](Payment_id),
       constraint fk_PC_id
                  foreign key (PC_id)
                  references [PC_Salesdb].[dbo].[dim_pc](PC_ID),
       constraint fk_Shop_id
                  foreign key (Shop_id)
                  references [PC_Salesdb].[dbo].[dim_shop](Shop_id),
                  )

  insert into [PC_Salesdb].[dbo].[dim_fact_sales](
       [Credit_Score], 
       [Cost_Of_Repairs],
       [Cost_Price],
       [Discount_Amount],
       [Finance_Amount],
       [PC_Market_Price],
       [Sale_Price],
       [Total_Sales_Per_Employee]
       )

select distinct
       [Credit_Score], 
       [Cost_Of_Repairs],
       [Cost_Price],
       [Discount_Amount],
       [Finance_Amount],
       [PC_Market_Price],
       [Sale_Price],
       [Total_Sales_Per_Employee]
from [PC_Salesdb].[dbo].[PC_Data]
end;