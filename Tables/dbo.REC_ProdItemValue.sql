CREATE TABLE [dbo].[REC_ProdItemValue]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[ProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_REC_ProdItemValue_ProdItemValueUUID] DEFAULT (newid()),
[ProdItemUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Category] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF_REC_ProdItemValue_Category] DEFAULT ((1)),
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Format] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Units] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MinValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaxValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataType] [int] NULL,
[EditNo] [int] NOT NULL CONSTRAINT [DF_REC_ProdItemValue_EditNo] DEFAULT ((0)),
[Deleted] [int] NOT NULL CONSTRAINT [DF_REC_ProdItemValue_Deleted] DEFAULT ((0)),
[SortOrder] [int] NULL,
[TimeStamp] [datetime] NOT NULL CONSTRAINT [DF_REC_ProdItemValue_TimeStamp] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_ProdItemValue] ADD CONSTRAINT [PK__REC_Prod__3214EC27258F3BC6] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup4] ON [dbo].[REC_ProdItemValue] ([Deleted], [ProdItemValueUUID], [ProdItemUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_NameCat] ON [dbo].[REC_ProdItemValue] ([Name], [Category]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup5] ON [dbo].[REC_ProdItemValue] ([Name], [ProdItemValueUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProdItem] ON [dbo].[REC_ProdItemValue] ([ProdItemUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup1] ON [dbo].[REC_ProdItemValue] ([ProdItemValueUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup2] ON [dbo].[REC_ProdItemValue] ([ProdItemValueUUID], [Deleted], [ProdItemUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup6] ON [dbo].[REC_ProdItemValue] ([ProdItemValueUUID], [Name], [Deleted]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup7] ON [dbo].[REC_ProdItemValue] ([ProdItemValueUUID], [Name], [Deleted], [SortOrder]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup3] ON [dbo].[REC_ProdItemValue] ([ProdItemValueUUID], [ProdItemUUID]) ON [PRIMARY]
GO
