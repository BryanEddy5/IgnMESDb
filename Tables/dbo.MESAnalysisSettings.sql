CREATE TABLE [dbo].[MESAnalysisSettings]
(
[MESAnalysisSettingsUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OwnerUserName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsPublic] [int] NOT NULL,
[DataPoints] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Filter] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroupBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrderBy] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IncludeDrillDownOptions] [int] NOT NULL,
[StartDateParameterName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EndDateParameterName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SettingValues] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESAnalysisSettingsUUID] ON [dbo].[MESAnalysisSettings] ([MESAnalysisSettingsUUID]) ON [PRIMARY]
GO
