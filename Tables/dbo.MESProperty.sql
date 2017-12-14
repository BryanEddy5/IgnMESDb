CREATE TABLE [dbo].[MESProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ParentType] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentMESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Value] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ValueUnits] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ValueDataType] [int] NOT NULL,
[Enable] [int] NOT NULL,
[Required] [int] NOT NULL,
[ProductionVisible] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESProperty] ON [dbo].[MESProperty] ([MESObjectUUID], [ParentType], [ParentMESPropertyUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESProperty] ON [dbo].[MESProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
