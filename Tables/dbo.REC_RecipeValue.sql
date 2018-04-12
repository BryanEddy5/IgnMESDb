CREATE TABLE [dbo].[REC_RecipeValue]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[RecipeValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_REC_RecipeValue_RecipeValueUUID] DEFAULT (newid()),
[RecipeUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProdItemUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL CONSTRAINT [DF_REC_RecipeValue_TimeStamp] DEFAULT (getdate()),
[DateRevised] [datetime] NULL CONSTRAINT [DF_REC_RecipeValue_DateRevised] DEFAULT (getdate()),
[RevisedBy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
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
-- =============================================
CREATE TRIGGER [dbo].[trg_RecipeValue] 
   ON  [dbo].[REC_RecipeValue] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	IF UPDATE(value)
		BEGIN
			UPDATE K
			SET k.Revisedby = SUSER_SNAME(), k.DateRevised = GETDATE()
			FROM DBO.REC_RecipeValue k INNER JOIN inserted i ON k.ID = i.id
		END 

    -- Insert statements for trigger here

END
GO
ALTER TABLE [dbo].[REC_RecipeValue] ADD CONSTRAINT [PK__REC_Reci__3214EC27156FC9E4] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [REC_RecipeValue_XII] ON [dbo].[REC_RecipeValue] ([ProdItemUUID], [ProdItemValueUUID]) INCLUDE ([RecipeUUID], [Value]) ON [PRIMARY]
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
