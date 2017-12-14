CREATE TABLE [dbo].[Cell]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ParentID] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cell] ADD CONSTRAINT [PK__Cell__3214EC271455E0BD] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[Cell] ([ID], [ParentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[Cell] ([Name], [ParentID]) ON [PRIMARY]
GO
