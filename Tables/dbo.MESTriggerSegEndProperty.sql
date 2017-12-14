CREATE TABLE [dbo].[MESTriggerSegEndProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[Mode] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Auto] [int] NULL,
[SegmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomTriggerEvent] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FixedDuration] [int] NOT NULL,
[Timeout] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESTriggerSegEndProperty] ON [dbo].[MESTriggerSegEndProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESTriggerSegEndProperty] ON [dbo].[MESTriggerSegEndProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
