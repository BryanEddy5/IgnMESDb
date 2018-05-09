CREATE TABLE [dbo].[AFL_O2MES_FiberReels]
(
[Child_Job_number] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber_Master_Set] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Fiber_Set] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Lot] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Component_Item_Num] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber_Color] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Min_Comp_Qty] [float] NULL,
[Reel_Lot_Qty] [float] NULL,
[Primary_UOM] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartUp_Fiber_Planner] [float] NULL,
[Cost_Per_Unit] [float] NULL,
[Cost_UOM] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cart_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OP_Seq] [int] NULL,
[CreatedTime] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_FiberReels_CreatedTime] DEFAULT (getdate()),
[LastModified] [datetime] NULL,
[TransactionDateTime] [datetime] NULL,
[Complete_Flag] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Organization_id] [int] NULL
) ON [PRIMARY]
GO
