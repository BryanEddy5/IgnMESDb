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
[TimeStamp] [datetime] NOT NULL CONSTRAINT [DF_REC_Recipe_TimeStamp] DEFAULT (getdate()),
[DateRevised] [datetime] NULL CONSTRAINT [DF_REC_Recipe_DateRevised] DEFAULT (getdate()),
[RevisedBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF_REC_Recipe_RevisedBy] DEFAULT (suser_sname())
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Bryan Eddy
-- Create date: 12/15/17
-- Description:	Update the revision date and revised by fileds
-- Version:		1
-- Update:		n/a
-- =============================================
CREATE TRIGGER [dbo].[trg_Recipe]
   ON  [dbo].[REC_Recipe] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF UPDATE(name) OR UPDATE(State) OR UPDATE([Group]) OR UPDATE(Deleted)
		BEGIN
			UPDATE K
			SET k.Revisedby = SUSER_SNAME(), k.DateRevised = GETDATE()
			FROM DBO.REC_Recipe k INNER JOIN inserted i ON k.ID = i.id
		END 

    -- Insert statements for trigger here

END
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
