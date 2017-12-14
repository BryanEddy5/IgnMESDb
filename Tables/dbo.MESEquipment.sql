CREATE TABLE [dbo].[MESEquipment]
(
[MESEquipmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Version] [int] NULL,
[EquipmentPath] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentIgnitionSchedule] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentLotHandlingMode] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentZeroLotThreshold] [float] NULL,
[EquipmentZeroLotThresholdMethod] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentStateClassUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentModeClassUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentCellOrder] [int] NULL,
[EquipmentDowntimeDetectionMode] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentMinCellsRunningThreshold] [int] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESEquipmentUUID] ON [dbo].[MESEquipment] ([MESEquipmentUUID]) ON [PRIMARY]
GO
