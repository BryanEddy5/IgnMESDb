CREATE TABLE [dbo].[MESPerson]
(
[MESPersonUUID] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Version] [int] NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[PersonIgnitionRef] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PersonUserName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PersonFirstName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonLastName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESPersonUUID] ON [dbo].[MESPerson] ([MESPersonUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESPerson] ([Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FullName] ON [dbo].[MESPerson] ([PersonLastName], [PersonFirstName]) ON [PRIMARY]
GO
