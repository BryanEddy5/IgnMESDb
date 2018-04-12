CREATE TABLE [dbo].[QUAL_DefLimit]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttrName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enterprise] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Site] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Area] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Location] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LimitName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LimitValue] [float] NULL,
[LimitKind] [int] NOT NULL,
[LimitGroup] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductCode] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_DefLimit] ADD CONSTRAINT [PK__QUAL_Def__3214EC272E470B26] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[QUAL_DefLimit] ([DefUUID], [AttrName], [LimitName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent2] ON [dbo].[QUAL_DefLimit] ([DefUUID], [AttrName], [LimitName], [ProductCode]) ON [PRIMARY]
GO
