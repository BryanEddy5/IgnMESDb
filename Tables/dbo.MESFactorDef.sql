CREATE TABLE [dbo].[MESFactorDef]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[FactorUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DataType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EquipmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MESFactorDef] ADD CONSTRAINT [PK__MESFacto__3214EC27EFB00F24] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESFactorDef] ([EquipmentUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UUID] ON [dbo].[MESFactorDef] ([FactorUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Primary] ON [dbo].[MESFactorDef] ([ID]) ON [PRIMARY]
GO
