CREATE TABLE [dbo].[AFL_O2MES_ResourcePlannerTable]
(
[ResourcePlannerGUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AFL_O2MES_ResourcePlannerTable_ResourcePlannerGUID] DEFAULT (newid()),
[EquipmentLine] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[JobType] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StartTime] [datetime] NULL,
[Duration] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EndTime] [datetime] NULL,
[ModifiedFlag] [bit] NULL,
[ProcessedFlag] [bit] NULL CONSTRAINT [DF_AFL_O2MES_ResourcePlannerTable_ProcessedFlag] DEFAULT ((0)),
[CreatedDate] [datetime] NULL CONSTRAINT [DF_AFL_O2MES_ResourcePlannerTable_CreatedDate] DEFAULT (getdate()),
[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
