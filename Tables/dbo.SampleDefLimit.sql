CREATE TABLE [dbo].[SampleDefLimit]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SampleDefID] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Kind] [int] NOT NULL,
[Group] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enabled] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SampleDefLimit] ADD CONSTRAINT [PK__SampleDe__3214EC271A9F9F97] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[SampleDefLimit] ([SampleDefID]) ON [PRIMARY]
GO
