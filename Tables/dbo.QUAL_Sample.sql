CREATE TABLE [dbo].[QUAL_Sample]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SampleUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProductCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RefNo] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enterprise] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Site] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Area] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScheduledStart] [datetime] NULL,
[ScheduledFinish] [datetime] NULL,
[SampleTakenDateTime] [datetime] NULL,
[EntryDateTime] [datetime] NULL,
[Shift] [int] NULL,
[SequenceDate] [datetime] NULL,
[Approved] [int] NOT NULL,
[Exclude] [int] NOT NULL,
[SampleTakenBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ApprovedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ApprovedDateTime] [datetime] NULL,
[Tag] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Note] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NoteEnteredBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_Sample] ADD CONSTRAINT [PK__QUAL_Sam__3214EC27DDEA8EF7] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SPCData] ON [dbo].[QUAL_Sample] ([DefUUID], [Enterprise], [Site], [Area], [Line], [Location], [Approved], [SampleTakenDateTime] DESC, [SampleUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SampleTime] ON [dbo].[QUAL_Sample] ([DefUUID], [SampleTakenDateTime] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent2] ON [dbo].[QUAL_Sample] ([DefUUID], [SampleTakenDateTime] DESC, [Enterprise], [Site], [Area], [Line], [Location], [Approved]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Location2] ON [dbo].[QUAL_Sample] ([Enterprise], [Site], [Area], [Line], [Location], [Approved], [Exclude], [SampleTakenDateTime] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent4] ON [dbo].[QUAL_Sample] ([Enterprise], [Site], [Area], [Line], [Location], [DefUUID], [ScheduledStart]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent3] ON [dbo].[QUAL_Sample] ([Enterprise], [Site], [Area], [Line], [Location], [SampleTakenDateTime] DESC, [DefUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SampleUUID] ON [dbo].[QUAL_Sample] ([SampleUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Seq] ON [dbo].[QUAL_Sample] ([SequenceDate] DESC, [Shift], [TimeStamp]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Tag] ON [dbo].[QUAL_Sample] ([Tag], [SampleTakenDateTime] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TimeStamp] ON [dbo].[QUAL_Sample] ([TimeStamp] DESC) ON [PRIMARY]
GO
