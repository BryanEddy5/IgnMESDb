CREATE TABLE [dbo].[MESOperationsSegment]
(
[MESOperationsSegmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Version] [int] NULL,
[EndOperationWhenComplete] [int] NOT NULL,
[SegmentRecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DerivedFromRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DerivedFromRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESOperationsSegmentUUID] ON [dbo].[MESOperationsSegment] ([MESOperationsSegmentUUID]) ON [PRIMARY]
GO
