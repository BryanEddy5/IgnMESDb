CREATE TABLE [dbo].[MESOperationsResponse]
(
[MESOperationsResponseUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PerformanceRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkOrderRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BeginDateTime] [datetime] NULL,
[EndDateTime] [datetime] NULL,
[EquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnableUpdateEvent] [int] NOT NULL,
[UpdateEventInterval] [int] NOT NULL,
[TrackProgressBy] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_VersionRef] ON [dbo].[MESOperationsResponse] ([EquipmentRefUUID], [BeginDateTime] DESC, [EndDateTime] DESC, [Enabled]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESOperationsResponseUUID] ON [dbo].[MESOperationsResponse] ([MESOperationsResponseUUID]) ON [PRIMARY]
GO
