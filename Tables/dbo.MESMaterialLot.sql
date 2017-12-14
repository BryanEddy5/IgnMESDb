CREATE TABLE [dbo].[MESMaterialLot]
(
[MESMaterialLotUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ResponseSegmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotAssemblyType] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotLocationRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotLocationRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotSequence] [int] NOT NULL,
[LotAvailabilityStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESMaterialLotUUID] ON [dbo].[MESMaterialLot] ([MESMaterialLotUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESMaterialLot] ([Name]) ON [PRIMARY]
GO
