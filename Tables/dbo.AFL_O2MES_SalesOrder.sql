CREATE TABLE [dbo].[AFL_O2MES_SalesOrder]
(
[Sales_RecID_Level1] [int] NOT NULL,
[CustomerID] [int] NULL,
[Customer_Name] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sales_Order_Line_No] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item_Desc] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sales_Order_UOM] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sales_Ord_Qty] [decimal] (10, 2) NULL,
[Item_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromiseDate] [datetime] NULL,
[Primary_UOM] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Primary_Qty] [decimal] (10, 2) NULL,
[Flag_Cancel_Remake] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedTime] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_SalesOrder_CreatedTime] DEFAULT (getdate()),
[LastModified] [datetime] NULL,
[TransactionDateTime] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_SalesOrder_TransactionDateTime] DEFAULT (getdate())
) ON [PRIMARY]
GO
