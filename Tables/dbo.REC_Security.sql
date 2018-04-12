CREATE TABLE [dbo].[REC_Security]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SecurityUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProdItemValueUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Role] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Allow] [int] NULL,
[MinValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaxValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[REC_Security] ADD CONSTRAINT [PK__REC_Secu__3214EC27817D29B5] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ProdItemValue] ON [dbo].[REC_Security] ([ProdItemValueUUID], [Role]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Lookup] ON [dbo].[REC_Security] ([SecurityUUID]) ON [PRIMARY]
GO
