CREATE TABLE [dbo].[MESPersonnelProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[PersonnelOptional] [int] NULL,
[PersonnelProductionSelectable] [int] NULL,
[PersonnelRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonnelRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonnelUse] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonnelQuanity] [float] NULL,
[PersonnelUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESPersonnelProperty] ON [dbo].[MESPersonnelProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESPersonnelProperty] ON [dbo].[MESPersonnelProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PersonnelRef] ON [dbo].[MESPersonnelProperty] ([PersonnelRefUUID], [Enable]) ON [PRIMARY]
GO
