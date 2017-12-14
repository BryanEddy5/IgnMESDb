CREATE TABLE [dbo].[Location]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ParentID] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Location] ADD CONSTRAINT [PK__Location__3214EC27A1F44412] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[Location] ([ID], [ParentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[Location] ([Name], [ParentID]) ON [PRIMARY]
GO
