CREATE TABLE [dbo].[MESOperationsSchedule]
(
[MESOperationsScheduleUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SchedulePublishDate] [datetime] NULL,
[ScheduleType] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScheduleCategory] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ScheduleProductionCount] [float] NULL,
[ScheduleDurationSec] [int] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESOperationsScheduleUUID] ON [dbo].[MESOperationsSchedule] ([MESOperationsScheduleUUID]) ON [PRIMARY]
GO
