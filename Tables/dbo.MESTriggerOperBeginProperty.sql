CREATE TABLE [dbo].[MESTriggerOperBeginProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[Mode] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Auto] [int] NULL,
[PrecedingRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrecedingRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Default] [int] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESTriggerOperBeginProperty] ON [dbo].[MESTriggerOperBeginProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESTriggerOperBeginProperty] ON [dbo].[MESTriggerOperBeginProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
