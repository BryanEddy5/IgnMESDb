CREATE TABLE [dbo].[MESResponseSegment]
(
[MESResponseSegmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentRecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationsResponseRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BeginDateTime] [datetime] NULL,
[EndDateTime] [datetime] NULL,
[OperationSegmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationSegmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RunningState] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExecuteEnabled] [int] NOT NULL,
[EndOperationWhenComplete] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESResponseSegmentUUID] ON [dbo].[MESResponseSegment] ([MESResponseSegmentUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RS_OPERATION] ON [dbo].[MESResponseSegment] ([OperationsResponseRefUUID]) ON [PRIMARY]
GO
