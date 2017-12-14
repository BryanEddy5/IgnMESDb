CREATE TABLE [dbo].[REC_ChangeLog]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ChangeLogUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChangeSetUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Reversable] [int] NOT NULL,
[EntryType] [int] NOT NULL,
[RecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProdItemUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Info] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChangedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FromValue] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ToValue] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Note] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_ChangeLog] ADD CONSTRAINT [PK__REC_Chan__3214EC27EB92B0E9] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ChangedBy] ON [dbo].[REC_ChangeLog] ([ChangedBy], [TimeStamp] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup] ON [dbo].[REC_ChangeLog] ([ChangeLogUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[REC_ChangeLog] ([EntryType], [TimeStamp] DESC) ON [PRIMARY]
GO
