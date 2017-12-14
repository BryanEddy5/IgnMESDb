CREATE TABLE [dbo].[MESResponseProductionProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[EquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModeRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModeRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OEERate] [float] NULL,
[InfeedEquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InfeedEquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InfeedScale] [float] NULL,
[RejectScale] [float] NULL,
[OutfeedEquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OutfeedEquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PackageCount] [float] NULL,
[InfeedUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OutfeedUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RejectUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EquipmentRef] ON [dbo].[MESResponseProductionProperty] ([EquipmentRefUUID], [Enable]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESResponseProductionProperty] ON [dbo].[MESResponseProductionProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESResponseProductionProperty] ON [dbo].[MESResponseProductionProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
