CREATE TABLE [dbo].[MESSegmentDependencyProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[SegmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentDependencyType] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SegmentDependencyFactor] [float] NULL,
[SegmentDependencyFactorUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESSegmentDependencyProperty] ON [dbo].[MESSegmentDependencyProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESSegmentDependencyProperty] ON [dbo].[MESSegmentDependencyProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SegmentRef] ON [dbo].[MESSegmentDependencyProperty] ([SegmentRefUUID], [Enable]) ON [PRIMARY]
GO
