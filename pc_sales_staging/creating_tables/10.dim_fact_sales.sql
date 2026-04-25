--create dim fact sales dimension table

create table [pc_sales].[dbo].[dim_fact_sales](
       [Sale_ID] int identity(1,1) primary key,
       [Customer_ID] int,
       [Channel_ID] int,
       [Priority_ID] int,
       [Date_ID] int,
       [Employee_ID] int,
       [Location_ID] int,
       [Payment_ID] int,
       [PC_ID] int,
       [Shop_ID] int,
       [Credit_Score] int NOT NULL, 
       [Cost_Of_Repairs] [nvarchar](250) NOT NULL,
       [Cost_Price] int NOT NULL,
       [Discount_Amount] int NOT NULL,
       [Finance_Amount] [nvarchar](250) NOT NULL,
       [PC_Market_Price] int NOT NULL,
       [Sale_Price] int NOT NULL,
       [Total_Sales_Per_Employee] int NOT NULL,
       constraint fk_Customer_id
                  foreign key (Customer_id) 
                  references [pc_sales].[dbo].[dim_customer](Customer_id),
       constraint fk_Channel_id
                  foreign key (Channel_id)
                  references [pc_sales].[dbo].[dim_channel](Channel_id),
       constraint fk_Priority_id
                  foreign key (Priority_id)
                  references [pc_sales].[dbo].[dim_priority](Priority_id),
       constraint fk_Date_id
                  foreign key (Date_id)
                  references [pc_sales].[dbo].[dim_date](Date_id),
       constraint fk_Employee_id
                  foreign key (Employee_id)
                  references [pc_sales].[dbo].[dim_employee](Employee_id),
       constraint fk_Location_id
                  foreign key (Location_id)
                  references [pc_sales].[dbo].[dim_location](Location_id),
       constraint fk_Payment_Method_id
                  foreign key (Payment_id)
                  references [pc_sales].[dbo].[dim_payment_method](Payment_id),
       constraint fk_PC_id
                  foreign key (PC_id)
                  references [pc_sales].[dbo].[dim_pc](PC_ID),
       constraint fk_Shop_id
                  foreign key (Shop_id)
                  references [pc_sales].[dbo].[dim_shop](Shop_id),
                  )

--insert data into table

  insert into [pc_sales].[dbo].[dim_fact_sales](

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

         from [pc_sales].[dbo].[pc_data];

--validate the insert

select * 

from [pc_sales].[dbo].[dim_fact_sales];