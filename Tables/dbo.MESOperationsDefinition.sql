CREATE TABLE [dbo].[MESOperationsDefinition]
(
[MESOperationsDefinitionUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Version] [int] NULL,
[ProductionVisible] [int] NOT NULL,
[EnableUpdateEvent] [int] NOT NULL,
[UpdateEventInterval] [int] NOT NULL,
[TrackProgressBy] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsExecuteReady] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESOperationsDefinitionUUID] ON [dbo].[MESOperationsDefinition] ([MESOperationsDefinitionUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[MESOperationsDefinition] ([Name]) ON [PRIMARY]
GO
