CREATE TABLE [dbo].[MESResponseEquipmentProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[EquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentQuantity] [float] NULL,
[EquipmentUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentUse] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentRefPath] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EquipmentRef] ON [dbo].[MESResponseEquipmentProperty] ([EquipmentRefUUID], [Enable]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESResponseEquipmentProperty] ON [dbo].[MESResponseEquipmentProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESResponseEquipmentProperty] ON [dbo].[MESResponseEquipmentProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
