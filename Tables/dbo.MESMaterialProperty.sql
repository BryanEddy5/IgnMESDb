CREATE TABLE [dbo].[MESMaterialProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[MaterialOptional] [int] NULL,
[MaterialProductionSelectable] [int] NULL,
[MaterialUse] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaterialAutoGenerateLot] [int] NOT NULL,
[MaterialRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialEquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialEquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialEnableSublots] [int] NOT NULL,
[MaterialLotNoSource] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaterialLotNoSourceLink] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialQuantitySource] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaterialQuantitySourceLink] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialQuantity] [float] NULL,
[MaterialUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialRatePeriod] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialRate] [float] NULL,
[MaterialCycleTime] [int] NOT NULL,
[MaterialFinalLotStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialAutoLotCompletion] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaterialLotDepletionWarning] [int] NOT NULL,
[MaterialLotStatusFilter] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EquipmentRef] ON [dbo].[MESMaterialProperty] ([MaterialEquipmentRefUUID], [Enable]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MaterialRef] ON [dbo].[MESMaterialProperty] ([MaterialRefUUID], [Enable]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESMaterialProperty] ON [dbo].[MESMaterialProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESMaterialProperty] ON [dbo].[MESMaterialProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
