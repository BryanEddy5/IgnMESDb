CREATE TABLE [dbo].[REC_Recipe]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[RecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_REC_Recipe_RecipeUUID] DEFAULT (newid()),
[ProjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ParentRecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[State] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Group] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Deleted] [int] NOT NULL CONSTRAINT [DF_REC_Recipe_Deleted] DEFAULT ((0)),
[TimeStamp] [datetime] NOT NULL CONSTRAINT [DF_REC_Recipe_TimeStamp] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_Recipe] ADD CONSTRAINT [PK__REC_Reci__3214EC277B9C2AE3] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Group] ON [dbo].[REC_Recipe] ([Group]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Name] ON [dbo].[REC_Recipe] ([Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[REC_Recipe] ([ParentRecipeUUID], [Deleted]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Project] ON [dbo].[REC_Recipe] ([ProjectUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup] ON [dbo].[REC_Recipe] ([RecipeUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_State] ON [dbo].[REC_Recipe] ([State]) ON [PRIMARY]
GO
