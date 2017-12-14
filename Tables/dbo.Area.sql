CREATE TABLE [dbo].[Area]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ParentID] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Area] ADD CONSTRAINT [PK__Area__3214EC2745B880ED] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[Area] ([ID], [ParentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[Area] ([Name], [ParentID]) ON [PRIMARY]
GO
