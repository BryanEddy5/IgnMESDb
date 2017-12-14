CREATE TABLE [dbo].[MESResponsePersonnelProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[PersonRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonQuantity] [float] NULL,
[PersonUnits] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonUse] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonBeginDateTime] [datetime] NULL,
[PersonEndDateTime] [datetime] NULL,
[PersonSegmentRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonPropertyStatus] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PersonOptional] [int] NULL,
[PersonProductionSelectable] [int] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESResponsePersonnelProperty] ON [dbo].[MESResponsePersonnelProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESResponsePersonnelProperty] ON [dbo].[MESResponsePersonnelProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PersonRef] ON [dbo].[MESResponsePersonnelProperty] ([PersonRefUUID], [Enable]) ON [PRIMARY]
GO
