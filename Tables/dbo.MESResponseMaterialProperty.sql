CREATE TABLE [dbo].[MESResponseMaterialProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[LotRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotMaterialRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotMaterialRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotAllocatedQuantity] [float] NULL,
[LotRefSequence] [int] NULL,
[LotNoSource] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LotNoSourceLink] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotManualLotNo] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotAutoGenerate] [int] NOT NULL,
[LotUse] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LotBeginDateTime] [datetime] NULL,
[LotEndDateTime] [datetime] NULL,
[LotEquipmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotEquipmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotSegmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotQuantity] [float] NULL,
[LotRate] [float] NULL,
[LotRatePeriod] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotCycleTime] [int] NULL,
[LotQuantitySource] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LotQuantitySourceLink] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotQuantityUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotPropertyStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LotFinalLotStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotEnableSublots] [int] NOT NULL,
[LotOptional] [int] NOT NULL,
[LotProductionSelectable] [int] NULL,
[LotStatusFilter] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EquipmentRef] ON [dbo].[MESResponseMaterialProperty] ([LotEquipmentRefUUID], [Enable]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MaterialRef] ON [dbo].[MESResponseMaterialProperty] ([LotMaterialRefUUID], [Enable]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LotRef] ON [dbo].[MESResponseMaterialProperty] ([LotRefUUID], [LotUse]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SegRef] ON [dbo].[MESResponseMaterialProperty] ([LotSegmentRefUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESResponseMaterialProperty] ON [dbo].[MESResponseMaterialProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESResponseMaterialProperty] ON [dbo].[MESResponseMaterialProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
