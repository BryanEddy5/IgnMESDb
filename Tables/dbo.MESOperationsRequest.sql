CREATE TABLE [dbo].[MESOperationsRequest]
(
[MESOperationsRequestUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScheduleRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkOrderRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BeginDateTime] [datetime] NULL,
[EndDateTime] [datetime] NULL,
[OriginalBeginDateTime] [datetime] NULL,
[OriginalEndDateTime] [datetime] NULL,
[EnableUpdateEvent] [int] NOT NULL,
[UpdateEventInterval] [int] NOT NULL,
[TrackProgressBy] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScheduleState] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ORQ_SCHEDSTATE2] ON [dbo].[MESOperationsRequest] ([Enabled], [ScheduleState]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESOperationsRequestUUID] ON [dbo].[MESOperationsRequest] ([MESOperationsRequestUUID]) ON [PRIMARY]
GO
