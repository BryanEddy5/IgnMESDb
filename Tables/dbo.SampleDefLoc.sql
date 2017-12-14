CREATE TABLE [dbo].[SampleDefLoc]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SampleDefID] [int] NOT NULL,
[LocationID] [int] NOT NULL,
[Enabled] [int] NOT NULL,
[IntervalType] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Interval] [float] NOT NULL,
[Duration] [float] NOT NULL,
[AutoApprove] [int] NOT NULL,
[ComingDueMin] [float] NOT NULL,
[OverdueMin] [float] NOT NULL,
[Tag] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SampleDefLoc] ADD CONSTRAINT [PK__SampleDe__3214EC27BF0E5867] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[SampleDefLoc] ([SampleDefID], [LocationID]) ON [PRIMARY]
GO
