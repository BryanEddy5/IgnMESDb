CREATE TABLE [dbo].[REC_SubProdItemValue]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SubProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProdItemUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SubProductCode] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Value] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Deleted] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_SubProdItemValue] ADD CONSTRAINT [PK__REC_SubP__3214EC27F1778B5C] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProdItem] ON [dbo].[REC_SubProdItemValue] ([ProdItemUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProdItemValue] ON [dbo].[REC_SubProdItemValue] ([ProdItemValueUUID], [SubProductCode]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup] ON [dbo].[REC_SubProdItemValue] ([SubProdItemValueUUID]) ON [PRIMARY]
GO
