CREATE TABLE [dbo].[MESResponseObjectLink]
(
[MESObjectType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Version] [int] NULL,
[VersionRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentMESObjectType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentMESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_N_MESResponseObjectLink] ON [dbo].[MESResponseObjectLink] ([MESObjectType], [MESObjectName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ID_MESResponseObjectLink] ON [dbo].[MESResponseObjectLink] ([MESObjectUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESResponseObjectLink] ON [dbo].[MESResponseObjectLink] ([MESObjectUUID], [MESObjectType], [ParentMESObjectUUID], [ParentMESObjectType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_V_MESResponseObjectLink] ON [dbo].[MESResponseObjectLink] ([MESObjectUUID], [Version]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_C_MESResponseObjectLink] ON [dbo].[MESResponseObjectLink] ([ParentMESObjectUUID]) ON [PRIMARY]
GO
