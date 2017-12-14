CREATE TABLE [dbo].[MESResponsePerson]
(
[MESResponsePersonUUID] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Version] [int] NULL,
[VersionRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[PersonUserName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PersonFirstName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonLastName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESResponsePersonUUID] ON [dbo].[MESResponsePerson] ([MESResponsePersonUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESResponsePerson] ([Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FullName] ON [dbo].[MESResponsePerson] ([PersonLastName], [PersonFirstName]) ON [PRIMARY]
GO
