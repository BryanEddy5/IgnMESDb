CREATE TABLE [dbo].[MESEquipmentState]
(
[MESEquipmentStateUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentStateCode] [int] NOT NULL,
[EquipmentStateType] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EquipmentStateShortStopThreshold] [int] NOT NULL,
[EquipmentStateOverride] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EquipmentStateOverrideScope] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EquipmentEnableMeantimeMetrics] [int] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESEquipmentStateUUID] ON [dbo].[MESEquipmentState] ([MESEquipmentStateUUID]) ON [PRIMARY]
GO
