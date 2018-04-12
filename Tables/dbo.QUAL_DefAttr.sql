CREATE TABLE [dbo].[QUAL_DefAttr]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttrName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[DataType] [int] NOT NULL,
[Format] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Units] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MeasCount] [int] NULL,
[DefaultChart] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Weight] [float] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_DefAttr] ADD CONSTRAINT [PK__QUAL_Def__3214EC277CCBFC2A] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[QUAL_DefAttr] ([AttrName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[QUAL_DefAttr] ([DefUUID]) ON [PRIMARY]
GO
