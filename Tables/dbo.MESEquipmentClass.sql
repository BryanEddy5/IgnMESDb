CREATE TABLE [dbo].[MESEquipmentClass]
(
[MESEquipmentClassUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Version] [int] NULL,
[StatusUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESEquipmentClassUUID] ON [dbo].[MESEquipmentClass] ([MESEquipmentClassUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESEquipmentClass] ([Name]) ON [PRIMARY]
GO
