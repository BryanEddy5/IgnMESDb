CREATE TABLE [dbo].[REC_RecipeValue]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[RecipeValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_REC_RecipeValue_RecipeValueUUID] DEFAULT (newid()),
[RecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProdItemUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL CONSTRAINT [DF_REC_RecipeValue_TimeStamp] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_RecipeValue] ADD CONSTRAINT [PK__REC_Reci__3214EC27156FC9E4] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup4] ON [dbo].[REC_RecipeValue] ([ProdItemUUID], [RecipeUUID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_RecipeValue] ADD CONSTRAINT [IX_REC_RecipeValue] UNIQUE NONCLUSTERED  ([ProdItemUUID], [RecipeUUID], [ProdItemValueUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup3] ON [dbo].[REC_RecipeValue] ([ProdItemValueUUID], [RecipeUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[REC_RecipeValue] ([RecipeUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup2] ON [dbo].[REC_RecipeValue] ([RecipeUUID], [ProdItemValueUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup1] ON [dbo].[REC_RecipeValue] ([RecipeValueUUID]) ON [PRIMARY]
GO
