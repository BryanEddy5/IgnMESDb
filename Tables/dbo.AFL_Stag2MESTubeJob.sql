CREATE TABLE [dbo].[AFL_Stag2MESTubeJob]
(
[Tube_job_Num] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedTime] [datetime] NOT NULL CONSTRAINT [DF_AFL_Stag2MESTubeJob_CreatedTime] DEFAULT (getdate()),
[LastModified] [datetime] NOT NULL CONSTRAINT [DF_AFL_Stag2MESTubeJob_LastModified] DEFAULT (getdate()),
[IsEnabled] [bit] NOT NULL CONSTRAINT [DF_AFL_Stag2MESTubeJob_IsEnabled] DEFAULT ((1)),
[Revision] [int] NOT NULL CONSTRAINT [DF_AFL_Stag2MESTubeJob_Revision] DEFAULT ((1))
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE TRIGGER [dbo].[AFL_Stag2MESTubeJob_updateModified] ON [dbo].[AFL_Stag2MESTubeJob]
AFTER UPDATE
AS
       UPDATE [dbo].[AFL_Stag2MESTubeJob]
       SET [LastModified]= GetDate()
       FROM Inserted i
       WHERE [dbo].[AFL_Stag2MESTubeJob].[Tube_Job_Num] = i.[Tube_Job_Num]



GO
