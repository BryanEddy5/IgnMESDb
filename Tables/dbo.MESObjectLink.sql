CREATE TABLE [dbo].[MESObjectLink]
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
CREATE NONCLUSTERED INDEX [IX_N_MESObjectLink] ON [dbo].[MESObjectLink] ([MESObjectType], [MESObjectName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ID_MESObjectLink] ON [dbo].[MESObjectLink] ([MESObjectUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESObjectLink] ON [dbo].[MESObjectLink] ([MESObjectUUID], [MESObjectType], [ParentMESObjectUUID], [ParentMESObjectType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_V_MESObjectLink] ON [dbo].[MESObjectLink] ([MESObjectUUID], [Version]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_C_MESObjectLink] ON [dbo].[MESObjectLink] ([ParentMESObjectUUID]) ON [PRIMARY]
GO
