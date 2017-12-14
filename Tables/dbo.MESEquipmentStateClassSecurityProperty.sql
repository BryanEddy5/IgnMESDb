CREATE TABLE [dbo].[MESEquipmentStateClassSecurityProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESEquipmentStateClassSecurityProperty] ON [dbo].[MESEquipmentStateClassSecurityProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESEquipmentStateClassSecurityProperty] ON [dbo].[MESEquipmentStateClassSecurityProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
