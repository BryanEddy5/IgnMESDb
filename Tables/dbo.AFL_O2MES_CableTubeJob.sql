CREATE TABLE [dbo].[AFL_O2MES_CableTubeJob]
(
[Cable_RecID_Level3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Tube_RecID_Level2] [int] NULL,
[Sales_RecID_Level1] [int] NULL,
[Cable_Job_Num] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cable_Wip_ID] [int] NULL,
[Tube_Job_Num] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tube_Wip_ID] [int] NULL,
[Consumed_Op_Seq] [int] NULL,
[Min_Qty_Op_Seq] [decimal] (10, 2) NULL,
[Flag_Cancel_Remake] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedTime] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_CableTubeJob_CreatedTime] DEFAULT (getdate()),
[LastModified] [datetime] NULL,
[TransactionDateTime] [datetime] NULL
) ON [PRIMARY]
GO
