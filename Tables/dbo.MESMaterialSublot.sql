CREATE TABLE [dbo].[MESMaterialSublot]
(
[MESMaterialSublotUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LotAssemblyType] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SublotStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESMaterialSublotUUID] ON [dbo].[MESMaterialSublot] ([MESMaterialSublotUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESMaterialSublot] ([Name]) ON [PRIMARY]
GO
