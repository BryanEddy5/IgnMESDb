CREATE TABLE [dbo].[StorageUnit]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ParentID] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StorageUnit] ADD CONSTRAINT [PK__StorageU__3214EC270CAD6AAF] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[StorageUnit] ([ID], [ParentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[StorageUnit] ([Name], [ParentID]) ON [PRIMARY]
GO
