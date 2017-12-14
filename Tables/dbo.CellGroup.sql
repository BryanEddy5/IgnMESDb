CREATE TABLE [dbo].[CellGroup]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ParentID] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CellGroup] ADD CONSTRAINT [PK__CellGrou__3214EC27EA3673F1] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[CellGroup] ([ID], [ParentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[CellGroup] ([Name], [ParentID]) ON [PRIMARY]
GO
