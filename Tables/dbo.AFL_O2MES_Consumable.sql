CREATE TABLE [dbo].[AFL_O2MES_Consumable]
(
[Consumable_RecID_Level4] [int] NULL,
[Consumable_Wip_ID] [int] NULL,
[Child_Job_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Component_Item_Number] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Purch_Category_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comp_Item_Desc] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cost_Per_Unit] [decimal] (15, 8) NULL,
[Cost_UOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Qty_BOM_Comp] [decimal] (15, 8) NOT NULL,
[Qty_UOM] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Qty_Per_Comp] [decimal] (15, 8) NULL,
[Op_Seq] [int] NULL,
[CreatedTime] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_Consumable_CreatedTime] DEFAULT (getdate()),
[LastModified] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_Consumable_LastModified] DEFAULT (getdate()),
[TransactionDateTime] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_Consumable_TransactionDateTime] DEFAULT (getdate()),
[Complete_Flag] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Organization_id] [int] NULL
) ON [PRIMARY]
GO
