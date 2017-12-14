CREATE TABLE [dbo].[REC_Variance]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[VarianceUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TrackingUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RecipeValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RecipeValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ToValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_Variance] ADD CONSTRAINT [PK__REC_Vari__3214EC2797A23BEA] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[REC_Variance] ([RecipeValueUUID], [FromValue], [TimeStamp] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Lookup1] ON [dbo].[REC_Variance] ([TimeStamp] DESC, [FromValue]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup] ON [dbo].[REC_Variance] ([VarianceUUID]) ON [PRIMARY]
GO
