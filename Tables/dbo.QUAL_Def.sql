CREATE TABLE [dbo].[QUAL_Def]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Version] [int] NOT NULL,
[MeasCount] [int] NOT NULL,
[Enabled] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_Def] ADD CONSTRAINT [PK__QUAL_Def__3214EC2734B3AFC5] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[QUAL_Def] ([DefUUID], [Version]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[QUAL_Def] ([Name], [Version]) ON [PRIMARY]
GO
