CREATE TABLE [dbo].[QUAL_SampleNote]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SampleUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttrName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NoteType] [int] NULL,
[Note] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EnteredBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_SampleNote] ADD CONSTRAINT [PK__QUAL_Sam__3214EC27DB52FD71] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_NoteSample] ON [dbo].[QUAL_SampleNote] ([NoteType], [SampleUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[QUAL_SampleNote] ([SampleUUID], [AttrName], [TimeStamp]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent2] ON [dbo].[QUAL_SampleNote] ([SampleUUID], [NoteType]) ON [PRIMARY]
GO
