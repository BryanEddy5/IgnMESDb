CREATE TABLE [dbo].[Enterprise]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ProjectName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Enterprise] ADD CONSTRAINT [PK__Enterpri__3214EC27F365951B] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[Enterprise] ([ID], [ProjectName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[Enterprise] ([Name], [ProjectName]) ON [PRIMARY]
GO
