CREATE TABLE [dbo].[AFL_O2MES_TubeJob]
(
[Tube_RecID_Level2] [int] NOT NULL,
[Consumable_RecID_Level4] [int] NULL,
[Tube_Wip_ID] [int] NULL,
[Tube_Job_Num] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Primary_UOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Primary_Qty] [decimal] (10, 2) NULL,
[SetUp_Start_Time] [datetime] NULL,
[Run_Start_Time] [datetime] NULL,
[End_Time] [datetime] NULL,
[Item_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Machine_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tube_Op_Seq] [int] NULL,
[Min_Cut_Length] [decimal] (10, 2) NULL,
[Flag_Cancel_Remake] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Recipe_Setup_Number] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiber_Count] [int] NULL,
[Fiber_Master_Set] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Consumable_Item_Count] [int] NULL,
[CreatedTime] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_TubeJob_CreatedTime] DEFAULT (getdate()),
[LastModified] [datetime] NULL,
[TransactionDateTime] [datetime] NULL,
[MES_ProcessStatus] [int] NULL CONSTRAINT [DF_AFL_O2MES_TubeJob_MES_ProcessStatus] DEFAULT ((1))
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Possible Values are 
1 indicates Oracle inserted the Tube Job record into Staging table, but MES not yet processed
 2 indicates MES successfully processed the Tube job record and created work order, Schedule in MES .
3 indicates MES successfully handled the Tube Job record after the Cancel/Remake flag updated
 -1 indicates MES failed to process the record.
 -2 indicates MES failed to handle Cancel/Remake 
', 'SCHEMA', N'dbo', 'TABLE', N'AFL_O2MES_TubeJob', 'COLUMN', N'MES_ProcessStatus'
GO
