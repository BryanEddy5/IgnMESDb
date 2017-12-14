CREATE TABLE [dbo].[MESCountDef]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[UUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EquipUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enabled] [int] NOT NULL,
[Rollover] [int] NOT NULL,
[StoreRate] [int] NOT NULL,
[TagPath] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Kind] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Mode] [varchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Version] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL,
[Group] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MESCountDef] ADD CONSTRAINT [PK__MESCount__3214EC278BA2B3D8] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESCountDef] ([EquipUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Primary] ON [dbo].[MESCountDef] ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UUID] ON [dbo].[MESCountDef] ([UUID]) ON [PRIMARY]
GO
