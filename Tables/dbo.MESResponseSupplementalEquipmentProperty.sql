CREATE TABLE [dbo].[MESResponseSupplementalEquipmentProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[EquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentQuantity] [float] NULL,
[EquipmentUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentBeginDateTime] [datetime] NULL,
[EquipmentEndDateTime] [datetime] NULL,
[EquipmentSegmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentUse] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentOptional] [int] NULL,
[EquipmentProductionSelectable] [int] NULL,
[EquipmentPropertyStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EquipmentRef] ON [dbo].[MESResponseSupplementalEquipmentProperty] ([EquipmentRefUUID], [Enable]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESResponseSupplementalEquipmentProperty] ON [dbo].[MESResponseSupplementalEquipmentProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESResponseSupplementalEquipmentProperty] ON [dbo].[MESResponseSupplementalEquipmentProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
