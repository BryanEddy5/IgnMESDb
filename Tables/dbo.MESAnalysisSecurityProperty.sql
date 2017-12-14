CREATE TABLE [dbo].[MESAnalysisSecurityProperty]
(
[MESPropertyUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESObjectUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enable] [int] NOT NULL,
[CanExecute] [int] NOT NULL,
[CanModify] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESAnalysisSecurityProperty] ON [dbo].[MESAnalysisSecurityProperty] ([MESObjectUUID], [Name]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_P_MESAnalysisSecurityProperty] ON [dbo].[MESAnalysisSecurityProperty] ([MESPropertyUUID]) ON [PRIMARY]
GO
