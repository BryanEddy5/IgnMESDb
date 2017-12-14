CREATE TABLE [dbo].[MESRequestSegment]
(
[MESRequestSegmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentRecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationsRequestRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BeginDateTime] [datetime] NULL,
[EndDateTime] [datetime] NULL,
[OperationSegmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OperationSegmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExecuteEnabled] [int] NOT NULL,
[EndOperationWhenComplete] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESRequestSegmentUUID] ON [dbo].[MESRequestSegment] ([MESRequestSegmentUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RQS_OPERATION] ON [dbo].[MESRequestSegment] ([OperationsRequestRefUUID], [BeginDateTime]) ON [PRIMARY]
GO
