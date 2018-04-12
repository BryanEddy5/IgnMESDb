CREATE TABLE [dbo].[SampleDef]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Version] [int] NOT NULL,
[Description] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[MeasCount] [int] NOT NULL,
[IntervalType] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Interval] [float] NOT NULL,
[Duration] [float] NOT NULL,
[AutoApprove] [int] NOT NULL,
[ComingDueMin] [float] NOT NULL,
[OverdueMin] [float] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SampleDef] ADD CONSTRAINT [PK__SampleDe__3214EC277DEC8825] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DefUUID] ON [dbo].[SampleDef] ([DefUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_NameVer] ON [dbo].[SampleDef] ([Name], [Version]) ON [PRIMARY]
GO
