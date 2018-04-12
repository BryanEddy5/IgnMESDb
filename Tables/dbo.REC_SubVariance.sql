CREATE TABLE [dbo].[REC_SubVariance]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SubVarianceUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TrackingUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SubProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RecipeValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FromValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ToValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_SubVariance] ADD CONSTRAINT [PK__REC_SubV__3214EC270DB66100] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[REC_SubVariance] ([SubProdItemValueUUID], [FromValue], [TimeStamp] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup] ON [dbo].[REC_SubVariance] ([SubVarianceUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Lookup1] ON [dbo].[REC_SubVariance] ([TimeStamp] DESC, [FromValue]) ON [PRIMARY]
GO
