CREATE TABLE [dbo].[MESEquipmentModeClass]
(
[MESEquipmentModeClassUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentModeClassDefault] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESEquipmentModeClassUUID] ON [dbo].[MESEquipmentModeClass] ([MESEquipmentModeClassUUID]) ON [PRIMARY]
GO
