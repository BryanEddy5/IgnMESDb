CREATE TABLE [dbo].[MESTriggerOperRspBeginProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[Mode] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Auto] [int] NULL,
[PrecedingRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrecedingRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ROT_Mode] ON [dbo].[MESTriggerOperRspBeginProperty] ([MESObjectUUID], [Mode], [Auto]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESTriggerOperRspBeginProperty] ON [dbo].[MESTriggerOperRspBeginProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESTriggerOperRspBeginProperty] ON [dbo].[MESTriggerOperRspBeginProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
